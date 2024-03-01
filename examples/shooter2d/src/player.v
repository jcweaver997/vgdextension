module main

import vgdextension as gd

pub struct Player {
	// Base class is CharacterBody2D
	gd.CharacterBody2D
mut:
	// Godot currently uses f64/i64 for numbers
	speed           f64 = 5
	bullet          ?gd.PackedScene
	bullet_distance f64
	elapsed_time    f64
}

fn (mut p Player) init() {
	// This code will run in the editor by default, check if in the editor and disable processing
	if gd.Engine.get_singleton().is_editor_hint() {
		p.set_process_mode(.process_mode_disabled)
	}
}

// virtual functions all start with virt_
fn (mut p Player) virt_ready() {
	// load the bullet prefab
	p.bullet = gd.ResourceLoader.get_singleton().load('res://prefabs/bullet.tscn', 'PackedScene',
		.cache_mode_reuse).cast_to[gd.PackedScene]()
}

fn (mut p Player) virt_input(event gd.InputEvent) {
	// actions are defined in the godot project settings in the Input Map tab
	if event.is_action_pressed('shoot', false, true) {
		p.shoot()
	}
}

fn (mut p Player) virt_physics_process(delta f64) {
	p.elapsed_time += delta

	// Input can also be read in process functions
	input := gd.Input.get_singleton()
	mut x := input.get_action_strength('ui_right', true)
	x -= input.get_action_strength('ui_left', true)

	mut y := input.get_action_strength('ui_down', true)
	y -= input.get_action_strength('ui_up', true)

	mut velocity := gd.Vector2{
		x: f32(x)
		y: f32(y)
	}

	// Set velocity and move
	velocity = velocity.normalized().mul_f64(p.speed)
	p.set_velocity(velocity)
	p.move_and_slide()

	// Update the score based on survival time
	if label := p.get_node_v('/root/root/ui/score').cast_to[gd.Label]() {
		label.set_text('Score ${i64(p.elapsed_time * 100)}')
	}
}

fn (mut p Player) shoot() {
	direction := (p.get_global_mouse_position() - p.get_global_position()).normalized()
	if bullet := p.bullet {
		// Instantiate a bullet
		node := bullet.instantiate(.gen_edit_state_disabled)
		// After instantiating, you need to add it to the scene tree
		p.get_tree().get_root().add_child(node, false, .internal_mode_disabled)

		// Give the bullet its starting position and rotation
		if mut b := node.cast_to[gd.Node2D]() {
			b.set_rotation(direction.angle())
			b.set_global_position(p.get_global_position() + direction.mul_f64(p.bullet_distance))
		}
	}
}

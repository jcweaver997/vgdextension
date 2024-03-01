module main

import vgdextension as gd
import log

pub struct Enemy {
	// Base class is CharacterBody2D
	gd.CharacterBody2D
mut:
	// Keep a reference to player
	player ?&Player
	// Godot currently uses f64/i64 for numbers
	speed  f64 = 5
}

fn (mut c Enemy) init() {
	// This code will run in the editor by default, check if in the editor and disable processing
	if gd.Engine.get_singleton().is_editor_hint() {
		c.set_process_mode(.process_mode_disabled)
	}
}

// virtual functions all start with virt_
fn (mut c Enemy) virt_ready() {
	if !gd.Engine.get_singleton().is_editor_hint() {
		// get_node_v can get nodes using vstrings, otherwise you can use NodePath
		// cast_to_v[T](name) will cast to a V type, cast_to[T]() will cast to a godot type
		c.player = c.get_node_v('/root/root/Player/Player').cast_to_v[Player]('Player')
	}
}

fn (mut c Enemy) virt_physics_process(delta f64) {
	// Check if we found player during virt_ready
	if player := c.player {
		// Get direction to the player, normalize and multiply by our speed
		direction := (player.get_global_position() - c.get_global_position()).normalized()
		c.set_velocity(direction.mul_f64(c.speed))

		// Move and check if we hit the player
		collision := c.move_and_collide(direction, false, 0.08, false)
		if collision.ptr != 0 {
			if p := collision.get_collider().cast_to_v[Player]('Player') {
				log.info('GAME OVER')
				// Game over just displays the game over UI and pauses the game
				if game_over := c.get_node_v('/root/root/GameOver').cast_to[gd.CanvasLayer]() {
					game_over.set_visible(true)
				}
				c.get_tree().set_pause(true)
			}
		}
	}
}

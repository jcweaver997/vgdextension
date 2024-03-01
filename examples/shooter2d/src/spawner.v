module main

import vgdextension as gd
import rand
import math

pub struct Spawner {
	// Base class is Node
	gd.Node
mut:
	// Godot currently uses f64/i64 for numbers
	rate       f64 = 1
	spawn_area gd.Rect2
	enemy      ?gd.PackedScene
	timer      f64
	total_time f64
}

fn (mut c Spawner) init() {
	// This code will run in the editor by default, check if in the editor and disable processing
	if gd.Engine.get_singleton().is_editor_hint() {
		c.set_process_mode(.process_mode_disabled)
	}
}

// virtual functions all start with virt_
fn (mut c Spawner) virt_ready() {
	if !gd.Engine.get_singleton().is_editor_hint() {
		// Load the enemy prefab we are going to spawn
		c.enemy = gd.ResourceLoader.get_singleton().load('res://prefabs/enemy.tscn', 'PackedScene',
			.cache_mode_reuse).cast_to[gd.PackedScene]()
	}
}

fn (mut c Spawner) virt_process(delta f64) {
	c.timer += delta
	c.total_time += delta

	// spawn rate timer
	if c.timer > c.rate / math.pow(c.total_time, .5) {
		c.spawn_enemy()
		c.timer = 0
	}
}

fn (mut c Spawner) spawn_enemy() {
	if enemy := c.enemy {
		// Instantiate the enemy
		node := enemy.instantiate(.gen_edit_state_disabled)
		// Nodes need to be added to the scene tree
		c.get_tree().get_root().add_child(node, false, .internal_mode_disabled)

		// Set the position of the enemy
		if mut n := node.cast_to[gd.Node2D]() {
			mut position := gd.Vector2{}

			// get the players position
			if player := c.get_node_v('/root/root/Player/Player').cast_to_v[Player]('Player') {
				player_pos := player.get_global_position()

				position = gd.Vector2{
					x: c.spawn_area.position.x + rand.f32() * c.spawn_area.size.x
					y: c.spawn_area.position.y + rand.f32() * c.spawn_area.size.y
				}
				// if the randomly generated position is too close to the player, randomize again
				for player_pos.distance_to(position) < 100 {
					position = gd.Vector2{
						x: c.spawn_area.position.x + rand.f32() * c.spawn_area.size.x
						y: c.spawn_area.position.y + rand.f32() * c.spawn_area.size.y
					}
				}
				
				// set the enemy position
				n.set_global_position(position)
			}
		}
	}
}

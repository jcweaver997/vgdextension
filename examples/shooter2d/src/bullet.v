module main

import vgdextension as gd

pub struct Bullet {
	// Base class is Area2D
	gd.Area2D
mut:
	// Godot currently uses f64/i64 for numbers
	speed    f64 = 5
	duration f64 = 5
	elapsed  f64
}

fn (mut c Bullet) init() {
	// This code will run in the editor by default, check if in the editor and disable processing
	if gd.Engine.get_singleton().is_editor_hint() {
		c.set_process_mode(.process_mode_disabled)
	}
}

// virtual functions all start with virt_
fn (mut c Bullet) virt_ready() {
	if !gd.Engine.get_singleton().is_editor_hint() {
		// Connect to the 'body_entered' signal
		c.connect('body_entered', gd.Callable.new(&gd.Object(c), 'signal_body_entered'),
			0)
	}
}

fn (mut c Bullet) virt_physics_process(delta f64) {
	velocity := gd.Vector2.from_angle(c.get_rotation()).mul_f64(delta * c.speed)
	c.set_position(c.get_position() + velocity)
	c.elapsed += delta
	if c.elapsed > c.duration {
		// Get rid of bullet after a duration
		c.get_parent().queue_free()
	}
}

// signals currently need to be exlicitly named `signal_<signalname>`
// where <signalname> is the name of the signal you are connecting to
fn (mut c Bullet) signal_body_entered(body gd.Node2D) {
	// Check if the body was an enemy and delete both the enemy and the bullet
	if enemy := body.cast_to_v[Enemy]('Enemy') {
		enemy.get_parent().queue_free()
		c.get_parent().queue_free()
	}
}

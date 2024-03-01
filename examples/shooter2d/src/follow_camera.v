module main

import vgdextension as gd
import log

pub struct FollowCamera {
	// Base class is Camera2D
	gd.Camera2D
	// You can use gd.NodePath to get references to other objects using the inspector in godot
	follow_target_path gd.NodePath
mut:
	follow_target ?gd.Node2D
	num           int = 6
}

fn (mut c FollowCamera) init() {
	// This code will run in the editor by default, check if in the editor and disable processing
	if gd.Engine.get_singleton().is_editor_hint() {
		c.set_process_mode(.process_mode_disabled)
	}
}

// virtual functions all start with virt_
fn (mut c FollowCamera) virt_ready() {
	if !gd.Engine.get_singleton().is_editor_hint() {
		// Get the node at the NodePath supplied in the godot inspector
		c.follow_target = c.get_node(c.follow_target_path).cast_to[gd.Node2D]()
		if _ := c.follow_target {
			log.info('${@FILE_LINE} found follow target')
		} else {
			log.error('${@FILE_LINE} failed to get follow target')
		}
	}
}

fn (mut c FollowCamera) virt_process(delta f64) {
	if target := c.follow_target {
		// Set our position to the targets position
		c.set_global_position(target.get_global_position())
	}
}
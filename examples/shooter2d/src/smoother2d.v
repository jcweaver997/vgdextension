module main

import vgdextension as gd

// Physics runs as 60 fps by default in godot 
// It looks kinda weird on higher refresh rate monitors when an object moves at 60 fps but everything else displays at a higher fps
// This allows the sprite to move on every draw frame, instead of every physics frame making it look smoother
// The sprite will slightly lag behind the hit box since we use interpolation. You could calculate velocity and use extrapolation
pub struct Smoother2D {
	// Base class is Node
	gd.Node
	// You can use gd.NodePath to get references to other objects using the inspector in godot
	follow_target_path gd.NodePath
	move_target_path   gd.NodePath
mut:
	follow_target ?gd.Node2D
	move_target   ?gd.Node2D
}

fn (mut c Smoother2D) init() {
	// This code will run in the editor by default, check if in the editor and disable processing
	if gd.Engine.get_singleton().is_editor_hint() {
		c.set_process_mode(.process_mode_disabled)
	}
}

// virtual functions all start with virt_
fn (mut c Smoother2D) virt_ready() {
	if !gd.Engine.get_singleton().is_editor_hint() {
		// Get the nodes at the NodePaths supplied in the godot inspector
		c.follow_target = c.get_node(c.follow_target_path).cast_to[gd.Node2D]()
		c.move_target = c.get_node(c.move_target_path).cast_to[gd.Node2D]()
	}
}

fn (mut c Smoother2D) virt_process(delta f64) {
	if target := c.follow_target {
		if mut move := c.move_target {
			target_pos := target.get_global_position()
			move_pos := move.get_global_position()
			// lerp to target_pos, delta*60 should work well for 60fps physics
			lerp_pos := move_pos.lerp(target_pos, delta * 60)
			move.set_global_position(lerp_pos)
		}
	}
}

module vgdextension

pub enum AnimationNodeStateMachineStateMachineType {
    state_machine_type_root = 0
    state_machine_type_nested = 1
    state_machine_type_grouped = 2
}

pub struct AnimationNodeStateMachine {
    AnimationRootNode
}

pub fn (mut r AnimationNodeStateMachine) add_node(name StringName, node AnimationNode, position Vector2) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("add_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2055804584)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = node.ptr
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachine) replace_node(name StringName, node AnimationNode) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("replace_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2559412862)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) get_node(name StringName) AnimationNode {
    mut object_out := AnimationNode{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 625644256)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) remove_node(name StringName) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("remove_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachine) rename_node(name StringName, new_name StringName) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("rename_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&new_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) has_node(name StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("has_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachine) get_node_name(node AnimationNode) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 739213945)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) set_node_position(name StringName, position Vector2) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999414630)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) get_node_position(name StringName) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachine) has_transition(from StringName, to StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("has_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) add_transition(from StringName, to StringName, transition AnimationNodeStateMachineTransition) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("add_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 795486887)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = transition.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) get_transition(idx i32) AnimationNodeStateMachineTransition {
    mut object_out := AnimationNodeStateMachineTransition{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4192381260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachine) get_transition_from(idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_transition_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachine) get_transition_to(idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_transition_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachine) get_transition_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_transition_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) remove_transition_by_index(idx i32) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("remove_transition_by_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachine) remove_transition(from StringName, to StringName) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("remove_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachine) set_graph_offset(offset Vector2) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("set_graph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) get_graph_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_graph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) set_state_machine_type(state_machine_type AnimationNodeStateMachineStateMachineType) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("set_state_machine_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584759088)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&state_machine_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) get_state_machine_type() AnimationNodeStateMachineStateMachineType {
    mut object_out := AnimationNodeStateMachineStateMachineType.state_machine_type_root
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("get_state_machine_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1140726469)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) set_allow_transition_to_self(enable bool) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_transition_to_self")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) is_allow_transition_to_self() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("is_allow_transition_to_self")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachine) set_reset_ends(enable bool) {
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("set_reset_ends")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachine) are_ends_reset() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    defer { classname.deinit() }
    fnname := StringName.new("are_ends_reset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

pub enum AnimationNodeStateMachineStateMachineType as i64 {
    state_machine_type_root = 0
    state_machine_type_nested = 1
    state_machine_type_grouped = 2
}

@[noinit]
pub struct AnimationNodeStateMachine {
    AnimationRootNode
}

pub fn (r &AnimationNodeStateMachine) add_node(name string, node AnimationNode, position Vector2) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("add_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1980270704)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&node.ptr)
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) replace_node(name string, node AnimationNode) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("replace_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2559412862)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) get_node(name string) AnimationNode {
    mut object_out := AnimationNode{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 625644256)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) remove_node(name string) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("remove_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) rename_node(name string, new_name string) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("rename_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(new_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) has_node(name string) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("has_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) get_node_name(node AnimationNode) string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_node_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 739213945)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeStateMachine) set_node_position(name string, position Vector2) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("set_node_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999414630)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) get_node_position(name string) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_node_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) has_transition(from string, to string) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("has_transition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) add_transition(from string, to string, transition AnimationNodeStateMachineTransition) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("add_transition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 795486887)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = voidptr(&transition.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) get_transition(idx i32) AnimationNodeStateMachineTransition {
    mut object_out := AnimationNodeStateMachineTransition{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_transition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4192381260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) get_transition_from(idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_transition_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeStateMachine) get_transition_to(idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_transition_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeStateMachine) get_transition_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_transition_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) remove_transition_by_index(idx i32) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("remove_transition_by_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) remove_transition(from string, to string) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("remove_transition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) set_graph_offset(offset Vector2) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("set_graph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) get_graph_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_graph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) set_state_machine_type(state_machine_type AnimationNodeStateMachineStateMachineType) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("set_state_machine_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584759088)
    mut args := unsafe { [1]voidptr{} }
    i64_state_machine_type := i64(state_machine_type)
    args[0] = unsafe{voidptr(&i64_state_machine_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) get_state_machine_type() AnimationNodeStateMachineStateMachineType {
    mut object_out := i64(AnimationNodeStateMachineStateMachineType.state_machine_type_root)
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("get_state_machine_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1140726469)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationNodeStateMachineStateMachineType(object_out)}
}
pub fn (r &AnimationNodeStateMachine) set_allow_transition_to_self(enable bool) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("set_allow_transition_to_self")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) is_allow_transition_to_self() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("is_allow_transition_to_self")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachine) set_reset_ends(enable bool) {
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("set_reset_ends")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachine) are_ends_reset() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachine")
    fnname := StringName.new("are_ends_reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

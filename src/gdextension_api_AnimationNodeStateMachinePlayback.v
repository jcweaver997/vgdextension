module vgdextension

pub struct AnimationNodeStateMachinePlayback {
    Resource
}

pub fn (mut r AnimationNodeStateMachinePlayback) travel(to_node StringName, reset_on_teleport bool) {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("travel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683006648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&to_node)}
    args[1] = unsafe{voidptr(&reset_on_teleport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachinePlayback) start(node StringName, reset bool) {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683006648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    args[1] = unsafe{voidptr(&reset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachinePlayback) next() {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNodeStateMachinePlayback) stop() {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeStateMachinePlayback) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_current_node() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_current_play_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_play_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_current_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_fading_from_node() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_fading_from_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_travel_path() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_travel_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

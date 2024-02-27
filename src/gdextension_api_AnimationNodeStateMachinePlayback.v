module vgdextension

@[noinit]
pub struct AnimationNodeStateMachinePlayback {
    Resource
}

pub fn (mut r AnimationNodeStateMachinePlayback) travel(to_node string, reset_on_teleport bool) {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("travel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3823612587)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(to_node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&reset_on_teleport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeStateMachinePlayback) start(node string, reset bool) {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3823612587)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&reset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeStateMachinePlayback) next() {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("next")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeStateMachinePlayback) stop() {
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachinePlayback) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_current_node() string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("get_current_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeStateMachinePlayback) get_current_play_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("get_current_play_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_current_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("get_current_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachinePlayback) get_fading_from_node() string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("get_fading_from_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeStateMachinePlayback) get_travel_path() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationNodeStateMachinePlayback")
    fnname := StringName.new("get_travel_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

@[noinit]
pub struct AnimationNodeTransition {
    AnimationNodeSync
}

pub fn (r &AnimationNodeTransition) set_input_count(input_count i32) {
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("set_input_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeTransition) set_input_as_auto_advance(input i32, enable bool) {
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("set_input_as_auto_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeTransition) is_input_set_as_auto_advance(input i32) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("is_input_set_as_auto_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeTransition) set_input_reset(input i32, enable bool) {
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("set_input_reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeTransition) is_input_reset(input i32) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("is_input_reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeTransition) set_xfade_time(time f64) {
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("set_xfade_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeTransition) get_xfade_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("get_xfade_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeTransition) set_xfade_curve(curve Curve) {
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("set_xfade_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeTransition) get_xfade_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("get_xfade_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeTransition) set_allow_transition_to_self(enable bool) {
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("set_allow_transition_to_self")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeTransition) is_allow_transition_to_self() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeTransition")
    fnname := StringName.new("is_allow_transition_to_self")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

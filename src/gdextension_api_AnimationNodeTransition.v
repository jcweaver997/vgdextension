module vgdextension

pub type AnimationNodeTransition = voidptr

pub fn (mut r AnimationNodeTransition) set_input_count(input_count i32) {
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNodeTransition) set_input_as_auto_advance(input i32, enable bool) {
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_as_auto_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeTransition) is_input_set_as_auto_advance(input i32) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("is_input_set_as_auto_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeTransition) set_input_reset(input i32, enable bool) {
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_reset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeTransition) is_input_reset(input i32) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("is_input_reset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeTransition) set_xfade_time(time f32) {
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_xfade_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeTransition) get_xfade_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_xfade_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeTransition) set_xfade_curve(curve Curve) {
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_xfade_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeTransition) get_xfade_curve() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_xfade_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeTransition) set_allow_transition_to_self(enable bool) {
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_transition_to_self")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeTransition) is_allow_transition_to_self() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeTransition")
    defer { classname.deinit() }
    fnname := StringName.new("is_allow_transition_to_self")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

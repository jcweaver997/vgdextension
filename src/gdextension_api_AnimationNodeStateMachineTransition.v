module vgdextension

pub enum AnimationNodeStateMachineTransitionSwitchMode {
    switch_mode_immediate = 0
    switch_mode_sync = 1
    switch_mode_at_end = 2
}

pub enum AnimationNodeStateMachineTransitionAdvanceMode {
    advance_mode_disabled = 0
    advance_mode_enabled = 1
    advance_mode_auto = 2
}

@[noinit]
pub struct AnimationNodeStateMachineTransition {
    Resource
}

pub fn (mut r AnimationNodeStateMachineTransition) set_switch_mode(mode AnimationNodeStateMachineTransitionSwitchMode) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_switch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074906633)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_switch_mode() AnimationNodeStateMachineTransitionSwitchMode {
    mut object_out := AnimationNodeStateMachineTransitionSwitchMode.switch_mode_immediate
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_switch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138562085)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_advance_mode(mode AnimationNodeStateMachineTransitionAdvanceMode) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_advance_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1210869868)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_advance_mode() AnimationNodeStateMachineTransitionAdvanceMode {
    mut object_out := AnimationNodeStateMachineTransitionAdvanceMode.advance_mode_disabled
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_advance_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 61101689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_advance_condition(name StringName) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_advance_condition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_advance_condition() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_advance_condition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_xfade_time(secs f64) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_xfade_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_xfade_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_xfade_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_xfade_curve(curve Curve) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_xfade_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_xfade_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_xfade_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_reset(reset bool) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_reset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&reset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) is_reset() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("is_reset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_priority(priority i32) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeStateMachineTransition) set_advance_expression(text String) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("set_advance_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeStateMachineTransition) get_advance_expression() String {
    mut object_out := String{}
    classname := StringName.new("AnimationNodeStateMachineTransition")
    defer { classname.deinit() }
    fnname := StringName.new("get_advance_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

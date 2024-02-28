module vgdextension

pub enum AnimationNodeStateMachineTransitionSwitchMode as i64 {
    switch_mode_immediate = 0
    switch_mode_sync = 1
    switch_mode_at_end = 2
}

pub enum AnimationNodeStateMachineTransitionAdvanceMode as i64 {
    advance_mode_disabled = 0
    advance_mode_enabled = 1
    advance_mode_auto = 2
}

@[noinit]
pub struct AnimationNodeStateMachineTransition {
    Resource
}

pub fn (r &AnimationNodeStateMachineTransition) set_switch_mode(mode AnimationNodeStateMachineTransitionSwitchMode) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_switch_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074906633)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_switch_mode() AnimationNodeStateMachineTransitionSwitchMode {
    mut object_out := i64(AnimationNodeStateMachineTransitionSwitchMode.switch_mode_immediate)
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_switch_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138562085)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationNodeStateMachineTransitionSwitchMode(object_out)}
}
pub fn (r &AnimationNodeStateMachineTransition) set_advance_mode(mode AnimationNodeStateMachineTransitionAdvanceMode) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_advance_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1210869868)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_advance_mode() AnimationNodeStateMachineTransitionAdvanceMode {
    mut object_out := i64(AnimationNodeStateMachineTransitionAdvanceMode.advance_mode_disabled)
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_advance_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 61101689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationNodeStateMachineTransitionAdvanceMode(object_out)}
}
pub fn (r &AnimationNodeStateMachineTransition) set_advance_condition(name string) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_advance_condition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_advance_condition() string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_advance_condition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeStateMachineTransition) set_xfade_time(secs f64) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_xfade_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_xfade_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_xfade_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachineTransition) set_xfade_curve(curve Curve) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_xfade_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_xfade_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_xfade_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachineTransition) set_reset(reset bool) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&reset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) is_reset() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("is_reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachineTransition) set_priority(priority i32) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeStateMachineTransition) set_advance_expression(text string) {
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("set_advance_expression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeStateMachineTransition) get_advance_expression() string {
    mut object_out := String{}
    classname := StringName.new("AnimationNodeStateMachineTransition")
    fnname := StringName.new("get_advance_expression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}

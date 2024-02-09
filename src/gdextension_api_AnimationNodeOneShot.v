module vgdextension

pub enum AnimationNodeOneShotOneShotRequest {
    one_shot_request_none = 0
    one_shot_request_fire = 1
    one_shot_request_abort = 2
    one_shot_request_fade_out = 3
}

pub enum AnimationNodeOneShotMixMode {
    mix_mode_blend = 0
    mix_mode_add = 1
}

pub struct AnimationNodeOneShot {
    AnimationNodeSync
}

pub fn (mut r AnimationNodeOneShot) set_fadein_time(time f64) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadein_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadein_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadein_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_fadein_curve(curve Curve) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadein_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadein_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadein_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_fadeout_time(time f64) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadeout_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadeout_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadeout_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_fadeout_curve(curve Curve) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadeout_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadeout_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadeout_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_autorestart(active bool) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_autorestart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) has_autorestart() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("has_autorestart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_autorestart_delay(time f64) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_autorestart_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_autorestart_delay() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_autorestart_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_autorestart_random_delay(time f64) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_autorestart_random_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_autorestart_random_delay() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_autorestart_random_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_mix_mode(mode AnimationNodeOneShotMixMode) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_mix_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1018899799)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_mix_mode() AnimationNodeOneShotMixMode {
    mut object_out := AnimationNodeOneShotMixMode.mix_mode_blend
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3076550526)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

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

pub type AnimationNodeOneShot = voidptr

pub fn (mut r AnimationNodeOneShot) set_fadein_time(time f32) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadein_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadein_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadein_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_fadein_curve(curve Curve) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadein_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadein_curve() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadein_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_fadeout_time(time f32) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadeout_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadeout_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadeout_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_fadeout_curve(curve Curve) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_fadeout_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_fadeout_curve() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_fadeout_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_autorestart(active bool) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_autorestart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) has_autorestart() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("has_autorestart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_autorestart_delay(time f32) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_autorestart_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_autorestart_delay() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_autorestart_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_autorestart_random_delay(time f32) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_autorestart_random_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_autorestart_random_delay() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_autorestart_random_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeOneShot) set_mix_mode(mode AnimationNodeOneShotMixMode) {
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("set_mix_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1018899799)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeOneShot) get_mix_mode() AnimationNodeOneShotMixMode {
    mut object_out := AnimationNodeOneShotMixMode.mix_mode_blend
    classname := StringName.new("AnimationNodeOneShot")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3076550526)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

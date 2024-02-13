module vgdextension

@[noinit]
pub struct AudioEffectChorus {
    AudioEffect
}

pub fn (mut r AudioEffectChorus) set_voice_count(voices i32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_delay_ms(voice_idx i32, delay_ms f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_delay_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    args[1] = unsafe{voidptr(&delay_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_delay_ms(voice_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_delay_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_rate_hz(voice_idx i32, rate_hz f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_rate_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    args[1] = unsafe{voidptr(&rate_hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_rate_hz(voice_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_rate_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_depth_ms(voice_idx i32, depth_ms f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_depth_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    args[1] = unsafe{voidptr(&depth_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_depth_ms(voice_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_depth_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_level_db(voice_idx i32, level_db f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_level_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    args[1] = unsafe{voidptr(&level_db)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_level_db(voice_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_level_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_cutoff_hz(voice_idx i32, cutoff_hz f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_cutoff_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    args[1] = unsafe{voidptr(&cutoff_hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_cutoff_hz(voice_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_cutoff_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_pan(voice_idx i32, pan f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    args[1] = unsafe{voidptr(&pan)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_pan(voice_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_wet(amount f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_wet() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_dry(amount f64) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_dry() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

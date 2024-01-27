module vgdextension

pub type AudioEffectChorus = voidptr

pub fn (mut r AudioEffectChorus) set_voice_count(voices i32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_delay_ms(voice_idx i32, delay_ms f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_delay_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_delay_ms(voice_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_delay_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_rate_hz(voice_idx i32, rate_hz f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_rate_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_rate_hz(voice_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_rate_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_depth_ms(voice_idx i32, depth_ms f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_depth_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_depth_ms(voice_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_depth_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_level_db(voice_idx i32, level_db f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_level_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_level_db(voice_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_level_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_cutoff_hz(voice_idx i32, cutoff_hz f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_cutoff_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_cutoff_hz(voice_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_cutoff_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_voice_pan(voice_idx i32, pan f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_voice_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_voice_pan(voice_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_voice_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voice_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_wet(amount f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_wet() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectChorus) set_dry(amount f32) {
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("set_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectChorus) get_dry() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectChorus")
    defer { classname.deinit() }
    fnname := StringName.new("get_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

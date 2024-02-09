module vgdextension

pub struct AudioEffectCompressor {
    AudioEffect
}

pub fn (mut r AudioEffectCompressor) set_threshold(threshold f64) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_threshold() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_ratio(ratio f64) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_gain(gain f64) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_gain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_gain() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_gain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_attack_us(attack_us f64) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_attack_us")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&attack_us)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_attack_us() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_attack_us")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_release_ms(release_ms f64) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_release_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&release_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_release_ms() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_release_ms")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_mix(mix f64) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_mix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_sidechain(sidechain StringName) {
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sidechain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sidechain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectCompressor) get_sidechain() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AudioEffectCompressor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sidechain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

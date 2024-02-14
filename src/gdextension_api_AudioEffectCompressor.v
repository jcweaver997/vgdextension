module vgdextension

@[noinit]
pub struct AudioEffectCompressor {
    AudioEffect
}

pub fn (mut r AudioEffectCompressor) set_threshold(threshold f64) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_threshold() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_ratio(ratio f64) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_gain(gain f64) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_gain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_gain() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_gain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_attack_us(attack_us f64) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_attack_us")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&attack_us)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_attack_us() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_attack_us")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_release_ms(release_ms f64) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_release_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&release_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_release_ms() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_release_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_mix(mix f64) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_mix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_mix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_mix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectCompressor) set_sidechain(sidechain StringName) {
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("set_sidechain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sidechain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCompressor) get_sidechain() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AudioEffectCompressor")
    fnname := StringName.new("get_sidechain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

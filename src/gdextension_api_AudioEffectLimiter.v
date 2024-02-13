module vgdextension

@[noinit]
pub struct AudioEffectLimiter {
    AudioEffect
}

pub fn (mut r AudioEffectLimiter) set_ceiling_db(ceiling f64) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_ceiling_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ceiling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_ceiling_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_ceiling_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectLimiter) set_threshold_db(threshold f64) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_threshold_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_threshold_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_threshold_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectLimiter) set_soft_clip_db(soft_clip f64) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_soft_clip_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&soft_clip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_soft_clip_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_soft_clip_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectLimiter) set_soft_clip_ratio(soft_clip f64) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_soft_clip_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&soft_clip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_soft_clip_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_soft_clip_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

pub type AudioEffectLimiter = voidptr

pub fn (mut r AudioEffectLimiter) set_ceiling_db(ceiling f32) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_ceiling_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_ceiling_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_ceiling_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectLimiter) set_threshold_db(threshold f32) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_threshold_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_threshold_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_threshold_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectLimiter) set_soft_clip_db(soft_clip f32) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_soft_clip_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_soft_clip_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_soft_clip_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectLimiter) set_soft_clip_ratio(soft_clip f32) {
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("set_soft_clip_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectLimiter) get_soft_clip_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectLimiter")
    defer { classname.deinit() }
    fnname := StringName.new("get_soft_clip_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

pub type AudioEffectStereoEnhance = voidptr

pub fn (mut r AudioEffectStereoEnhance) set_pan_pullout(amount f32) {
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("set_pan_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectStereoEnhance) get_pan_pullout() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("get_pan_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectStereoEnhance) set_time_pullout(amount f32) {
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("set_time_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectStereoEnhance) get_time_pullout() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectStereoEnhance) set_surround(amount f32) {
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("set_surround")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectStereoEnhance) get_surround() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("get_surround")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct AudioEffectStereoEnhance {
    AudioEffect
}

pub fn (mut r AudioEffectStereoEnhance) set_pan_pullout(amount f64) {
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("set_pan_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectStereoEnhance) get_pan_pullout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("get_pan_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectStereoEnhance) set_time_pullout(amount f64) {
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("set_time_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectStereoEnhance) get_time_pullout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_pullout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectStereoEnhance) set_surround(amount f64) {
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("set_surround")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectStereoEnhance) get_surround() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    defer { classname.deinit() }
    fnname := StringName.new("get_surround")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

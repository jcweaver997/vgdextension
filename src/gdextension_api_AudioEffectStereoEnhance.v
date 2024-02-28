module vgdextension

@[noinit]
pub struct AudioEffectStereoEnhance {
    AudioEffect
}

pub fn (r &AudioEffectStereoEnhance) set_pan_pullout(amount f64) {
    classname := StringName.new("AudioEffectStereoEnhance")
    fnname := StringName.new("set_pan_pullout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectStereoEnhance) get_pan_pullout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    fnname := StringName.new("get_pan_pullout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectStereoEnhance) set_time_pullout(amount f64) {
    classname := StringName.new("AudioEffectStereoEnhance")
    fnname := StringName.new("set_time_pullout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectStereoEnhance) get_time_pullout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    fnname := StringName.new("get_time_pullout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectStereoEnhance) set_surround(amount f64) {
    classname := StringName.new("AudioEffectStereoEnhance")
    fnname := StringName.new("set_surround")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectStereoEnhance) get_surround() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectStereoEnhance")
    fnname := StringName.new("get_surround")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

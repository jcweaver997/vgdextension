module vgdextension

@[noinit]
pub struct AudioEffectEQ {
    AudioEffect
}

pub fn (mut r AudioEffectEQ) set_band_gain_db(band_idx i32, volume_db f64) {
    classname := StringName.new("AudioEffectEQ")
    fnname := StringName.new("set_band_gain_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&band_idx)}
    args[1] = unsafe{voidptr(&volume_db)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectEQ) get_band_gain_db(band_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectEQ")
    fnname := StringName.new("get_band_gain_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&band_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectEQ) get_band_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectEQ")
    fnname := StringName.new("get_band_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

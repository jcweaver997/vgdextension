module vgdextension

@[noinit]
pub struct AudioEffectAmplify {
    AudioEffect
}

pub fn (r &AudioEffectAmplify) set_volume_db(volume f64) {
    classname := StringName.new("AudioEffectAmplify")
    fnname := StringName.new("set_volume_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&volume)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectAmplify) get_volume_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectAmplify")
    fnname := StringName.new("get_volume_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

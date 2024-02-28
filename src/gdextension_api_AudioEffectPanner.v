module vgdextension

@[noinit]
pub struct AudioEffectPanner {
    AudioEffect
}

pub fn (r &AudioEffectPanner) set_pan(cpanume f64) {
    classname := StringName.new("AudioEffectPanner")
    fnname := StringName.new("set_pan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cpanume)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectPanner) get_pan() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPanner")
    fnname := StringName.new("get_pan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

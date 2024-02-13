module vgdextension

@[noinit]
pub struct AudioEffectPanner {
    AudioEffect
}

pub fn (mut r AudioEffectPanner) set_pan(cpanume f64) {
    classname := StringName.new("AudioEffectPanner")
    defer { classname.deinit() }
    fnname := StringName.new("set_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cpanume)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectPanner) get_pan() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPanner")
    defer { classname.deinit() }
    fnname := StringName.new("get_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

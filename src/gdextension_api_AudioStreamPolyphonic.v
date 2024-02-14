module vgdextension

@[noinit]
pub struct AudioStreamPolyphonic {
    AudioStream
}

pub fn (mut r AudioStreamPolyphonic) set_polyphony(voices i32) {
    classname := StringName.new("AudioStreamPolyphonic")
    fnname := StringName.new("set_polyphony")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPolyphonic) get_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPolyphonic")
    fnname := StringName.new("get_polyphony")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

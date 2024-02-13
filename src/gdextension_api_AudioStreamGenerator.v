module vgdextension

@[noinit]
pub struct AudioStreamGenerator {
    AudioStream
}

pub fn (mut r AudioStreamGenerator) set_mix_rate(hz f64) {
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamGenerator) get_mix_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamGenerator) set_buffer_length(seconds f64) {
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamGenerator) get_buffer_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

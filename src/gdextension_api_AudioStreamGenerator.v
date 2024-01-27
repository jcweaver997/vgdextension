module vgdextension

pub type AudioStreamGenerator = voidptr

pub fn (mut r AudioStreamGenerator) set_mix_rate(hz f32) {
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamGenerator) get_mix_rate() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamGenerator) set_buffer_length(seconds f32) {
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamGenerator) get_buffer_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

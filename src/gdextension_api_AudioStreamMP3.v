module vgdextension

@[noinit]
pub struct AudioStreamMP3 {
    AudioStream
}

pub fn (r &AudioStreamMP3) set_data(data PackedByteArray) {
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamMP3) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamMP3) set_loop(enable bool) {
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("set_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamMP3) has_loop() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("has_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamMP3) set_loop_offset(seconds f64) {
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("set_loop_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamMP3) get_loop_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("get_loop_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamMP3) set_bpm(bpm f64) {
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("set_bpm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bpm)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamMP3) get_bpm() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("get_bpm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamMP3) set_beat_count(count i32) {
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("set_beat_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamMP3) get_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("get_beat_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamMP3) set_bar_beats(count i32) {
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("set_bar_beats")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamMP3) get_bar_beats() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamMP3")
    fnname := StringName.new("get_bar_beats")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

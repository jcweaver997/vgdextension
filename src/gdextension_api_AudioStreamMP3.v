pub type AudioStreamMP3 = voidptr

pub fn (mut r AudioStreamMP3) set_data(data PackedByteArray) {
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamMP3) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamMP3) set_loop(enable bool) {
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamMP3) has_loop() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("has_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamMP3) set_loop_offset(seconds f32) {
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamMP3) get_loop_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("get_loop_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamMP3) set_bpm(bpm f32) {
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("set_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamMP3) get_bpm() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("get_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamMP3) set_beat_count(count i32) {
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("set_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamMP3) get_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("get_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamMP3) set_bar_beats(count i32) {
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("set_bar_beats")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamMP3) get_bar_beats() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamMP3")
    defer { classname.deinit() }
    fnname := StringName.new("get_bar_beats")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

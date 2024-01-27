pub type AudioStreamOggVorbis = voidptr

pub fn (mut r AudioStreamOggVorbis) set_packet_sequence(packet_sequence OggPacketSequence) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_packet_sequence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 438882457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_packet_sequence() OggPacketSequence {
    mut object_out := OggPacketSequence(unsafe{nil})
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_sequence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801636033)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_loop(enable bool) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) has_loop() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("has_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_loop_offset(seconds f32) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_loop_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_loop_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_bpm(bpm f32) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_bpm() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_beat_count(count i32) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_bar_beats(count i32) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_bar_beats")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_bar_beats() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_bar_beats")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

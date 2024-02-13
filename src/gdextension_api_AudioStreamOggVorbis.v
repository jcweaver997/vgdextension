module vgdextension

@[noinit]
pub struct AudioStreamOggVorbis {
    AudioStream
}

pub fn (mut r AudioStreamOggVorbis) set_packet_sequence(packet_sequence OggPacketSequence) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_packet_sequence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 438882457)
    mut args := unsafe { [1]voidptr{} }
    args[0] = packet_sequence.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_packet_sequence() OggPacketSequence {
    mut object_out := OggPacketSequence{}
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_sequence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801636033)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_loop(enable bool) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) has_loop() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("has_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_loop_offset(seconds f64) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_loop_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_loop_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_bpm(bpm f64) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bpm)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_bpm() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_beat_count(count i32) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamOggVorbis) set_bar_beats(count i32) {
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("set_bar_beats")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamOggVorbis) get_bar_beats() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    defer { classname.deinit() }
    fnname := StringName.new("get_bar_beats")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

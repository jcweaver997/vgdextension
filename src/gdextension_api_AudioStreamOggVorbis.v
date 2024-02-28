module vgdextension

@[noinit]
pub struct AudioStreamOggVorbis {
    AudioStream
}

pub fn AudioStreamOggVorbis.load_from_buffer(buffer PackedByteArray) AudioStreamOggVorbis {
    mut object_out := AudioStreamOggVorbis{}
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("load_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 354904730)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn AudioStreamOggVorbis.load_from_file(path string) AudioStreamOggVorbis {
    mut object_out := AudioStreamOggVorbis{}
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("load_from_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797568536)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamOggVorbis) set_packet_sequence(packet_sequence OggPacketSequence) {
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("set_packet_sequence")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 438882457)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&packet_sequence.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamOggVorbis) get_packet_sequence() OggPacketSequence {
    mut object_out := OggPacketSequence{}
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("get_packet_sequence")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801636033)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamOggVorbis) set_loop(enable bool) {
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("set_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamOggVorbis) has_loop() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("has_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamOggVorbis) set_loop_offset(seconds f64) {
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("set_loop_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamOggVorbis) get_loop_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("get_loop_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamOggVorbis) set_bpm(bpm f64) {
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("set_bpm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bpm)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamOggVorbis) get_bpm() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("get_bpm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamOggVorbis) set_beat_count(count i32) {
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("set_beat_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamOggVorbis) get_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("get_beat_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamOggVorbis) set_bar_beats(count i32) {
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("set_bar_beats")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamOggVorbis) get_bar_beats() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamOggVorbis")
    fnname := StringName.new("get_bar_beats")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

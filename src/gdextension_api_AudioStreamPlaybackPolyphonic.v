module vgdextension

@[noinit]
pub struct AudioStreamPlaybackPolyphonic {
    AudioStreamPlayback
}

pub fn (mut r AudioStreamPlaybackPolyphonic) play_stream(stream AudioStream, from_offset f64, volume_db f64, pitch_scale f64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("play_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3792189967)
    mut args := unsafe { [4]voidptr{} }
    args[0] = stream.ptr
    args[1] = unsafe{voidptr(&from_offset)}
    args[2] = unsafe{voidptr(&volume_db)}
    args[3] = unsafe{voidptr(&pitch_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlaybackPolyphonic) set_stream_volume(stream i64, volume_db f64) {
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_volume")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    args[1] = unsafe{voidptr(&volume_db)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioStreamPlaybackPolyphonic) set_stream_pitch_scale(stream i64, pitch_scale f64) {
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_pitch_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    args[1] = unsafe{voidptr(&pitch_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamPlaybackPolyphonic) is_stream_playing(stream i64) bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("is_stream_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlaybackPolyphonic) stop_stream(stream i64) {
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("stop_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

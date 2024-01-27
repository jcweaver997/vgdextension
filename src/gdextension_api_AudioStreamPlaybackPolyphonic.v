pub type AudioStreamPlaybackPolyphonic = voidptr

pub fn (mut r AudioStreamPlaybackPolyphonic) play_stream(stream AudioStream, from_offset f32, volume_db f32, pitch_scale f32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("play_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3792189967)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    args[1] = unsafe{voidptr(&from_offset)}
    args[2] = unsafe{voidptr(&volume_db)}
    args[3] = unsafe{voidptr(&pitch_scale)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlaybackPolyphonic) set_stream_volume(stream i32, volume_db f32) {
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_volume")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamPlaybackPolyphonic) set_stream_pitch_scale(stream i32, pitch_scale f32) {
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_pitch_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlaybackPolyphonic) is_stream_playing(stream i32) bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("is_stream_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlaybackPolyphonic) stop_stream(stream i32) {
    classname := StringName.new("AudioStreamPlaybackPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("stop_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

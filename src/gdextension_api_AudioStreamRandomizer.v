module vgdextension

pub enum AudioStreamRandomizerPlaybackMode {
    playback_random_no_repeats = 0
    playback_random = 1
    playback_sequential = 2
}

@[noinit]
pub struct AudioStreamRandomizer {
    AudioStream
}

pub fn (mut r AudioStreamRandomizer) add_stream(index i32, stream AudioStream, weight f64) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("add_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3197802065)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = stream.ptr
    args[2] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioStreamRandomizer) move_stream(index_from i32, index_to i32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("move_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index_from)}
    args[1] = unsafe{voidptr(&index_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioStreamRandomizer) remove_stream(index i32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioStreamRandomizer) set_stream(index i32, stream AudioStream) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 111075094)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = stream.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_stream(index i32) AudioStream {
    mut object_out := AudioStream{}
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2739380747)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_stream_probability_weight(index i32, weight f64) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_probability_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_stream_probability_weight(index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_probability_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_streams_count(count i32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_streams_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_streams_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_streams_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_random_pitch(scale f64) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_random_pitch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_random_pitch() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_random_pitch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_random_volume_offset_db(db_offset f64) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_random_volume_offset_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&db_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_random_volume_offset_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_random_volume_offset_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_playback_mode(mode AudioStreamRandomizerPlaybackMode) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_playback_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950967023)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_playback_mode() AudioStreamRandomizerPlaybackMode {
    mut object_out := AudioStreamRandomizerPlaybackMode.playback_random_no_repeats
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_playback_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3943055077)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

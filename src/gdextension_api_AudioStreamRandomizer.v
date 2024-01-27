module vgdextension

pub enum AudioStreamRandomizerPlaybackMode {
    playback_random_no_repeats = 0
    playback_random = 1
    playback_sequential = 2
}

pub type AudioStreamRandomizer = voidptr

pub fn (mut r AudioStreamRandomizer) add_stream(index i32, stream AudioStream, weight f32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("add_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3197802065)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamRandomizer) move_stream(index_from i32, index_to i32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("move_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamRandomizer) remove_stream(index i32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamRandomizer) set_stream(index i32, stream AudioStream) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 111075094)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_stream(index i32) AudioStream {
    mut object_out := AudioStream(unsafe{nil})
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2739380747)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_stream_probability_weight(index i32, weight f32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_probability_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_stream_probability_weight(index i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_probability_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_streams_count(count i32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_streams_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_streams_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_streams_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_random_pitch(scale f32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_random_pitch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_random_pitch() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_random_pitch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_random_volume_offset_db(db_offset f32) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_random_volume_offset_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_random_volume_offset_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_random_volume_offset_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamRandomizer) set_playback_mode(mode AudioStreamRandomizerPlaybackMode) {
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_playback_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950967023)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamRandomizer) get_playback_mode() AudioStreamRandomizerPlaybackMode {
    mut object_out := AudioStreamRandomizerPlaybackMode.playback_random_no_repeats
    classname := StringName.new("AudioStreamRandomizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_playback_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3943055077)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct AudioStreamPlayback {
    RefCounted
}

pub interface IAudioStreamPlaybackStart {
    mut:
    virt_start(from_pos f64)
}

pub fn (mut r AudioStreamPlayback) ustart(from_pos f64) {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from_pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IAudioStreamPlaybackStop {
    mut:
    virt_stop()
}

pub fn (mut r AudioStreamPlayback) ustop() {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IAudioStreamPlaybackIsPlaying {
    mut:
    virt_is_playing() bool
}

pub fn (r &AudioStreamPlayback) uis_playing() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamPlaybackGetLoopCount {
    mut:
    virt_get_loop_count() i32
}

pub fn (r &AudioStreamPlayback) uget_loop_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_loop_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamPlaybackGetPlaybackPosition {
    mut:
    virt_get_playback_position() f64
}

pub fn (r &AudioStreamPlayback) uget_playback_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_playback_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamPlaybackSeek {
    mut:
    virt_seek(position f64)
}

pub fn (mut r AudioStreamPlayback) useek(position f64) {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IAudioStreamPlaybackMix {
    mut:
    virt_mix(buffer &AudioFrame, rate_scale f64, frames i32) i32
}

pub fn (mut r AudioStreamPlayback) umix(buffer &AudioFrame, rate_scale f64, frames i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&rate_scale)}
    args[2] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamPlaybackTagUsedStreams {
    mut:
    virt_tag_used_streams()
}

pub fn (mut r AudioStreamPlayback) utag_used_streams() {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_tag_used_streams")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

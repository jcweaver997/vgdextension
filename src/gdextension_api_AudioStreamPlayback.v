module vgdextension

@[noinit]
pub struct AudioStreamPlayback {
    RefCounted
}

pub interface IAudioStreamPlaybackStart {
    mut:
    virt_start(from_pos f64)
}

pub fn (r &AudioStreamPlayback) ustart(from_pos f64) {
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from_pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IAudioStreamPlaybackStop {
    mut:
    virt_stop()
}

pub fn (r &AudioStreamPlayback) ustop() {
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IAudioStreamPlaybackIsPlaying {
    mut:
    virt_is_playing() bool
}

pub fn (r &AudioStreamPlayback) uis_playing() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamPlaybackGetLoopCount {
    mut:
    virt_get_loop_count() i32
}

pub fn (r &AudioStreamPlayback) uget_loop_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_get_loop_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamPlaybackGetPlaybackPosition {
    mut:
    virt_get_playback_position() f64
}

pub fn (r &AudioStreamPlayback) uget_playback_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_get_playback_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamPlaybackSeek {
    mut:
    virt_seek(position f64)
}

pub fn (r &AudioStreamPlayback) useek(position f64) {
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IAudioStreamPlaybackMix {
    mut:
    virt_mix(buffer &AudioFrame, rate_scale f64, frames i32) i32
}

pub fn (r &AudioStreamPlayback) umix(buffer &AudioFrame, rate_scale f64, frames i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_mix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&rate_scale)}
    args[2] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamPlaybackTagUsedStreams {
    mut:
    virt_tag_used_streams()
}

pub fn (r &AudioStreamPlayback) utag_used_streams() {
    classname := StringName.new("AudioStreamPlayback")
    fnname := StringName.new("_tag_used_streams")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

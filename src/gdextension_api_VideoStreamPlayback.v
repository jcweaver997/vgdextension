module vgdextension

@[noinit]
pub struct VideoStreamPlayback {
    Resource
}

pub interface IVideoStreamPlaybackStop {
    mut:
    virt_stop()
}

pub fn (r &VideoStreamPlayback) ustop() {
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IVideoStreamPlaybackPlay {
    mut:
    virt_play()
}

pub fn (r &VideoStreamPlayback) uplay() {
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_play")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IVideoStreamPlaybackIsPlaying {
    mut:
    virt_is_playing() bool
}

pub fn (r &VideoStreamPlayback) uis_playing() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVideoStreamPlaybackSetPaused {
    mut:
    virt_set_paused(paused bool)
}

pub fn (r &VideoStreamPlayback) uset_paused(paused bool) {
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_set_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paused)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IVideoStreamPlaybackIsPaused {
    mut:
    virt_is_paused() bool
}

pub fn (r &VideoStreamPlayback) uis_paused() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_is_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVideoStreamPlaybackGetLength {
    mut:
    virt_get_length() f64
}

pub fn (r &VideoStreamPlayback) uget_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVideoStreamPlaybackGetPlaybackPosition {
    mut:
    virt_get_playback_position() f64
}

pub fn (r &VideoStreamPlayback) uget_playback_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_get_playback_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVideoStreamPlaybackSeek {
    mut:
    virt_seek(time f64)
}

pub fn (r &VideoStreamPlayback) useek(time f64) {
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IVideoStreamPlaybackSetAudioTrack {
    mut:
    virt_set_audio_track(idx i32)
}

pub fn (r &VideoStreamPlayback) uset_audio_track(idx i32) {
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_set_audio_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IVideoStreamPlaybackGetTexture {
    mut:
    virt_get_texture() Texture2D
}

pub fn (r &VideoStreamPlayback) uget_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVideoStreamPlaybackUpdate {
    mut:
    virt_update(delta f64)
}

pub fn (r &VideoStreamPlayback) uupdate(delta f64) {
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IVideoStreamPlaybackGetChannels {
    mut:
    virt_get_channels() i32
}

pub fn (r &VideoStreamPlayback) uget_channels() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_get_channels")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVideoStreamPlaybackGetMixRate {
    mut:
    virt_get_mix_rate() i32
}

pub fn (r &VideoStreamPlayback) uget_mix_rate() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("_get_mix_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayback) mix_audio(num_frames i32, buffer PackedFloat32Array, offset i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayback")
    fnname := StringName.new("mix_audio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 93876830)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&num_frames)}
    args[1] = unsafe{voidptr(&buffer)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

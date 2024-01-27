module vgdextension

pub type VideoStreamPlayback = voidptr

pub fn (mut r VideoStreamPlayback) ustop() {
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VideoStreamPlayback) uplay() {
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_play")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayback) uis_playing() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayback) uset_paused(paused bool) {
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_set_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayback) uis_paused() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_is_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VideoStreamPlayback) uget_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VideoStreamPlayback) uget_playback_position() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_playback_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayback) useek(time f32) {
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VideoStreamPlayback) uset_audio_track(idx i32) {
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_set_audio_track")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayback) uget_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayback) uupdate(delta f32) {
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayback) uget_channels() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_channels")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VideoStreamPlayback) uget_mix_rate() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayback) mix_audio(num_frames i32, buffer PackedFloat32Array, offset i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("mix_audio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1369271885)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&num_frames)}
    args[1] = unsafe{voidptr(&buffer)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

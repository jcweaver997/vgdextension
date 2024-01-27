module vgdextension

pub type AudioStreamPlayback = voidptr

pub fn (mut r AudioStreamPlayback) ustart(from_pos f32) {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamPlayback) ustop() {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayback) uis_playing() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStreamPlayback) uget_loop_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_loop_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStreamPlayback) uget_playback_position() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_get_playback_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayback) useek(position f32) {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamPlayback) umix(buffer &AudioFrame, rate_scale f32, frames i32) i32 {
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayback) utag_used_streams() {
    classname := StringName.new("AudioStreamPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("_tag_used_streams")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

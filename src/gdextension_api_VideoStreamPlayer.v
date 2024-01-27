pub type VideoStreamPlayer = voidptr

pub fn (mut r VideoStreamPlayer) set_stream(stream VideoStream) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2317102564)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_stream() VideoStream {
    mut object_out := VideoStream(unsafe{nil})
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 438621487)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) play() {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("play")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VideoStreamPlayer) stop() {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) is_playing() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_paused(paused bool) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) is_paused() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_volume(volume f32) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_volume")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_volume() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_volume")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_volume_db(db f32) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_volume_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_audio_track(track i32) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_audio_track")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_audio_track() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_audio_track")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VideoStreamPlayer) get_stream_name() String {
    mut object_out := String{}
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_stream_position(position f32) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_stream_position() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_autoplay(enabled bool) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) has_autoplay() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("has_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_expand(enable bool) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) has_expand() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("has_expand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_buffering_msec(msec i32) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffering_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_buffering_msec() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffering_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStreamPlayer) set_bus(bus StringName) {
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VideoStreamPlayer) get_bus() StringName {
    mut object_out := StringName{}
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VideoStreamPlayer) get_video_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("VideoStreamPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_video_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

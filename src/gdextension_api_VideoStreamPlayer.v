module vgdextension

@[noinit]
pub struct VideoStreamPlayer {
    Control
}

pub fn (r &VideoStreamPlayer) set_stream(stream VideoStream) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2317102564)
    mut args := unsafe { [1]voidptr{} }
    args[0] = stream.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_stream() VideoStream {
    mut object_out := VideoStream{}
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 438621487)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) play() {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("play")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) stop() {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) is_playing() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_paused(paused bool) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paused)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) is_paused() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("is_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_loop(loop bool) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) has_loop() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("has_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_volume(volume f64) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_volume")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&volume)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_volume() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_volume")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_volume_db(db f64) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_volume_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&db)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_volume_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_volume_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_audio_track(track i32) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_audio_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_audio_track() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_audio_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) get_stream_name() string {
    mut object_out := String{}
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_stream_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &VideoStreamPlayer) get_stream_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_stream_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_stream_position(position f64) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_stream_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_stream_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_stream_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_autoplay(enabled bool) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_autoplay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) has_autoplay() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("has_autoplay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_expand(enable bool) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_expand")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) has_expand() bool {
    mut object_out := false
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("has_expand")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_buffering_msec(msec i32) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_buffering_msec")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&msec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_buffering_msec() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_buffering_msec")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VideoStreamPlayer) set_bus(bus string) {
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("set_bus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(bus)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VideoStreamPlayer) get_bus() string {
    mut object_out := StringName{}
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_bus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &VideoStreamPlayer) get_video_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("VideoStreamPlayer")
    fnname := StringName.new("get_video_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

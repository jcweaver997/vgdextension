module vgdextension

pub enum AudioStreamPlayerMixTarget as i64 {
    mix_target_stereo = 0
    mix_target_surround = 1
    mix_target_center = 2
}

@[noinit]
pub struct AudioStreamPlayer {
    Node
}

pub fn (r &AudioStreamPlayer) set_stream(stream AudioStream) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210767741)
    mut args := unsafe { [1]voidptr{} }
    args[0] = stream.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) get_stream() AudioStream {
    mut object_out := AudioStream{}
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 160907539)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) set_volume_db(volume_db f64) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_volume_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&volume_db)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) get_volume_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_volume_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) set_pitch_scale(pitch_scale f64) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_pitch_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pitch_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) get_pitch_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_pitch_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) play(from_position f64) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("play")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958160172)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) seek(to_position f64) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) stop() {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) get_playback_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_playback_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) set_bus(bus string) {
    classname := StringName.new("AudioStreamPlayer")
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
pub fn (r &AudioStreamPlayer) get_bus() string {
    mut object_out := StringName{}
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_bus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AudioStreamPlayer) set_autoplay(enable bool) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_autoplay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) is_autoplay_enabled() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("is_autoplay_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) set_mix_target(mix_target AudioStreamPlayerMixTarget) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_mix_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2300306138)
    mut args := unsafe { [1]voidptr{} }
    i64_mix_target := i64(mix_target)
    args[0] = unsafe{voidptr(&i64_mix_target)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) get_mix_target() AudioStreamPlayerMixTarget {
    mut object_out := i64(AudioStreamPlayerMixTarget.mix_target_stereo)
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_mix_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 172807476)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AudioStreamPlayerMixTarget(object_out)}
}
pub fn (r &AudioStreamPlayer) set_stream_paused(pause bool) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_stream_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pause)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) get_stream_paused() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_stream_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) set_max_polyphony(max_polyphony i32) {
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("set_max_polyphony")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_polyphony)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamPlayer) get_max_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_max_polyphony")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) has_stream_playback() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("has_stream_playback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStreamPlayer) get_stream_playback() AudioStreamPlayback {
    mut object_out := AudioStreamPlayback{}
    classname := StringName.new("AudioStreamPlayer")
    fnname := StringName.new("get_stream_playback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 210135309)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

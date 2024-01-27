pub enum AudioStreamPlayer3DAttenuationModel {
    attenuation_inverse_distance = 0
    attenuation_inverse_square_distance = 1
    attenuation_logarithmic = 2
    attenuation_disabled = 3
}

pub enum AudioStreamPlayer3DDopplerTracking {
    doppler_tracking_disabled = 0
    doppler_tracking_idle_step = 1
    doppler_tracking_physics_step = 2
}

pub type AudioStreamPlayer3D = voidptr

pub fn (mut r AudioStreamPlayer3D) set_stream(stream AudioStream) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210767741)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_stream() AudioStream {
    mut object_out := AudioStream(unsafe{nil})
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 160907539)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_volume_db(volume_db f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_volume_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_unit_size(unit_size f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_unit_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_unit_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_unit_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_max_db(max_db f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_max_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_pitch_scale(pitch_scale f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pitch_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_pitch_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pitch_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) play(from_position f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("play")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958160172)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamPlayer3D) seek(to_position f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamPlayer3D) stop() {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) get_playback_position() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_playback_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_bus(bus StringName) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_bus() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_autoplay(enable bool) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioStreamPlayer3D) is_autoplay_enabled() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_autoplay_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_max_distance(meters f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_max_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_area_mask(mask i32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_area_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_area_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_area_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_emission_angle(degrees f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_emission_angle() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_emission_angle_enabled(enabled bool) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_angle_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) is_emission_angle_enabled() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_emission_angle_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_emission_angle_filter_attenuation_db(db f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_angle_filter_attenuation_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_emission_angle_filter_attenuation_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_angle_filter_attenuation_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_attenuation_filter_cutoff_hz(degrees f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_attenuation_filter_cutoff_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_attenuation_filter_cutoff_hz() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_attenuation_filter_cutoff_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_attenuation_filter_db(db f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_attenuation_filter_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_attenuation_filter_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_attenuation_filter_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_attenuation_model(model AudioStreamPlayer3DAttenuationModel) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_attenuation_model")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2988086229)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_attenuation_model() AudioStreamPlayer3DAttenuationModel {
    mut object_out := AudioStreamPlayer3DAttenuationModel.attenuation_inverse_distance
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_attenuation_model")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3035106060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_doppler_tracking(mode AudioStreamPlayer3DDopplerTracking) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_doppler_tracking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3968161450)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_doppler_tracking() AudioStreamPlayer3DDopplerTracking {
    mut object_out := AudioStreamPlayer3DDopplerTracking.doppler_tracking_disabled
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_doppler_tracking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1702418664)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_stream_paused(pause bool) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_stream_paused() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_max_polyphony(max_polyphony i32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_max_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) set_panning_strength(panning_strength f32) {
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_panning_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPlayer3D) get_panning_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_panning_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) has_stream_playback() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_stream_playback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlayer3D) get_stream_playback() AudioStreamPlayback {
    mut object_out := AudioStreamPlayback(unsafe{nil})
    classname := StringName.new("AudioStreamPlayer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_playback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 210135309)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

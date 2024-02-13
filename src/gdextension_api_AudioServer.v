module vgdextension

pub enum AudioServerSpeakerMode {
    speaker_mode_stereo = 0
    speaker_surround_31 = 1
    speaker_surround_51 = 2
    speaker_surround_71 = 3
}

@[noinit]
pub struct AudioServer {
    Object
}

pub fn AudioServer.get_singleton() AudioServer {
    sn := StringName.new("AudioServer")
    defer {sn.deinit()}
    o := AudioServer{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r AudioServer) set_bus_count(amount i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) get_bus_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) remove_bus(index i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) add_bus(at_position i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("add_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) move_bus(index i32, to_index i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("move_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&to_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) set_bus_name(bus_idx i32, name String) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) get_bus_name(bus_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_bus_index(bus_name StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_bus_channels(bus_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_channels")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_bus_volume_db(bus_idx i32, volume_db f64) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&volume_db)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) get_bus_volume_db(bus_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_bus_send(bus_idx i32, send StringName) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_send")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&send)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) get_bus_send(bus_idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_send")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_bus_solo(bus_idx i32, enable bool) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_solo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) is_bus_solo(bus_idx i32) bool {
    mut object_out := false
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_bus_solo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_bus_mute(bus_idx i32, enable bool) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_mute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) is_bus_mute(bus_idx i32) bool {
    mut object_out := false
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_bus_mute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_bus_bypass_effects(bus_idx i32, enable bool) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_bypass_effects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) is_bus_bypassing_effects(bus_idx i32) bool {
    mut object_out := false
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_bus_bypassing_effects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) add_bus_effect(bus_idx i32, effect AudioEffect, at_position i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("add_bus_effect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4147765248)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = effect.ptr
    args[2] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) remove_bus_effect(bus_idx i32, effect_idx i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_bus_effect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&effect_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) get_bus_effect_count(bus_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_effect_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) get_bus_effect(bus_idx i32, effect_idx i32) AudioEffect {
    mut object_out := AudioEffect{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_effect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 726064442)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&effect_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) get_bus_effect_instance(bus_idx i32, effect_idx i32, channel i32) AudioEffectInstance {
    mut object_out := AudioEffectInstance{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_effect_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2887144608)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&effect_idx)}
    args[2] = unsafe{voidptr(&channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) swap_bus_effects(bus_idx i32, effect_idx i32, by_effect_idx i32) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("swap_bus_effects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&effect_idx)}
    args[2] = unsafe{voidptr(&by_effect_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) set_bus_effect_enabled(bus_idx i32, effect_idx i32, enabled bool) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_effect_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&effect_idx)}
    args[2] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) is_bus_effect_enabled(bus_idx i32, effect_idx i32) bool {
    mut object_out := false
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_bus_effect_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&effect_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_bus_peak_volume_left_db(bus_idx i32, channel i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_peak_volume_left_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_bus_peak_volume_right_db(bus_idx i32, channel i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_bus_peak_volume_right_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bus_idx)}
    args[1] = unsafe{voidptr(&channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_playback_speed_scale(scale f64) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_playback_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) get_playback_speed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_playback_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) gdlock() {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioServer) unlock() {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("unlock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioServer) get_speaker_mode() AudioServerSpeakerMode {
    mut object_out := AudioServerSpeakerMode.speaker_mode_stereo
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_speaker_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2549190337)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_mix_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) get_output_device_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_output_device_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) get_output_device() String {
    mut object_out := String{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_output_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_output_device(name String) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_output_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) get_time_to_next_mix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_to_next_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_time_since_last_mix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_since_last_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioServer) get_output_latency() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_output_latency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) get_input_device_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_device_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) get_input_device() String {
    mut object_out := String{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_input_device(name String) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AudioServer) set_bus_layout(bus_layout AudioBusLayout) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bus_layout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3319058824)
    mut args := unsafe { [1]voidptr{} }
    args[0] = bus_layout.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioServer) generate_bus_layout() AudioBusLayout {
    mut object_out := AudioBusLayout{}
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("generate_bus_layout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3769973890)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioServer) set_enable_tagging_used_audio_streams(enable bool) {
    classname := StringName.new("AudioServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_tagging_used_audio_streams")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

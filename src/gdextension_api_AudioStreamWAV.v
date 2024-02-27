module vgdextension

pub enum AudioStreamWAVFormat as i64 {
    format_8_bits = 0
    format_16_bits = 1
    format_ima_adpcm = 2
}

pub enum AudioStreamWAVLoopMode as i64 {
    loop_disabled = 0
    loop_forward = 1
    loop_pingpong = 2
    loop_backward = 3
}

@[noinit]
pub struct AudioStreamWAV {
    AudioStream
}

pub fn (mut r AudioStreamWAV) set_data(data PackedByteArray) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioStreamWAV) set_format(format AudioStreamWAVFormat) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 60648488)
    mut args := unsafe { [1]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) get_format() AudioStreamWAVFormat {
    mut object_out := i64(AudioStreamWAVFormat.format_8_bits)
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3151724922)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AudioStreamWAVFormat(object_out)}
}
pub fn (mut r AudioStreamWAV) set_loop_mode(loop_mode AudioStreamWAVLoopMode) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_loop_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2444882972)
    mut args := unsafe { [1]voidptr{} }
    i64_loop_mode := i64(loop_mode)
    args[0] = unsafe{voidptr(&i64_loop_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) get_loop_mode() AudioStreamWAVLoopMode {
    mut object_out := i64(AudioStreamWAVLoopMode.loop_disabled)
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("get_loop_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 393560655)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AudioStreamWAVLoopMode(object_out)}
}
pub fn (mut r AudioStreamWAV) set_loop_begin(loop_begin i32) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_loop_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop_begin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) get_loop_begin() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("get_loop_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioStreamWAV) set_loop_end(loop_end i32) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_loop_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) get_loop_end() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("get_loop_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioStreamWAV) set_mix_rate(mix_rate i32) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_mix_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mix_rate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) get_mix_rate() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("get_mix_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioStreamWAV) set_stereo(stereo bool) {
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("set_stereo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stereo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioStreamWAV) is_stereo() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("is_stereo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioStreamWAV) save_to_wav(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("AudioStreamWAV")
    fnname := StringName.new("save_to_wav")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}

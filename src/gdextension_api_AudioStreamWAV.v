pub enum AudioStreamWAVFormat {
    format_8_bits = 0
    format_16_bits = 1
    format_ima_adpcm = 2
}

pub enum AudioStreamWAVLoopMode {
    loop_disabled = 0
    loop_forward = 1
    loop_pingpong = 2
    loop_backward = 3
}

pub type AudioStreamWAV = voidptr

pub fn (mut r AudioStreamWAV) set_data(data PackedByteArray) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) set_format(format AudioStreamWAVFormat) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 60648488)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) get_format() AudioStreamWAVFormat {
    mut object_out := AudioStreamWAVFormat.format_8_bits
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3151724922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) set_loop_mode(loop_mode AudioStreamWAVLoopMode) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2444882972)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) get_loop_mode() AudioStreamWAVLoopMode {
    mut object_out := AudioStreamWAVLoopMode.loop_disabled
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("get_loop_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 393560655)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) set_loop_begin(loop_begin i32) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) get_loop_begin() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("get_loop_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) set_loop_end(loop_end i32) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) get_loop_end() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("get_loop_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) set_mix_rate(mix_rate i32) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) get_mix_rate() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("get_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) set_stereo(stereo bool) {
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("set_stereo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamWAV) is_stereo() bool {
    mut object_out := false
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("is_stereo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamWAV) save_to_wav(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("AudioStreamWAV")
    defer { classname.deinit() }
    fnname := StringName.new("save_to_wav")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

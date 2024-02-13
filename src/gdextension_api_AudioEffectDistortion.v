module vgdextension

pub enum AudioEffectDistortionMode {
    mode_clip = 0
    mode_atan = 1
    mode_lofi = 2
    mode_overdrive = 3
    mode_waveshape = 4
}

@[noinit]
pub struct AudioEffectDistortion {
    AudioEffect
}

pub fn (mut r AudioEffectDistortion) set_mode(mode AudioEffectDistortionMode) {
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1314744793)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectDistortion) get_mode() AudioEffectDistortionMode {
    mut object_out := AudioEffectDistortionMode.mode_clip
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 809118343)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectDistortion) set_pre_gain(pre_gain f64) {
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("set_pre_gain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pre_gain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectDistortion) get_pre_gain() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("get_pre_gain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectDistortion) set_keep_hf_hz(keep_hf_hz f64) {
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("set_keep_hf_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep_hf_hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectDistortion) get_keep_hf_hz() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("get_keep_hf_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectDistortion) set_drive(drive f64) {
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("set_drive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&drive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectDistortion) get_drive() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("get_drive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectDistortion) set_post_gain(post_gain f64) {
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("set_post_gain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&post_gain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectDistortion) get_post_gain() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDistortion")
    defer { classname.deinit() }
    fnname := StringName.new("get_post_gain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

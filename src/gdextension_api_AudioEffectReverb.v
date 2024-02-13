module vgdextension

@[noinit]
pub struct AudioEffectReverb {
    AudioEffect
}

pub fn (mut r AudioEffectReverb) set_predelay_msec(msec f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_predelay_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&msec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_predelay_msec() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_predelay_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_predelay_feedback(feedback f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_predelay_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feedback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_predelay_feedback() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_predelay_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_room_size(size f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_room_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_room_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_room_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_damping(amount f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_damping() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_spread(amount f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_spread() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_dry(amount f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_dry() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_wet(amount f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_wet() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_hpf(amount f64) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_hpf")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_hpf() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_hpf")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

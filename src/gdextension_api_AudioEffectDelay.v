module vgdextension

@[noinit]
pub struct AudioEffectDelay {
    AudioEffect
}

pub fn (r &AudioEffectDelay) set_dry(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_dry")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_dry() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_dry")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap1_active(amount bool) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap1_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) is_tap1_active() bool {
    mut object_out := false
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("is_tap1_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap1_delay_ms(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap1_delay_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_tap1_delay_ms() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_tap1_delay_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap1_level_db(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap1_level_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_tap1_level_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_tap1_level_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap1_pan(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap1_pan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_tap1_pan() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_tap1_pan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap2_active(amount bool) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap2_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) is_tap2_active() bool {
    mut object_out := false
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("is_tap2_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap2_delay_ms(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap2_delay_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_tap2_delay_ms() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_tap2_delay_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap2_level_db(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap2_level_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_tap2_level_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_tap2_level_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_tap2_pan(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_tap2_pan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_tap2_pan() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_tap2_pan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_feedback_active(amount bool) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_feedback_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) is_feedback_active() bool {
    mut object_out := false
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("is_feedback_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_feedback_delay_ms(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_feedback_delay_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_feedback_delay_ms() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_feedback_delay_ms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_feedback_level_db(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_feedback_level_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_feedback_level_db() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_feedback_level_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectDelay) set_feedback_lowpass(amount f64) {
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("set_feedback_lowpass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectDelay) get_feedback_lowpass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectDelay")
    fnname := StringName.new("get_feedback_lowpass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

@[noinit]
pub struct AudioEffectPhaser {
    AudioEffect
}

pub fn (mut r AudioEffectPhaser) set_range_min_hz(hz f64) {
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("set_range_min_hz")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectPhaser) get_range_min_hz() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("get_range_min_hz")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_range_max_hz(hz f64) {
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("set_range_max_hz")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectPhaser) get_range_max_hz() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("get_range_max_hz")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_rate_hz(hz f64) {
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("set_rate_hz")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectPhaser) get_rate_hz() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("get_rate_hz")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_feedback(fbk f64) {
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("set_feedback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fbk)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectPhaser) get_feedback() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("get_feedback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_depth(depth f64) {
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("set_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectPhaser) get_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPhaser")
    fnname := StringName.new("get_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

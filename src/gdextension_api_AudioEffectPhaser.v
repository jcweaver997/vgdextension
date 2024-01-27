module vgdextension

pub type AudioEffectPhaser = voidptr

pub fn (mut r AudioEffectPhaser) set_range_min_hz(hz f32) {
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("set_range_min_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectPhaser) get_range_min_hz() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("get_range_min_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_range_max_hz(hz f32) {
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("set_range_max_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectPhaser) get_range_max_hz() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("get_range_max_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_rate_hz(hz f32) {
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("set_rate_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectPhaser) get_rate_hz() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("get_rate_hz")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_feedback(fbk f32) {
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("set_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectPhaser) get_feedback() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("get_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectPhaser) set_depth(depth f32) {
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectPhaser) get_depth() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectPhaser")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

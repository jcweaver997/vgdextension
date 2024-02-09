module vgdextension

pub enum VisualShaderNodeFloatParameterHint {
    hint_none = 0
    hint_range = 1
    hint_range_step = 2
    hint_max = 3
}

pub struct VisualShaderNodeFloatParameter {
    VisualShaderNodeParameter
}

pub fn (mut r VisualShaderNodeFloatParameter) set_hint(hint VisualShaderNodeFloatParameterHint) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3712586466)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatParameter) get_hint() VisualShaderNodeFloatParameterHint {
    mut object_out := VisualShaderNodeFloatParameterHint.hint_none
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3042240429)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeFloatParameter) set_min(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatParameter) get_min() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeFloatParameter) set_max(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatParameter) get_max() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeFloatParameter) set_step(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatParameter) get_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeFloatParameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatParameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("is_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeFloatParameter) set_default_value(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatParameter) get_default_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

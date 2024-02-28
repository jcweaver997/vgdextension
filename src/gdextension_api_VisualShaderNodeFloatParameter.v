module vgdextension

pub enum VisualShaderNodeFloatParameterHint as i64 {
    hint_none = 0
    hint_range = 1
    hint_range_step = 2
    hint_max = 3
}

@[noinit]
pub struct VisualShaderNodeFloatParameter {
    VisualShaderNodeParameter
}

pub fn (r &VisualShaderNodeFloatParameter) set_hint(hint VisualShaderNodeFloatParameterHint) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("set_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3712586466)
    mut args := unsafe { [1]voidptr{} }
    i64_hint := i64(hint)
    args[0] = unsafe{voidptr(&i64_hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatParameter) get_hint() VisualShaderNodeFloatParameterHint {
    mut object_out := i64(VisualShaderNodeFloatParameterHint.hint_none)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("get_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3042240429)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeFloatParameterHint(object_out)}
}
pub fn (r &VisualShaderNodeFloatParameter) set_min(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("set_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatParameter) get_min() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("get_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeFloatParameter) set_max(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("set_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatParameter) get_max() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("get_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeFloatParameter) set_step(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("set_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatParameter) get_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("get_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeFloatParameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("set_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatParameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("is_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeFloatParameter) set_default_value(value f64) {
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("set_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatParameter) get_default_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatParameter")
    fnname := StringName.new("get_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

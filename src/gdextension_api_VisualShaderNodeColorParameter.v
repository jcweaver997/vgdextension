module vgdextension

pub struct VisualShaderNodeColorParameter {
    VisualShaderNodeParameter
}

pub fn (mut r VisualShaderNodeColorParameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeColorParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeColorParameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeColorParameter")
    defer { classname.deinit() }
    fnname := StringName.new("is_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeColorParameter) set_default_value(value Color) {
    classname := StringName.new("VisualShaderNodeColorParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeColorParameter) get_default_value() Color {
    mut object_out := Color{}
    classname := StringName.new("VisualShaderNodeColorParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

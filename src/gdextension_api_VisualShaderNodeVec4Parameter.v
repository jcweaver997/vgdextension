module vgdextension

@[noinit]
pub struct VisualShaderNodeVec4Parameter {
    VisualShaderNodeParameter
}

pub fn (mut r VisualShaderNodeVec4Parameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeVec4Parameter")
    fnname := StringName.new("set_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeVec4Parameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeVec4Parameter")
    fnname := StringName.new("is_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeVec4Parameter) set_default_value(value Vector4) {
    classname := StringName.new("VisualShaderNodeVec4Parameter")
    fnname := StringName.new("set_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 643568085)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeVec4Parameter) get_default_value() Vector4 {
    mut object_out := Vector4{}
    classname := StringName.new("VisualShaderNodeVec4Parameter")
    fnname := StringName.new("get_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2435802345)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

@[noinit]
pub struct VisualShaderNodeTransformParameter {
    VisualShaderNodeParameter
}

pub fn (r &VisualShaderNodeTransformParameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeTransformParameter")
    fnname := StringName.new("set_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTransformParameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeTransformParameter")
    fnname := StringName.new("is_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeTransformParameter) set_default_value(value Transform3D) {
    classname := StringName.new("VisualShaderNodeTransformParameter")
    fnname := StringName.new("set_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTransformParameter) get_default_value() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("VisualShaderNodeTransformParameter")
    fnname := StringName.new("get_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

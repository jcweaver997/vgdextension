module vgdextension

pub type VisualShaderNodeVec3Parameter = voidptr

pub fn (mut r VisualShaderNodeVec3Parameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeVec3Parameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVec3Parameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeVec3Parameter")
    defer { classname.deinit() }
    fnname := StringName.new("is_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeVec3Parameter) set_default_value(value Vector3) {
    classname := StringName.new("VisualShaderNodeVec3Parameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVec3Parameter) get_default_value() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("VisualShaderNodeVec3Parameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

pub type VisualShaderNodeParameterRef = voidptr

pub fn (mut r VisualShaderNodeParameterRef) set_parameter_name(name String) {
    classname := StringName.new("VisualShaderNodeParameterRef")
    defer { classname.deinit() }
    fnname := StringName.new("set_parameter_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParameterRef) get_parameter_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeParameterRef")
    defer { classname.deinit() }
    fnname := StringName.new("get_parameter_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

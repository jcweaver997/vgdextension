pub enum VisualShaderNodeParameterQualifier {
    qual_none = 0
    qual_global = 1
    qual_instance = 2
    qual_max = 3
}

pub type VisualShaderNodeParameter = voidptr

pub fn (mut r VisualShaderNodeParameter) set_parameter_name(name String) {
    classname := StringName.new("VisualShaderNodeParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_parameter_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParameter) get_parameter_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_parameter_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeParameter) set_qualifier(qualifier VisualShaderNodeParameterQualifier) {
    classname := StringName.new("VisualShaderNodeParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_qualifier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1276489447)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParameter) get_qualifier() VisualShaderNodeParameterQualifier {
    mut object_out := VisualShaderNodeParameterQualifier.qual_none
    classname := StringName.new("VisualShaderNodeParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_qualifier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3558406205)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

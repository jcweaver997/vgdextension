module vgdextension

pub type VisualShaderNodeCustom = voidptr

pub fn (r &VisualShaderNodeCustom) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_description() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_category() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_category")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_return_icon_type() VisualShaderNodePortType {
    mut object_out := VisualShaderNodePortType.port_type_scalar
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_return_icon_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_input_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_input_port_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_input_port_type(port i32) VisualShaderNodePortType {
    mut object_out := VisualShaderNodePortType.port_type_scalar
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_input_port_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_input_port_name(port i32) String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_input_port_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_output_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_output_port_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_output_port_type(port i32) VisualShaderNodePortType {
    mut object_out := VisualShaderNodePortType.port_type_scalar
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_output_port_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_output_port_name(port i32) String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_output_port_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_code(input_vars Array, output_vars Array, mode ShaderMode, type_name VisualShaderType) String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&input_vars)}
    args[1] = unsafe{voidptr(&output_vars)}
    args[2] = unsafe{voidptr(&mode)}
    args[3] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_func_code(mode ShaderMode, type_name VisualShaderType) String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_func_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uget_global_code(mode ShaderMode) String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_global_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uis_highend() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_is_highend")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeCustom) uis_available(mode ShaderMode, type_name VisualShaderType) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_is_available")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

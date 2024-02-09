module vgdextension

pub struct VisualShaderNodeCustom {
    VisualShaderNode
}

pub interface IVisualShaderNodeCustomGetName {
    mut:
    virt_get_name() String
}

pub fn (r &VisualShaderNodeCustom) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetDescription {
    mut:
    virt_get_description() String
}

pub fn (r &VisualShaderNodeCustom) uget_description() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetCategory {
    mut:
    virt_get_category() String
}

pub fn (r &VisualShaderNodeCustom) uget_category() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_category")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetReturnIconType {
    mut:
    virt_get_return_icon_type() VisualShaderNodePortType
}

pub fn (r &VisualShaderNodeCustom) uget_return_icon_type() VisualShaderNodePortType {
    mut object_out := VisualShaderNodePortType.port_type_scalar
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_return_icon_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetInputPortCount {
    mut:
    virt_get_input_port_count() i32
}

pub fn (r &VisualShaderNodeCustom) uget_input_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_input_port_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetInputPortType {
    mut:
    virt_get_input_port_type(port i32) VisualShaderNodePortType
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetInputPortName {
    mut:
    virt_get_input_port_name(port i32) String
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetOutputPortCount {
    mut:
    virt_get_output_port_count() i32
}

pub fn (r &VisualShaderNodeCustom) uget_output_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_get_output_port_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetOutputPortType {
    mut:
    virt_get_output_port_type(port i32) VisualShaderNodePortType
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetOutputPortName {
    mut:
    virt_get_output_port_name(port i32) String
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetCode {
    mut:
    virt_get_code(input_vars Array, output_vars Array, mode ShaderMode, type_name VisualShaderType) String
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetFuncCode {
    mut:
    virt_get_func_code(mode ShaderMode, type_name VisualShaderType) String
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomGetGlobalCode {
    mut:
    virt_get_global_code(mode ShaderMode) String
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomIsHighend {
    mut:
    virt_is_highend() bool
}

pub fn (r &VisualShaderNodeCustom) uis_highend() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeCustom")
    defer { classname.deinit() }
    fnname := StringName.new("_is_highend")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IVisualShaderNodeCustomIsAvailable {
    mut:
    virt_is_available(mode ShaderMode, type_name VisualShaderType) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct VisualShaderNodeCustom {
    VisualShaderNode
}

pub interface IVisualShaderNodeCustomGetName {
    mut:
    virt_get_name() String
}

pub fn (r &VisualShaderNodeCustom) uget_name() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetDescription {
    mut:
    virt_get_description() String
}

pub fn (r &VisualShaderNodeCustom) uget_description() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetCategory {
    mut:
    virt_get_category() String
}

pub fn (r &VisualShaderNodeCustom) uget_category() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_category")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetReturnIconType {
    mut:
    virt_get_return_icon_type() VisualShaderNodePortType
}

pub fn (r &VisualShaderNodeCustom) uget_return_icon_type() VisualShaderNodePortType {
    mut object_out := i64(VisualShaderNodePortType.port_type_scalar)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_return_icon_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodePortType(object_out)}
}
pub interface IVisualShaderNodeCustomGetInputPortCount {
    mut:
    virt_get_input_port_count() i32
}

pub fn (r &VisualShaderNodeCustom) uget_input_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_input_port_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetInputPortType {
    mut:
    virt_get_input_port_type(port i32) VisualShaderNodePortType
}

pub fn (r &VisualShaderNodeCustom) uget_input_port_type(port i32) VisualShaderNodePortType {
    mut object_out := i64(VisualShaderNodePortType.port_type_scalar)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_input_port_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodePortType(object_out)}
}
pub interface IVisualShaderNodeCustomGetInputPortName {
    mut:
    virt_get_input_port_name(port i32) String
}

pub fn (r &VisualShaderNodeCustom) uget_input_port_name(port i32) string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_input_port_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetInputPortDefaultValue {
    mut:
    virt_get_input_port_default_value(port i32) Variant
}

pub fn (r &VisualShaderNodeCustom) uget_input_port_default_value(port i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_input_port_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetDefaultInputPort {
    mut:
    virt_get_default_input_port(type_name VisualShaderNodePortType) i32
}

pub fn (r &VisualShaderNodeCustom) uget_default_input_port(type_name VisualShaderNodePortType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_default_input_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetOutputPortCount {
    mut:
    virt_get_output_port_count() i32
}

pub fn (r &VisualShaderNodeCustom) uget_output_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_output_port_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetOutputPortType {
    mut:
    virt_get_output_port_type(port i32) VisualShaderNodePortType
}

pub fn (r &VisualShaderNodeCustom) uget_output_port_type(port i32) VisualShaderNodePortType {
    mut object_out := i64(VisualShaderNodePortType.port_type_scalar)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_output_port_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodePortType(object_out)}
}
pub interface IVisualShaderNodeCustomGetOutputPortName {
    mut:
    virt_get_output_port_name(port i32) String
}

pub fn (r &VisualShaderNodeCustom) uget_output_port_name(port i32) string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_output_port_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetPropertyCount {
    mut:
    virt_get_property_count() i32
}

pub fn (r &VisualShaderNodeCustom) uget_property_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_property_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetPropertyName {
    mut:
    virt_get_property_name(index i32) String
}

pub fn (r &VisualShaderNodeCustom) uget_property_name(index i32) string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_property_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetPropertyDefaultIndex {
    mut:
    virt_get_property_default_index(index i32) i32
}

pub fn (r &VisualShaderNodeCustom) uget_property_default_index(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_property_default_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetPropertyOptions {
    mut:
    virt_get_property_options(index i32) PackedStringArray
}

pub fn (r &VisualShaderNodeCustom) uget_property_options(index i32) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_property_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomGetCode {
    mut:
    virt_get_code(input_vars Array, output_vars Array, mode ShaderMode, type_name VisualShaderType) String
}

pub fn (r &VisualShaderNodeCustom) uget_code(input_vars Array, output_vars Array, mode ShaderMode, type_name VisualShaderType) string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&input_vars)}
    args[1] = unsafe{voidptr(&output_vars)}
    i64_mode := i64(mode)
    args[2] = unsafe{voidptr(&i64_mode)}
    i64_type_name := i64(type_name)
    args[3] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetFuncCode {
    mut:
    virt_get_func_code(mode ShaderMode, type_name VisualShaderType) String
}

pub fn (r &VisualShaderNodeCustom) uget_func_code(mode ShaderMode, type_name VisualShaderType) string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_func_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomGetGlobalCode {
    mut:
    virt_get_global_code(mode ShaderMode) String
}

pub fn (r &VisualShaderNodeCustom) uget_global_code(mode ShaderMode) string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_get_global_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IVisualShaderNodeCustomIsHighend {
    mut:
    virt_is_highend() bool
}

pub fn (r &VisualShaderNodeCustom) uis_highend() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_is_highend")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IVisualShaderNodeCustomIsAvailable {
    mut:
    virt_is_available(mode ShaderMode, type_name VisualShaderType) bool
}

pub fn (r &VisualShaderNodeCustom) uis_available(mode ShaderMode, type_name VisualShaderType) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("_is_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeCustom) get_option_index(option i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeCustom")
    fnname := StringName.new("get_option_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

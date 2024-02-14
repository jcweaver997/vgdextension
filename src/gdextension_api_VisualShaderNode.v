module vgdextension

pub enum VisualShaderNodePortType as i64 {
    port_type_scalar = 0
    port_type_scalar_int = 1
    port_type_scalar_uint = 2
    port_type_vector_2d = 3
    port_type_vector_3d = 4
    port_type_vector_4d = 5
    port_type_boolean = 6
    port_type_transform = 7
    port_type_sampler = 8
    port_type_max = 9
}

@[noinit]
pub struct VisualShaderNode {
    Resource
}

pub fn (r &VisualShaderNode) get_default_input_port(type_name VisualShaderNodePortType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("get_default_input_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1894493699)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNode) set_output_port_for_preview(port i32) {
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("set_output_port_for_preview")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNode) get_output_port_for_preview() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("get_output_port_for_preview")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNode) set_input_port_default_value(port i32, value Variant, prev_value Variant) {
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("set_input_port_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 150923387)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&value)}
    args[2] = unsafe{voidptr(&prev_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNode) get_input_port_default_value(port i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("get_input_port_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNode) remove_input_port_default_value(port i32) {
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("remove_input_port_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r VisualShaderNode) clear_default_input_values() {
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("clear_default_input_values")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r VisualShaderNode) set_default_input_values(values Array) {
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("set_default_input_values")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&values)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNode) get_default_input_values() Array {
    mut object_out := Array{}
    classname := StringName.new("VisualShaderNode")
    fnname := StringName.new("get_default_input_values")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

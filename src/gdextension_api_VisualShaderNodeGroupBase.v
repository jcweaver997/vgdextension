module vgdextension

@[noinit]
pub struct VisualShaderNodeGroupBase {
    VisualShaderNodeResizableBase
}

pub fn (r &VisualShaderNodeGroupBase) set_inputs(inputs string) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("set_inputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(inputs)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) get_inputs() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("get_inputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &VisualShaderNodeGroupBase) set_outputs(outputs string) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("set_outputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(outputs)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) get_outputs() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("get_outputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &VisualShaderNodeGroupBase) is_valid_port_name(name string) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("is_valid_port_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) add_input_port(id i32, type_name i32, name string) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("add_input_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    arg_sn2 := String.new(name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) remove_input_port(id i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("remove_input_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) get_input_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("get_input_port_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) has_input_port(id i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("has_input_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) clear_input_ports() {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("clear_input_ports")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) add_output_port(id i32, type_name i32, name string) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("add_output_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    arg_sn2 := String.new(name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) remove_output_port(id i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("remove_output_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) get_output_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("get_output_port_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) has_output_port(id i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("has_output_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) clear_output_ports() {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("clear_output_ports")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) set_input_port_name(id i32, name string) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("set_input_port_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) set_input_port_type(id i32, type_name i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("set_input_port_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) set_output_port_name(id i32, name string) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("set_output_port_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) set_output_port_type(id i32, type_name i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("set_output_port_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeGroupBase) get_free_input_port_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("get_free_input_port_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) get_free_output_port_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    fnname := StringName.new("get_free_output_port_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

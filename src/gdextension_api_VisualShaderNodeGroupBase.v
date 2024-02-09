module vgdextension

pub struct VisualShaderNodeGroupBase {
    VisualShaderNodeResizableBase
}

pub fn (mut r VisualShaderNodeGroupBase) set_inputs(inputs String) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_inputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&inputs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeGroupBase) get_inputs() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_inputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeGroupBase) set_outputs(outputs String) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_outputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&outputs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeGroupBase) get_outputs() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_outputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) is_valid_port_name(name String) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("is_valid_port_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeGroupBase) add_input_port(id i32, type_name i32, name String) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("add_input_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) remove_input_port(id i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("remove_input_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeGroupBase) get_input_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_port_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) has_input_port(id i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("has_input_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeGroupBase) clear_input_ports() {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("clear_input_ports")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) add_output_port(id i32, type_name i32, name String) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("add_output_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) remove_output_port(id i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("remove_output_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeGroupBase) get_output_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_output_port_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) has_output_port(id i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("has_output_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeGroupBase) clear_output_ports() {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("clear_output_ports")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) set_input_port_name(id i32, name String) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_port_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) set_input_port_type(id i32, type_name i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_port_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) set_output_port_name(id i32, name String) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_output_port_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisualShaderNodeGroupBase) set_output_port_type(id i32, type_name i32) {
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_output_port_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeGroupBase) get_free_input_port_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_free_input_port_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeGroupBase) get_free_output_port_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeGroupBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_free_output_port_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

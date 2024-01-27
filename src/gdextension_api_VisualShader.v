module vgdextension

pub enum VisualShaderType {
    type_vertex = 0
    type_fragment = 1
    type_light = 2
    type_start = 3
    type_process = 4
    type_collide = 5
    type_start_custom = 6
    type_process_custom = 7
    type_sky = 8
    type_fog = 9
    type_max = 10
}

pub enum VisualShaderVaryingMode {
    varying_mode_vertex_to_frag_light = 0
    varying_mode_frag_to_light = 1
    varying_mode_max = 2
}

pub enum VisualShaderVaryingType {
    varying_type_float = 0
    varying_type_int = 1
    varying_type_uint = 2
    varying_type_vector_2d = 3
    varying_type_vector_3d = 4
    varying_type_vector_4d = 5
    varying_type_boolean = 6
    varying_type_transform = 7
    varying_type_max = 8
}

pub type VisualShader = voidptr

pub fn (mut r VisualShader) set_mode(mode ShaderMode) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3978014962)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VisualShader) add_node(type_name VisualShaderType, node VisualShaderNode, position Vector2, id i32) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("add_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1560769431)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShader) get_node(type_name VisualShaderType, id i32) VisualShaderNode {
    mut object_out := VisualShaderNode(unsafe{nil})
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("get_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3784670312)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShader) set_node_position(type_name VisualShaderType, id i32, position Vector2) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726660721)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShader) get_node_position(type_name VisualShaderType, id i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2175036082)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShader) get_node_list(type_name VisualShaderType) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370592410)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShader) get_valid_node_id(type_name VisualShaderType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("get_valid_node_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 629467342)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShader) remove_node(type_name VisualShaderType, id i32) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("remove_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844050912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VisualShader) replace_node(type_name VisualShaderType, id i32, new_class StringName) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("replace_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3144735253)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShader) is_node_connection(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("is_node_connection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3922381898)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShader) can_connect_nodes(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("can_connect_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3922381898)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShader) connect_nodes(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("connect_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3081049573)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShader) disconnect_nodes(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2268060358)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VisualShader) connect_nodes_forced(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("connect_nodes_forced")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2268060358)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShader) get_node_connections(type_name VisualShaderType) Array {
    mut object_out := Array{}
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1441964831)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShader) set_graph_offset(offset Vector2) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("set_graph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShader) get_graph_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("get_graph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShader) add_varying(name String, mode VisualShaderVaryingMode, type_name VisualShaderVaryingType) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("add_varying")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2084110726)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r VisualShader) remove_varying(name String) {
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("remove_varying")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShader) has_varying(name String) bool {
    mut object_out := false
    classname := StringName.new("VisualShader")
    defer { classname.deinit() }
    fnname := StringName.new("has_varying")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

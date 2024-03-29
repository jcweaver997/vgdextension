module vgdextension

pub enum VisualShaderType as i64 {
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

pub enum VisualShaderVaryingMode as i64 {
    varying_mode_vertex_to_frag_light = 0
    varying_mode_frag_to_light = 1
    varying_mode_max = 2
}

pub enum VisualShaderVaryingType as i64 {
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

@[noinit]
pub struct VisualShader {
    Shader
}

pub fn (r &VisualShader) set_mode(mode ShaderMode) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3978014962)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) add_node(type_name VisualShaderType, node VisualShaderNode, position Vector2, id i32) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("add_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1560769431)
    mut args := unsafe { [4]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = voidptr(&node.ptr)
    args[2] = unsafe{voidptr(&position)}
    args[3] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) get_node(type_name VisualShaderType, id i32) VisualShaderNode {
    mut object_out := VisualShaderNode{}
    classname := StringName.new("VisualShader")
    fnname := StringName.new("get_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3784670312)
    mut args := unsafe { [2]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) set_node_position(type_name VisualShaderType, id i32, position Vector2) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("set_node_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726660721)
    mut args := unsafe { [3]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&id)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) get_node_position(type_name VisualShaderType, id i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShader")
    fnname := StringName.new("get_node_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2175036082)
    mut args := unsafe { [2]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) get_node_list(type_name VisualShaderType) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("VisualShader")
    fnname := StringName.new("get_node_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370592410)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) get_valid_node_id(type_name VisualShaderType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShader")
    fnname := StringName.new("get_valid_node_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 629467342)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) remove_node(type_name VisualShaderType, id i32) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("remove_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844050912)
    mut args := unsafe { [2]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) replace_node(type_name VisualShaderType, id i32, new_class string) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("replace_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3144735253)
    mut args := unsafe { [3]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&id)}
    arg_sn2 := StringName.new(new_class)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) is_node_connection(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShader")
    fnname := StringName.new("is_node_connection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3922381898)
    mut args := unsafe { [5]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) can_connect_nodes(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) bool {
    mut object_out := false
    classname := StringName.new("VisualShader")
    fnname := StringName.new("can_connect_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3922381898)
    mut args := unsafe { [5]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) connect_nodes(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("VisualShader")
    fnname := StringName.new("connect_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3081049573)
    mut args := unsafe { [5]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &VisualShader) disconnect_nodes(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("disconnect_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2268060358)
    mut args := unsafe { [5]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) connect_nodes_forced(type_name VisualShaderType, from_node i32, from_port i32, to_node i32, to_port i32) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("connect_nodes_forced")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2268060358)
    mut args := unsafe { [5]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&from_node)}
    args[2] = unsafe{voidptr(&from_port)}
    args[3] = unsafe{voidptr(&to_node)}
    args[4] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) get_node_connections(type_name VisualShaderType) Array {
    mut object_out := Array{}
    classname := StringName.new("VisualShader")
    fnname := StringName.new("get_node_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1441964831)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) set_graph_offset(offset Vector2) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("set_graph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) get_graph_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShader")
    fnname := StringName.new("get_graph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShader) add_varying(name string, mode VisualShaderVaryingMode, type_name VisualShaderVaryingType) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("add_varying")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2084110726)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    i64_type_name := i64(type_name)
    args[2] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) remove_varying(name string) {
    classname := StringName.new("VisualShader")
    fnname := StringName.new("remove_varying")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShader) has_varying(name string) bool {
    mut object_out := false
    classname := StringName.new("VisualShader")
    fnname := StringName.new("has_varying")
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

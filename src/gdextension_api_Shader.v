module vgdextension

pub enum ShaderMode {
    mode_spatial = 0
    mode_canvas_item = 1
    mode_particles = 2
    mode_sky = 3
    mode_fog = 4
}

pub struct Shader {
    Resource
}

pub fn (r &Shader) get_mode() ShaderMode {
    mut object_out := ShaderMode.mode_spatial
    classname := StringName.new("Shader")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3392948163)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Shader) set_code(code String) {
    classname := StringName.new("Shader")
    defer { classname.deinit() }
    fnname := StringName.new("set_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Shader) get_code() String {
    mut object_out := String{}
    classname := StringName.new("Shader")
    defer { classname.deinit() }
    fnname := StringName.new("get_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Shader) set_default_texture_parameter(name StringName, texture Texture2D, index i32) {
    classname := StringName.new("Shader")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_texture_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1628453603)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = texture.ptr
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Shader) get_default_texture_parameter(name StringName, index i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Shader")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_texture_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3823812009)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Shader) get_shader_uniform_list(get_groups bool) Array {
    mut object_out := Array{}
    classname := StringName.new("Shader")
    defer { classname.deinit() }
    fnname := StringName.new("get_shader_uniform_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1230511656)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&get_groups)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

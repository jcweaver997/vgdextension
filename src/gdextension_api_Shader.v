module vgdextension

pub enum ShaderMode as i64 {
    mode_spatial = 0
    mode_canvas_item = 1
    mode_particles = 2
    mode_sky = 3
    mode_fog = 4
}

@[noinit]
pub struct Shader {
    Resource
}

pub fn (r &Shader) get_mode() ShaderMode {
    mut object_out := i64(ShaderMode.mode_spatial)
    classname := StringName.new("Shader")
    fnname := StringName.new("get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3392948163)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ShaderMode(object_out)}
}
pub fn (r &Shader) set_code(code string) {
    classname := StringName.new("Shader")
    fnname := StringName.new("set_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(code)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shader) get_code() string {
    mut object_out := String{}
    classname := StringName.new("Shader")
    fnname := StringName.new("get_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Shader) set_default_texture_parameter(name string, texture Texture2D, index i32) {
    classname := StringName.new("Shader")
    fnname := StringName.new("set_default_texture_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2750740428)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&texture.ptr)
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shader) get_default_texture_parameter(name string, index i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Shader")
    fnname := StringName.new("get_default_texture_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3090538643)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Shader) get_shader_uniform_list(get_groups bool) Array {
    mut object_out := Array{}
    classname := StringName.new("Shader")
    fnname := StringName.new("get_shader_uniform_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1230511656)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&get_groups)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

pub struct ShaderMaterial {
    Material
}

pub fn (mut r ShaderMaterial) set_shader(shader Shader) {
    classname := StringName.new("ShaderMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_shader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341921675)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shader.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShaderMaterial) get_shader() Shader {
    mut object_out := Shader{}
    classname := StringName.new("ShaderMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_shader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2078273437)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShaderMaterial) set_shader_parameter(param StringName, value Variant) {
    classname := StringName.new("ShaderMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_shader_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShaderMaterial) get_shader_parameter(param StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ShaderMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_shader_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

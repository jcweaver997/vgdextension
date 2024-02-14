module vgdextension

pub enum VisualShaderNodeTextureSource as i64 {
    source_texture = 0
    source_screen = 1
    source_2d_texture = 2
    source_2d_normal = 3
    source_depth = 4
    source_port = 5
    source_3d_normal = 6
    source_roughness = 7
    source_max = 8
}

pub enum VisualShaderNodeTextureTextureType as i64 {
    type_data = 0
    type_color = 1
    type_normal_map = 2
    type_max = 3
}

@[noinit]
pub struct VisualShaderNodeTexture {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeTexture) set_source(value VisualShaderNodeTextureSource) {
    classname := StringName.new("VisualShaderNodeTexture")
    fnname := StringName.new("set_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 905262939)
    mut args := unsafe { [1]voidptr{} }
    i64_value := i64(value)
    args[0] = unsafe{voidptr(&i64_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTexture) get_source() VisualShaderNodeTextureSource {
    mut object_out := i64(VisualShaderNodeTextureSource.source_texture)
    classname := StringName.new("VisualShaderNodeTexture")
    fnname := StringName.new("get_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2896297444)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeTextureSource(object_out)}
}
pub fn (mut r VisualShaderNodeTexture) set_texture(value Texture2D) {
    classname := StringName.new("VisualShaderNodeTexture")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = value.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTexture) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("VisualShaderNodeTexture")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeTexture) set_texture_type(value VisualShaderNodeTextureTextureType) {
    classname := StringName.new("VisualShaderNodeTexture")
    fnname := StringName.new("set_texture_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 986314081)
    mut args := unsafe { [1]voidptr{} }
    i64_value := i64(value)
    args[0] = unsafe{voidptr(&i64_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTexture) get_texture_type() VisualShaderNodeTextureTextureType {
    mut object_out := i64(VisualShaderNodeTextureTextureType.type_data)
    classname := StringName.new("VisualShaderNodeTexture")
    fnname := StringName.new("get_texture_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3290430153)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeTextureTextureType(object_out)}
}

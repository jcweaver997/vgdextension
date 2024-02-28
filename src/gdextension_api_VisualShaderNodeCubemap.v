module vgdextension

pub enum VisualShaderNodeCubemapSource as i64 {
    source_texture = 0
    source_port = 1
    source_max = 2
}

pub enum VisualShaderNodeCubemapTextureType as i64 {
    type_data = 0
    type_color = 1
    type_normal_map = 2
    type_max = 3
}

@[noinit]
pub struct VisualShaderNodeCubemap {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeCubemap) set_source(value VisualShaderNodeCubemapSource) {
    classname := StringName.new("VisualShaderNodeCubemap")
    fnname := StringName.new("set_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1625400621)
    mut args := unsafe { [1]voidptr{} }
    i64_value := i64(value)
    args[0] = unsafe{voidptr(&i64_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeCubemap) get_source() VisualShaderNodeCubemapSource {
    mut object_out := i64(VisualShaderNodeCubemapSource.source_texture)
    classname := StringName.new("VisualShaderNodeCubemap")
    fnname := StringName.new("get_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2222048781)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeCubemapSource(object_out)}
}
pub fn (r &VisualShaderNodeCubemap) set_cube_map(value Cubemap) {
    classname := StringName.new("VisualShaderNodeCubemap")
    fnname := StringName.new("set_cube_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2219800736)
    mut args := unsafe { [1]voidptr{} }
    args[0] = value.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeCubemap) get_cube_map() Cubemap {
    mut object_out := Cubemap{}
    classname := StringName.new("VisualShaderNodeCubemap")
    fnname := StringName.new("get_cube_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1772111058)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisualShaderNodeCubemap) set_texture_type(value VisualShaderNodeCubemapTextureType) {
    classname := StringName.new("VisualShaderNodeCubemap")
    fnname := StringName.new("set_texture_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1899718876)
    mut args := unsafe { [1]voidptr{} }
    i64_value := i64(value)
    args[0] = unsafe{voidptr(&i64_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeCubemap) get_texture_type() VisualShaderNodeCubemapTextureType {
    mut object_out := i64(VisualShaderNodeCubemapTextureType.type_data)
    classname := StringName.new("VisualShaderNodeCubemap")
    fnname := StringName.new("get_texture_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3356498888)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeCubemapTextureType(object_out)}
}

pub enum VisualShaderNodeCubemapSource {
    source_texture = 0
    source_port = 1
    source_max = 2
}

pub enum VisualShaderNodeCubemapTextureType {
    type_data = 0
    type_color = 1
    type_normal_map = 2
    type_max = 3
}

pub type VisualShaderNodeCubemap = voidptr

pub fn (mut r VisualShaderNodeCubemap) set_source(value VisualShaderNodeCubemapSource) {
    classname := StringName.new("VisualShaderNodeCubemap")
    defer { classname.deinit() }
    fnname := StringName.new("set_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1625400621)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeCubemap) get_source() VisualShaderNodeCubemapSource {
    mut object_out := VisualShaderNodeCubemapSource.source_texture
    classname := StringName.new("VisualShaderNodeCubemap")
    defer { classname.deinit() }
    fnname := StringName.new("get_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2222048781)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeCubemap) set_cube_map(value Cubemap) {
    classname := StringName.new("VisualShaderNodeCubemap")
    defer { classname.deinit() }
    fnname := StringName.new("set_cube_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2219800736)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeCubemap) get_cube_map() Cubemap {
    mut object_out := Cubemap(unsafe{nil})
    classname := StringName.new("VisualShaderNodeCubemap")
    defer { classname.deinit() }
    fnname := StringName.new("get_cube_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1772111058)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeCubemap) set_texture_type(value VisualShaderNodeCubemapTextureType) {
    classname := StringName.new("VisualShaderNodeCubemap")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1899718876)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeCubemap) get_texture_type() VisualShaderNodeCubemapTextureType {
    mut object_out := VisualShaderNodeCubemapTextureType.type_data
    classname := StringName.new("VisualShaderNodeCubemap")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3356498888)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

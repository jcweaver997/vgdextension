pub enum VisualShaderNodeSample3DSource {
    source_texture = 0
    source_port = 1
    source_max = 2
}

pub type VisualShaderNodeSample3D = voidptr

pub fn (mut r VisualShaderNodeSample3D) set_source(value VisualShaderNodeSample3DSource) {
    classname := StringName.new("VisualShaderNodeSample3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3315130991)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeSample3D) get_source() VisualShaderNodeSample3DSource {
    mut object_out := VisualShaderNodeSample3DSource.source_texture
    classname := StringName.new("VisualShaderNodeSample3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1079494121)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

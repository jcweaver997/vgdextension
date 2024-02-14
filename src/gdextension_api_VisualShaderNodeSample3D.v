module vgdextension

pub enum VisualShaderNodeSample3DSource as i64 {
    source_texture = 0
    source_port = 1
    source_max = 2
}

@[noinit]
pub struct VisualShaderNodeSample3D {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeSample3D) set_source(value VisualShaderNodeSample3DSource) {
    classname := StringName.new("VisualShaderNodeSample3D")
    fnname := StringName.new("set_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3315130991)
    mut args := unsafe { [1]voidptr{} }
    i64_value := i64(value)
    args[0] = unsafe{voidptr(&i64_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeSample3D) get_source() VisualShaderNodeSample3DSource {
    mut object_out := i64(VisualShaderNodeSample3DSource.source_texture)
    classname := StringName.new("VisualShaderNodeSample3D")
    fnname := StringName.new("get_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1079494121)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeSample3DSource(object_out)}
}

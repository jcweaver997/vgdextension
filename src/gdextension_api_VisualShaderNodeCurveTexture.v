module vgdextension

@[noinit]
pub struct VisualShaderNodeCurveTexture {
    VisualShaderNodeResizableBase
}

pub fn (mut r VisualShaderNodeCurveTexture) set_texture(texture CurveTexture) {
    classname := StringName.new("VisualShaderNodeCurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 181872837)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeCurveTexture) get_texture() CurveTexture {
    mut object_out := CurveTexture{}
    classname := StringName.new("VisualShaderNodeCurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2800800579)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

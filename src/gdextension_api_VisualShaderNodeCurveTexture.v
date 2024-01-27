pub type VisualShaderNodeCurveTexture = voidptr

pub fn (mut r VisualShaderNodeCurveTexture) set_texture(texture CurveTexture) {
    classname := StringName.new("VisualShaderNodeCurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 181872837)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeCurveTexture) get_texture() CurveTexture {
    mut object_out := CurveTexture(unsafe{nil})
    classname := StringName.new("VisualShaderNodeCurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2800800579)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

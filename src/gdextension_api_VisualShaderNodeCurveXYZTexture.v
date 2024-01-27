module vgdextension

pub type VisualShaderNodeCurveXYZTexture = voidptr

pub fn (mut r VisualShaderNodeCurveXYZTexture) set_texture(texture CurveXYZTexture) {
    classname := StringName.new("VisualShaderNodeCurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 8031783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeCurveXYZTexture) get_texture() CurveXYZTexture {
    mut object_out := CurveXYZTexture(unsafe{nil})
    classname := StringName.new("VisualShaderNodeCurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1950275015)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

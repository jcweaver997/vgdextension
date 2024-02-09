module vgdextension

pub struct VisualShaderNodeCurveXYZTexture {
    VisualShaderNodeResizableBase
}

pub fn (mut r VisualShaderNodeCurveXYZTexture) set_texture(texture CurveXYZTexture) {
    classname := StringName.new("VisualShaderNodeCurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 8031783)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeCurveXYZTexture) get_texture() CurveXYZTexture {
    mut object_out := CurveXYZTexture{}
    classname := StringName.new("VisualShaderNodeCurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1950275015)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

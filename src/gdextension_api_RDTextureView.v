pub type RDTextureView = voidptr

pub fn (mut r RDTextureView) set_format_override(p_member RenderingDeviceDataFormat) {
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("set_format_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDTextureView) get_format_override() RenderingDeviceDataFormat {
    mut object_out := RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("get_format_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDTextureView) set_swizzle_r(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("set_swizzle_r")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDTextureView) get_swizzle_r() RenderingDeviceTextureSwizzle {
    mut object_out := RenderingDeviceTextureSwizzle.texture_swizzle_identity
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("get_swizzle_r")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDTextureView) set_swizzle_g(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("set_swizzle_g")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDTextureView) get_swizzle_g() RenderingDeviceTextureSwizzle {
    mut object_out := RenderingDeviceTextureSwizzle.texture_swizzle_identity
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("get_swizzle_g")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDTextureView) set_swizzle_b(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("set_swizzle_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDTextureView) get_swizzle_b() RenderingDeviceTextureSwizzle {
    mut object_out := RenderingDeviceTextureSwizzle.texture_swizzle_identity
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("get_swizzle_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDTextureView) set_swizzle_a(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("set_swizzle_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDTextureView) get_swizzle_a() RenderingDeviceTextureSwizzle {
    mut object_out := RenderingDeviceTextureSwizzle.texture_swizzle_identity
    classname := StringName.new("RDTextureView")
    defer { classname.deinit() }
    fnname := StringName.new("get_swizzle_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

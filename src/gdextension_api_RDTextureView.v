module vgdextension

@[noinit]
pub struct RDTextureView {
    RefCounted
}

pub fn (mut r RDTextureView) set_format_override(p_member RenderingDeviceDataFormat) {
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("set_format_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureView) get_format_override() RenderingDeviceDataFormat {
    mut object_out := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("get_format_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceDataFormat(object_out)}
}
pub fn (mut r RDTextureView) set_swizzle_r(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("set_swizzle_r")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureView) get_swizzle_r() RenderingDeviceTextureSwizzle {
    mut object_out := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("get_swizzle_r")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureSwizzle(object_out)}
}
pub fn (mut r RDTextureView) set_swizzle_g(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("set_swizzle_g")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureView) get_swizzle_g() RenderingDeviceTextureSwizzle {
    mut object_out := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("get_swizzle_g")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureSwizzle(object_out)}
}
pub fn (mut r RDTextureView) set_swizzle_b(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("set_swizzle_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureView) get_swizzle_b() RenderingDeviceTextureSwizzle {
    mut object_out := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("get_swizzle_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureSwizzle(object_out)}
}
pub fn (mut r RDTextureView) set_swizzle_a(p_member RenderingDeviceTextureSwizzle) {
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("set_swizzle_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3833362581)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureView) get_swizzle_a() RenderingDeviceTextureSwizzle {
    mut object_out := i64(RenderingDeviceTextureSwizzle.texture_swizzle_identity)
    classname := StringName.new("RDTextureView")
    fnname := StringName.new("get_swizzle_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150792614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureSwizzle(object_out)}
}

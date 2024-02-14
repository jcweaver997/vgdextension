module vgdextension

@[noinit]
pub struct RenderSceneBuffersRD {
    RenderSceneBuffers
}

pub fn (r &RenderSceneBuffersRD) has_texture(context StringName, name StringName) bool {
    mut object_out := false
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("has_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) create_texture(context StringName, name StringName, data_format RenderingDeviceDataFormat, usage_bits u32, texture_samples RenderingDeviceTextureSamples, size Vector2i, layers u32, mipmaps u32, unique bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("create_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3559915770)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    i64_data_format := i64(data_format)
    args[2] = unsafe{voidptr(&i64_data_format)}
    args[3] = unsafe{voidptr(&usage_bits)}
    i64_texture_samples := i64(texture_samples)
    args[4] = unsafe{voidptr(&i64_texture_samples)}
    args[5] = unsafe{voidptr(&size)}
    args[6] = unsafe{voidptr(&layers)}
    args[7] = unsafe{voidptr(&mipmaps)}
    args[8] = unsafe{voidptr(&unique)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) create_texture_from_format(context StringName, name StringName, format RDTextureFormat, view RDTextureView, unique bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("create_texture_from_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344669382)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = format.ptr
    args[3] = view.ptr
    args[4] = unsafe{voidptr(&unique)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) create_texture_view(context StringName, name StringName, view_name StringName, view RDTextureView) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("create_texture_view")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 283055834)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&view_name)}
    args[3] = view.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture(context StringName, name StringName) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 750006389)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture_format(context StringName, name StringName) RDTextureFormat {
    mut object_out := RDTextureFormat{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 371461758)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_texture_slice(context StringName, name StringName, layer u32, mipmap u32, layers u32, mipmaps u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_slice")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 588440706)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&mipmap)}
    args[4] = unsafe{voidptr(&layers)}
    args[5] = unsafe{voidptr(&mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_texture_slice_view(context StringName, name StringName, layer u32, mipmap u32, layers u32, mipmaps u32, view RDTextureView) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_slice_view")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 682451778)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&mipmap)}
    args[4] = unsafe{voidptr(&layers)}
    args[5] = unsafe{voidptr(&mipmaps)}
    args[6] = view.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_texture_slice_size(context StringName, name StringName, mipmap u32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_slice_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2617625368)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&mipmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) clear_context(context StringName) {
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("clear_context")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderSceneBuffersRD) get_color_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_color_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_color_layer(layer u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_color_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 937000113)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_depth_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_depth_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_depth_layer(layer u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_depth_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 937000113)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_velocity_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_velocity_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersRD) get_velocity_layer(layer u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_velocity_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 937000113)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_render_target() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_render_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_view_count() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_view_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_internal_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_internal_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_use_taa() bool {
    mut object_out := false
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_use_taa")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

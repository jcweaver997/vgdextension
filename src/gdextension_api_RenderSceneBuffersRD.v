module vgdextension

@[noinit]
pub struct RenderSceneBuffersRD {
    RenderSceneBuffers
}

pub fn (r &RenderSceneBuffersRD) has_texture(context string, name string) bool {
    mut object_out := false
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("has_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) create_texture(context string, name string, data_format RenderingDeviceDataFormat, usage_bits u32, texture_samples RenderingDeviceTextureSamples, size Vector2i, layers u32, mipmaps u32, unique bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("create_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3559915770)
    mut args := unsafe { [9]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
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
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) create_texture_from_format(context string, name string, format RDTextureFormat, view RDTextureView, unique bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("create_texture_from_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344669382)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = format.ptr
    args[3] = view.ptr
    args[4] = unsafe{voidptr(&unique)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) create_texture_view(context string, name string, view_name string, view RDTextureView) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("create_texture_view")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 283055834)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(view_name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = view.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture(context string, name string) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 750006389)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture_format(context string, name string) RDTextureFormat {
    mut object_out := RDTextureFormat{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 371461758)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture_slice(context string, name string, layer u32, mipmap u32, layers u32, mipmaps u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_slice")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 588440706)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&mipmap)}
    args[4] = unsafe{voidptr(&layers)}
    args[5] = unsafe{voidptr(&mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture_slice_view(context string, name string, layer u32, mipmap u32, layers u32, mipmaps u32, view RDTextureView) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_slice_view")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 682451778)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&mipmap)}
    args[4] = unsafe{voidptr(&layers)}
    args[5] = unsafe{voidptr(&mipmaps)}
    args[6] = view.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_texture_slice_size(context string, name string, mipmap u32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_texture_slice_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2617625368)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&mipmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) clear_context(context string) {
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("clear_context")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(context)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersRD) get_color_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_color_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_color_layer(layer u32) RID {
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
pub fn (r &RenderSceneBuffersRD) get_depth_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_depth_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_depth_layer(layer u32) RID {
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
pub fn (r &RenderSceneBuffersRD) get_velocity_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersRD")
    fnname := StringName.new("get_velocity_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderSceneBuffersRD) get_velocity_layer(layer u32) RID {
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

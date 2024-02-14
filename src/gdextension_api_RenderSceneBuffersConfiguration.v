module vgdextension

@[noinit]
pub struct RenderSceneBuffersConfiguration {
    RefCounted
}

pub fn (r &RenderSceneBuffersConfiguration) get_render_target() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_render_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersConfiguration) set_render_target(render_target RID) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_render_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&render_target)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_internal_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_internal_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersConfiguration) set_internal_size(internal_size Vector2i) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_internal_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&internal_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_target_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_target_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersConfiguration) set_target_size(target_size Vector2i) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_target_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&target_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_view_count() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_view_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersConfiguration) set_view_count(view_count u32) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_view_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&view_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_scaling_3d_mode() RenderingServerViewportScaling3DMode {
    mut object_out := i64(RenderingServerViewportScaling3DMode.viewport_scaling_3d_mode_bilinear)
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_scaling_3d_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 976778074)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingServerViewportScaling3DMode(object_out)}
}
pub fn (mut r RenderSceneBuffersConfiguration) set_scaling_3d_mode(scaling_3d_mode RenderingServerViewportScaling3DMode) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_scaling_3d_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 447477857)
    mut args := unsafe { [1]voidptr{} }
    i64_scaling_3d_mode := i64(scaling_3d_mode)
    args[0] = unsafe{voidptr(&i64_scaling_3d_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_msaa_3d() RenderingServerViewportMSAA {
    mut object_out := i64(RenderingServerViewportMSAA.viewport_msaa_disabled)
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_msaa_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3109158617)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingServerViewportMSAA(object_out)}
}
pub fn (mut r RenderSceneBuffersConfiguration) set_msaa_3d(msaa_3d RenderingServerViewportMSAA) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_msaa_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3952630748)
    mut args := unsafe { [1]voidptr{} }
    i64_msaa_3d := i64(msaa_3d)
    args[0] = unsafe{voidptr(&i64_msaa_3d)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_screen_space_aa() RenderingServerViewportScreenSpaceAA {
    mut object_out := i64(RenderingServerViewportScreenSpaceAA.viewport_screen_space_aa_disabled)
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_screen_space_aa")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 641513172)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingServerViewportScreenSpaceAA(object_out)}
}
pub fn (mut r RenderSceneBuffersConfiguration) set_screen_space_aa(screen_space_aa RenderingServerViewportScreenSpaceAA) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_screen_space_aa")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 139543108)
    mut args := unsafe { [1]voidptr{} }
    i64_screen_space_aa := i64(screen_space_aa)
    args[0] = unsafe{voidptr(&i64_screen_space_aa)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_fsr_sharpness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_fsr_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersConfiguration) set_fsr_sharpness(fsr_sharpness f64) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_fsr_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fsr_sharpness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderSceneBuffersConfiguration) get_texture_mipmap_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("get_texture_mipmap_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderSceneBuffersConfiguration) set_texture_mipmap_bias(texture_mipmap_bias f64) {
    classname := StringName.new("RenderSceneBuffersConfiguration")
    fnname := StringName.new("set_texture_mipmap_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_mipmap_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

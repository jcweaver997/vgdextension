module vgdextension

@[noinit]
pub struct RDPipelineRasterizationState {
    RefCounted
}

pub fn (mut r RDPipelineRasterizationState) set_enable_depth_clamp(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_enable_depth_clamp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_enable_depth_clamp() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_enable_depth_clamp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_discard_primitives(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_discard_primitives")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_discard_primitives() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_discard_primitives")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_wireframe(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_wireframe")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_wireframe() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_wireframe")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_cull_mode(p_member RenderingDevicePolygonCullMode) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_cull_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662586502)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_cull_mode() RenderingDevicePolygonCullMode {
    mut object_out := i64(RenderingDevicePolygonCullMode.polygon_cull_disabled)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_cull_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2192484313)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDevicePolygonCullMode(object_out)}
}
pub fn (mut r RDPipelineRasterizationState) set_front_face(p_member RenderingDevicePolygonFrontFace) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_front_face")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637251213)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_front_face() RenderingDevicePolygonFrontFace {
    mut object_out := i64(RenderingDevicePolygonFrontFace.polygon_front_face_clockwise)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_front_face")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 708793786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDevicePolygonFrontFace(object_out)}
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_enabled(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_depth_bias_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_enabled() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_depth_bias_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_constant_factor(p_member f64) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_depth_bias_constant_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_constant_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_depth_bias_constant_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_clamp(p_member f64) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_depth_bias_clamp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_clamp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_depth_bias_clamp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_slope_factor(p_member f64) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_depth_bias_slope_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_slope_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_depth_bias_slope_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_line_width(p_member f64) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_line_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_line_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_line_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_patch_control_points(p_member u32) {
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("set_patch_control_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineRasterizationState) get_patch_control_points() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDPipelineRasterizationState")
    fnname := StringName.new("get_patch_control_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

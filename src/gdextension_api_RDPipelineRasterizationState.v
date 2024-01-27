pub type RDPipelineRasterizationState = voidptr

pub fn (mut r RDPipelineRasterizationState) set_enable_depth_clamp(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_depth_clamp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_enable_depth_clamp() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_depth_clamp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_discard_primitives(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_discard_primitives")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_discard_primitives() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_discard_primitives")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_wireframe(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_wireframe")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_wireframe() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_wireframe")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_cull_mode(p_member RenderingDevicePolygonCullMode) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662586502)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_cull_mode() RenderingDevicePolygonCullMode {
    mut object_out := RenderingDevicePolygonCullMode.polygon_cull_disabled
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2192484313)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_front_face(p_member RenderingDevicePolygonFrontFace) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_face")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637251213)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_front_face() RenderingDevicePolygonFrontFace {
    mut object_out := RenderingDevicePolygonFrontFace.polygon_front_face_clockwise
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_face")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 708793786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_enabled(p_member bool) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_bias_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_enabled() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_bias_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_constant_factor(p_member f32) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_bias_constant_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_constant_factor() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_bias_constant_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_clamp(p_member f32) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_bias_clamp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_clamp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_bias_clamp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_depth_bias_slope_factor(p_member f32) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_bias_slope_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_depth_bias_slope_factor() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_bias_slope_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_line_width(p_member f32) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_line_width() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineRasterizationState) set_patch_control_points(p_member i32) {
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("set_patch_control_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineRasterizationState) get_patch_control_points() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineRasterizationState")
    defer { classname.deinit() }
    fnname := StringName.new("get_patch_control_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

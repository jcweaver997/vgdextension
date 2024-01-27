module vgdextension

pub type RDPipelineDepthStencilState = voidptr

pub fn (mut r RDPipelineDepthStencilState) set_enable_depth_test(p_member bool) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_depth_test")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_enable_depth_test() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_depth_test")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_enable_depth_write(p_member bool) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_depth_write")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_enable_depth_write() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_depth_write")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_depth_compare_operator(p_member RenderingDeviceCompareOperator) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_compare_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2573711505)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_depth_compare_operator() RenderingDeviceCompareOperator {
    mut object_out := RenderingDeviceCompareOperator.compare_op_never
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_compare_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 269730778)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_enable_depth_range(p_member bool) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_depth_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_enable_depth_range() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_depth_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_depth_range_min(p_member f32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_range_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_depth_range_min() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_range_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_depth_range_max(p_member f32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_range_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_depth_range_max() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_range_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_enable_stencil(p_member bool) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_stencil")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_enable_stencil() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_stencil")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_fail(p_member RenderingDeviceStencilOperation) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2092799566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_fail() RenderingDeviceStencilOperation {
    mut object_out := RenderingDeviceStencilOperation.stencil_op_keep
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714732389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_pass(p_member RenderingDeviceStencilOperation) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2092799566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_pass() RenderingDeviceStencilOperation {
    mut object_out := RenderingDeviceStencilOperation.stencil_op_keep
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714732389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_depth_fail(p_member RenderingDeviceStencilOperation) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_depth_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2092799566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_depth_fail() RenderingDeviceStencilOperation {
    mut object_out := RenderingDeviceStencilOperation.stencil_op_keep
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_depth_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714732389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_compare(p_member RenderingDeviceCompareOperator) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_compare")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2573711505)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_compare() RenderingDeviceCompareOperator {
    mut object_out := RenderingDeviceCompareOperator.compare_op_never
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_compare")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 269730778)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_compare_mask(p_member i32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_compare_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_compare_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_compare_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_write_mask(p_member i32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_write_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_write_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_write_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_front_op_reference(p_member i32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_front_op_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_front_op_reference() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_front_op_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_fail(p_member RenderingDeviceStencilOperation) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2092799566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_fail() RenderingDeviceStencilOperation {
    mut object_out := RenderingDeviceStencilOperation.stencil_op_keep
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714732389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_pass(p_member RenderingDeviceStencilOperation) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2092799566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_pass() RenderingDeviceStencilOperation {
    mut object_out := RenderingDeviceStencilOperation.stencil_op_keep
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714732389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_depth_fail(p_member RenderingDeviceStencilOperation) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_depth_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2092799566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_depth_fail() RenderingDeviceStencilOperation {
    mut object_out := RenderingDeviceStencilOperation.stencil_op_keep
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_depth_fail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1714732389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_compare(p_member RenderingDeviceCompareOperator) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_compare")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2573711505)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_compare() RenderingDeviceCompareOperator {
    mut object_out := RenderingDeviceCompareOperator.compare_op_never
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_compare")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 269730778)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_compare_mask(p_member i32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_compare_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_compare_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_compare_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_write_mask(p_member i32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_write_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_write_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_write_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineDepthStencilState) set_back_op_reference(p_member i32) {
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("set_back_op_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineDepthStencilState) get_back_op_reference() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineDepthStencilState")
    defer { classname.deinit() }
    fnname := StringName.new("get_back_op_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

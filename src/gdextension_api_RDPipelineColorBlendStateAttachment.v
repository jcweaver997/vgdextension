module vgdextension

@[noinit]
pub struct RDPipelineColorBlendStateAttachment {
    RefCounted
}

pub fn (mut r RDPipelineColorBlendStateAttachment) set_as_mix() {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_enable_blend(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_blend")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_enable_blend() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_blend")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_src_color_blend_factor(p_member RenderingDeviceBlendFactor) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_src_color_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_src_color_blend_factor() RenderingDeviceBlendFactor {
    mut object_out := RenderingDeviceBlendFactor.blend_factor_zero
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_src_color_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_dst_color_blend_factor(p_member RenderingDeviceBlendFactor) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_dst_color_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_dst_color_blend_factor() RenderingDeviceBlendFactor {
    mut object_out := RenderingDeviceBlendFactor.blend_factor_zero
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_dst_color_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_color_blend_op(p_member RenderingDeviceBlendOperation) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_blend_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3073022720)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_color_blend_op() RenderingDeviceBlendOperation {
    mut object_out := RenderingDeviceBlendOperation.blend_op_add
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_blend_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385093561)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_src_alpha_blend_factor(p_member RenderingDeviceBlendFactor) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_src_alpha_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_src_alpha_blend_factor() RenderingDeviceBlendFactor {
    mut object_out := RenderingDeviceBlendFactor.blend_factor_zero
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_src_alpha_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_dst_alpha_blend_factor(p_member RenderingDeviceBlendFactor) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_dst_alpha_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251019273)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_dst_alpha_blend_factor() RenderingDeviceBlendFactor {
    mut object_out := RenderingDeviceBlendFactor.blend_factor_zero
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_dst_alpha_blend_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3691288359)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_alpha_blend_op(p_member RenderingDeviceBlendOperation) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_blend_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3073022720)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_alpha_blend_op() RenderingDeviceBlendOperation {
    mut object_out := RenderingDeviceBlendOperation.blend_op_add
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_blend_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385093561)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_write_r(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_write_r")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_write_r() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_write_r")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_write_g(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_write_g")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_write_g() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_write_g")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_write_b(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_write_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_write_b() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_write_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendStateAttachment) set_write_a(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("set_write_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDPipelineColorBlendStateAttachment) get_write_a() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendStateAttachment")
    defer { classname.deinit() }
    fnname := StringName.new("get_write_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

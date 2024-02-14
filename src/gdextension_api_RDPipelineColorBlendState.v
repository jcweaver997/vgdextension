module vgdextension

@[noinit]
pub struct RDPipelineColorBlendState {
    RefCounted
}

pub fn (mut r RDPipelineColorBlendState) set_enable_logic_op(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("set_enable_logic_op")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineColorBlendState) get_enable_logic_op() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("get_enable_logic_op")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineColorBlendState) set_logic_op(p_member RenderingDeviceLogicOperation) {
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("set_logic_op")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3610841058)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineColorBlendState) get_logic_op() RenderingDeviceLogicOperation {
    mut object_out := i64(RenderingDeviceLogicOperation.logic_op_clear)
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("get_logic_op")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 988254690)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceLogicOperation(object_out)}
}
pub fn (mut r RDPipelineColorBlendState) set_blend_constant(p_member Color) {
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("set_blend_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineColorBlendState) get_blend_constant() Color {
    mut object_out := Color{}
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("get_blend_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineColorBlendState) set_attachments(attachments Array) {
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("set_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&attachments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineColorBlendState) get_attachments() Array {
    mut object_out := Array{}
    classname := StringName.new("RDPipelineColorBlendState")
    fnname := StringName.new("get_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

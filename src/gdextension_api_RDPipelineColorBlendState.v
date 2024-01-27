pub type RDPipelineColorBlendState = voidptr

pub fn (mut r RDPipelineColorBlendState) set_enable_logic_op(p_member bool) {
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_logic_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineColorBlendState) get_enable_logic_op() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_logic_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendState) set_logic_op(p_member RenderingDeviceLogicOperation) {
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("set_logic_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3610841058)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineColorBlendState) get_logic_op() RenderingDeviceLogicOperation {
    mut object_out := RenderingDeviceLogicOperation.logic_op_clear
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("get_logic_op")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 988254690)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendState) set_blend_constant(p_member Color) {
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineColorBlendState) get_blend_constant() Color {
    mut object_out := Color{}
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineColorBlendState) set_attachments(attachments Array) {
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("set_attachments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineColorBlendState) get_attachments() Array {
    mut object_out := Array{}
    classname := StringName.new("RDPipelineColorBlendState")
    defer { classname.deinit() }
    fnname := StringName.new("get_attachments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

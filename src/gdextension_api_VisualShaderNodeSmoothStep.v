module vgdextension

pub enum VisualShaderNodeSmoothStepOpType {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_2d_scalar = 2
    op_type_vector_3d = 3
    op_type_vector_3d_scalar = 4
    op_type_vector_4d = 5
    op_type_vector_4d_scalar = 6
    op_type_max = 7
}

pub type VisualShaderNodeSmoothStep = voidptr

pub fn (mut r VisualShaderNodeSmoothStep) set_op_type(op_type VisualShaderNodeSmoothStepOpType) {
    classname := StringName.new("VisualShaderNodeSmoothStep")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2427426148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeSmoothStep) get_op_type() VisualShaderNodeSmoothStepOpType {
    mut object_out := VisualShaderNodeSmoothStepOpType.op_type_scalar
    classname := StringName.new("VisualShaderNodeSmoothStep")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 359640855)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

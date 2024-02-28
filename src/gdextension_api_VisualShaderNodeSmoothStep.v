module vgdextension

pub enum VisualShaderNodeSmoothStepOpType as i64 {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_2d_scalar = 2
    op_type_vector_3d = 3
    op_type_vector_3d_scalar = 4
    op_type_vector_4d = 5
    op_type_vector_4d_scalar = 6
    op_type_max = 7
}

@[noinit]
pub struct VisualShaderNodeSmoothStep {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeSmoothStep) set_op_type(op_type VisualShaderNodeSmoothStepOpType) {
    classname := StringName.new("VisualShaderNodeSmoothStep")
    fnname := StringName.new("set_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2427426148)
    mut args := unsafe { [1]voidptr{} }
    i64_op_type := i64(op_type)
    args[0] = unsafe{voidptr(&i64_op_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeSmoothStep) get_op_type() VisualShaderNodeSmoothStepOpType {
    mut object_out := i64(VisualShaderNodeSmoothStepOpType.op_type_scalar)
    classname := StringName.new("VisualShaderNodeSmoothStep")
    fnname := StringName.new("get_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 359640855)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeSmoothStepOpType(object_out)}
}

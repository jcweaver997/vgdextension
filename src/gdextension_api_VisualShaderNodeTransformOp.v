module vgdextension

pub enum VisualShaderNodeTransformOpOperator as i64 {
    op_axb = 0
    op_bxa = 1
    op_axb_comp = 2
    op_bxa_comp = 3
    op_add = 4
    op_a_minus_b = 5
    op_b_minus_a = 6
    op_a_div_b = 7
    op_b_div_a = 8
    op_max = 9
}

@[noinit]
pub struct VisualShaderNodeTransformOp {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeTransformOp) set_operator(op VisualShaderNodeTransformOpOperator) {
    classname := StringName.new("VisualShaderNodeTransformOp")
    fnname := StringName.new("set_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2287310733)
    mut args := unsafe { [1]voidptr{} }
    i64_op := i64(op)
    args[0] = unsafe{voidptr(&i64_op)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTransformOp) get_operator() VisualShaderNodeTransformOpOperator {
    mut object_out := i64(VisualShaderNodeTransformOpOperator.op_axb)
    classname := StringName.new("VisualShaderNodeTransformOp")
    fnname := StringName.new("get_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1238663601)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeTransformOpOperator(object_out)}
}

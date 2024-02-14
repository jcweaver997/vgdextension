module vgdextension

pub enum VisualShaderNodeTransformVecMultOperator as i64 {
    op_axb = 0
    op_bxa = 1
    op_3x3_axb = 2
    op_3x3_bxa = 3
    op_max = 4
}

@[noinit]
pub struct VisualShaderNodeTransformVecMult {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeTransformVecMult) set_operator(op VisualShaderNodeTransformVecMultOperator) {
    classname := StringName.new("VisualShaderNodeTransformVecMult")
    fnname := StringName.new("set_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1785665912)
    mut args := unsafe { [1]voidptr{} }
    i64_op := i64(op)
    args[0] = unsafe{voidptr(&i64_op)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTransformVecMult) get_operator() VisualShaderNodeTransformVecMultOperator {
    mut object_out := i64(VisualShaderNodeTransformVecMultOperator.op_axb)
    classname := StringName.new("VisualShaderNodeTransformVecMult")
    fnname := StringName.new("get_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622088722)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeTransformVecMultOperator(object_out)}
}

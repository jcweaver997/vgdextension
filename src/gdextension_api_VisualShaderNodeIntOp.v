module vgdextension

pub enum VisualShaderNodeIntOpOperator as i64 {
    op_add = 0
    op_sub = 1
    op_mul = 2
    op_div = 3
    op_mod = 4
    op_max = 5
    op_min = 6
    op_bitwise_and = 7
    op_bitwise_or = 8
    op_bitwise_xor = 9
    op_bitwise_left_shift = 10
    op_bitwise_right_shift = 11
    op_enum_size = 12
}

@[noinit]
pub struct VisualShaderNodeIntOp {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeIntOp) set_operator(op VisualShaderNodeIntOpOperator) {
    classname := StringName.new("VisualShaderNodeIntOp")
    fnname := StringName.new("set_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1677909323)
    mut args := unsafe { [1]voidptr{} }
    i64_op := i64(op)
    args[0] = unsafe{voidptr(&i64_op)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntOp) get_operator() VisualShaderNodeIntOpOperator {
    mut object_out := i64(VisualShaderNodeIntOpOperator.op_add)
    classname := StringName.new("VisualShaderNodeIntOp")
    fnname := StringName.new("get_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1236987913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeIntOpOperator(object_out)}
}

pub enum VisualShaderNodeIntOpOperator {
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

pub type VisualShaderNodeIntOp = voidptr

pub fn (mut r VisualShaderNodeIntOp) set_operator(op VisualShaderNodeIntOpOperator) {
    classname := StringName.new("VisualShaderNodeIntOp")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1677909323)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntOp) get_operator() VisualShaderNodeIntOpOperator {
    mut object_out := VisualShaderNodeIntOpOperator.op_add
    classname := StringName.new("VisualShaderNodeIntOp")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1236987913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

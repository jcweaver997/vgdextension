module vgdextension

pub enum VisualShaderNodeUIntOpOperator {
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

pub struct VisualShaderNodeUIntOp {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeUIntOp) set_operator(op VisualShaderNodeUIntOpOperator) {
    classname := StringName.new("VisualShaderNodeUIntOp")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3463048345)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&op)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeUIntOp) get_operator() VisualShaderNodeUIntOpOperator {
    mut object_out := VisualShaderNodeUIntOpOperator.op_add
    classname := StringName.new("VisualShaderNodeUIntOp")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 256631461)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

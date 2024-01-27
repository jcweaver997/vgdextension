module vgdextension

pub enum VisualShaderNodeVectorOpOperator {
    op_add = 0
    op_sub = 1
    op_mul = 2
    op_div = 3
    op_mod = 4
    op_pow = 5
    op_max = 6
    op_min = 7
    op_cross = 8
    op_atan2 = 9
    op_reflect = 10
    op_step = 11
    op_enum_size = 12
}

pub type VisualShaderNodeVectorOp = voidptr

pub fn (mut r VisualShaderNodeVectorOp) set_operator(op VisualShaderNodeVectorOpOperator) {
    classname := StringName.new("VisualShaderNodeVectorOp")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3371507302)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVectorOp) get_operator() VisualShaderNodeVectorOpOperator {
    mut object_out := VisualShaderNodeVectorOpOperator.op_add
    classname := StringName.new("VisualShaderNodeVectorOp")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 11793929)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

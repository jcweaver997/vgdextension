pub enum VisualShaderNodeFloatOpOperator {
    op_add = 0
    op_sub = 1
    op_mul = 2
    op_div = 3
    op_mod = 4
    op_pow = 5
    op_max = 6
    op_min = 7
    op_atan2 = 8
    op_step = 9
    op_enum_size = 10
}

pub type VisualShaderNodeFloatOp = voidptr

pub fn (mut r VisualShaderNodeFloatOp) set_operator(op VisualShaderNodeFloatOpOperator) {
    classname := StringName.new("VisualShaderNodeFloatOp")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488468047)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatOp) get_operator() VisualShaderNodeFloatOpOperator {
    mut object_out := VisualShaderNodeFloatOpOperator.op_add
    classname := StringName.new("VisualShaderNodeFloatOp")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1867979390)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

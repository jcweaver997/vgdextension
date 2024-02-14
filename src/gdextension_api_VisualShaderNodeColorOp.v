module vgdextension

pub enum VisualShaderNodeColorOpOperator as i64 {
    op_screen = 0
    op_difference = 1
    op_darken = 2
    op_lighten = 3
    op_overlay = 4
    op_dodge = 5
    op_burn = 6
    op_soft_light = 7
    op_hard_light = 8
    op_max = 9
}

@[noinit]
pub struct VisualShaderNodeColorOp {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeColorOp) set_operator(op VisualShaderNodeColorOpOperator) {
    classname := StringName.new("VisualShaderNodeColorOp")
    fnname := StringName.new("set_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4260370673)
    mut args := unsafe { [1]voidptr{} }
    i64_op := i64(op)
    args[0] = unsafe{voidptr(&i64_op)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeColorOp) get_operator() VisualShaderNodeColorOpOperator {
    mut object_out := i64(VisualShaderNodeColorOpOperator.op_screen)
    classname := StringName.new("VisualShaderNodeColorOp")
    fnname := StringName.new("get_operator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1950956529)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeColorOpOperator(object_out)}
}

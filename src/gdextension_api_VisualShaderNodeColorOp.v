module vgdextension

pub enum VisualShaderNodeColorOpOperator {
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

pub type VisualShaderNodeColorOp = voidptr

pub fn (mut r VisualShaderNodeColorOp) set_operator(op VisualShaderNodeColorOpOperator) {
    classname := StringName.new("VisualShaderNodeColorOp")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4260370673)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeColorOp) get_operator() VisualShaderNodeColorOpOperator {
    mut object_out := VisualShaderNodeColorOpOperator.op_screen
    classname := StringName.new("VisualShaderNodeColorOp")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1950956529)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

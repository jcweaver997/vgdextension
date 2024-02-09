module vgdextension

pub enum VisualShaderNodeTransformOpOperator {
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

pub struct VisualShaderNodeTransformOp {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeTransformOp) set_operator(op VisualShaderNodeTransformOpOperator) {
    classname := StringName.new("VisualShaderNodeTransformOp")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2287310733)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&op)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTransformOp) get_operator() VisualShaderNodeTransformOpOperator {
    mut object_out := VisualShaderNodeTransformOpOperator.op_axb
    classname := StringName.new("VisualShaderNodeTransformOp")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1238663601)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

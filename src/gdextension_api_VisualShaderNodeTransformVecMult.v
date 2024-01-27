module vgdextension

pub enum VisualShaderNodeTransformVecMultOperator {
    op_axb = 0
    op_bxa = 1
    op_3x3_axb = 2
    op_3x3_bxa = 3
    op_max = 4
}

pub type VisualShaderNodeTransformVecMult = voidptr

pub fn (mut r VisualShaderNodeTransformVecMult) set_operator(op VisualShaderNodeTransformVecMultOperator) {
    classname := StringName.new("VisualShaderNodeTransformVecMult")
    defer { classname.deinit() }
    fnname := StringName.new("set_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1785665912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeTransformVecMult) get_operator() VisualShaderNodeTransformVecMultOperator {
    mut object_out := VisualShaderNodeTransformVecMultOperator.op_axb
    classname := StringName.new("VisualShaderNodeTransformVecMult")
    defer { classname.deinit() }
    fnname := StringName.new("get_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622088722)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

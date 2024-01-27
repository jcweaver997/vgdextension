pub enum VisualShaderNodeStepOpType {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_2d_scalar = 2
    op_type_vector_3d = 3
    op_type_vector_3d_scalar = 4
    op_type_vector_4d = 5
    op_type_vector_4d_scalar = 6
    op_type_max = 7
}

pub type VisualShaderNodeStep = voidptr

pub fn (mut r VisualShaderNodeStep) set_op_type(op_type VisualShaderNodeStepOpType) {
    classname := StringName.new("VisualShaderNodeStep")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 715172489)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeStep) get_op_type() VisualShaderNodeStepOpType {
    mut object_out := VisualShaderNodeStepOpType.op_type_scalar
    classname := StringName.new("VisualShaderNodeStep")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274022781)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

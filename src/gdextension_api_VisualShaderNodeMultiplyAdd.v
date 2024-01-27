pub enum VisualShaderNodeMultiplyAddOpType {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_3d = 2
    op_type_vector_4d = 3
    op_type_max = 4
}

pub type VisualShaderNodeMultiplyAdd = voidptr

pub fn (mut r VisualShaderNodeMultiplyAdd) set_op_type(type_name VisualShaderNodeMultiplyAddOpType) {
    classname := StringName.new("VisualShaderNodeMultiplyAdd")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1409862380)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeMultiplyAdd) get_op_type() VisualShaderNodeMultiplyAddOpType {
    mut object_out := VisualShaderNodeMultiplyAddOpType.op_type_scalar
    classname := StringName.new("VisualShaderNodeMultiplyAdd")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2823201991)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

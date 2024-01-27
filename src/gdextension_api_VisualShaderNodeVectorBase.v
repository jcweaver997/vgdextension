pub enum VisualShaderNodeVectorBaseOpType {
    op_type_vector_2d = 0
    op_type_vector_3d = 1
    op_type_vector_4d = 2
    op_type_max = 3
}

pub type VisualShaderNodeVectorBase = voidptr

pub fn (mut r VisualShaderNodeVectorBase) set_op_type(type_name VisualShaderNodeVectorBaseOpType) {
    classname := StringName.new("VisualShaderNodeVectorBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1692596998)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVectorBase) get_op_type() VisualShaderNodeVectorBaseOpType {
    mut object_out := VisualShaderNodeVectorBaseOpType.op_type_vector_2d
    classname := StringName.new("VisualShaderNodeVectorBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2568738462)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

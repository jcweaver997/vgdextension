module vgdextension

pub enum VisualShaderNodeClampOpType {
    op_type_float = 0
    op_type_int = 1
    op_type_uint = 2
    op_type_vector_2d = 3
    op_type_vector_3d = 4
    op_type_vector_4d = 5
    op_type_max = 6
}

pub type VisualShaderNodeClamp = voidptr

pub fn (mut r VisualShaderNodeClamp) set_op_type(op_type VisualShaderNodeClampOpType) {
    classname := StringName.new("VisualShaderNodeClamp")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 405010749)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeClamp) get_op_type() VisualShaderNodeClampOpType {
    mut object_out := VisualShaderNodeClampOpType.op_type_float
    classname := StringName.new("VisualShaderNodeClamp")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233276050)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

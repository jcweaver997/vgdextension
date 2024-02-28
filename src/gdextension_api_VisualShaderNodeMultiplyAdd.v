module vgdextension

pub enum VisualShaderNodeMultiplyAddOpType as i64 {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_3d = 2
    op_type_vector_4d = 3
    op_type_max = 4
}

@[noinit]
pub struct VisualShaderNodeMultiplyAdd {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeMultiplyAdd) set_op_type(type_name VisualShaderNodeMultiplyAddOpType) {
    classname := StringName.new("VisualShaderNodeMultiplyAdd")
    fnname := StringName.new("set_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1409862380)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeMultiplyAdd) get_op_type() VisualShaderNodeMultiplyAddOpType {
    mut object_out := i64(VisualShaderNodeMultiplyAddOpType.op_type_scalar)
    classname := StringName.new("VisualShaderNodeMultiplyAdd")
    fnname := StringName.new("get_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2823201991)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeMultiplyAddOpType(object_out)}
}

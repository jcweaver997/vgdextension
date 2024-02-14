module vgdextension

pub enum VisualShaderNodeVectorBaseOpType as i64 {
    op_type_vector_2d = 0
    op_type_vector_3d = 1
    op_type_vector_4d = 2
    op_type_max = 3
}

@[noinit]
pub struct VisualShaderNodeVectorBase {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeVectorBase) set_op_type(type_name VisualShaderNodeVectorBaseOpType) {
    classname := StringName.new("VisualShaderNodeVectorBase")
    fnname := StringName.new("set_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1692596998)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeVectorBase) get_op_type() VisualShaderNodeVectorBaseOpType {
    mut object_out := i64(VisualShaderNodeVectorBaseOpType.op_type_vector_2d)
    classname := StringName.new("VisualShaderNodeVectorBase")
    fnname := StringName.new("get_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2568738462)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeVectorBaseOpType(object_out)}
}

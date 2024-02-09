module vgdextension

pub enum VisualShaderNodeMixOpType {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_2d_scalar = 2
    op_type_vector_3d = 3
    op_type_vector_3d_scalar = 4
    op_type_vector_4d = 5
    op_type_vector_4d_scalar = 6
    op_type_max = 7
}

pub struct VisualShaderNodeMix {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeMix) set_op_type(op_type VisualShaderNodeMixOpType) {
    classname := StringName.new("VisualShaderNodeMix")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3397501671)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&op_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeMix) get_op_type() VisualShaderNodeMixOpType {
    mut object_out := VisualShaderNodeMixOpType.op_type_scalar
    classname := StringName.new("VisualShaderNodeMix")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4013957297)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

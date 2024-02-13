module vgdextension

pub enum VisualShaderNodeParticleRandomnessOpType {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_3d = 2
    op_type_vector_4d = 3
    op_type_max = 4
}

@[noinit]
pub struct VisualShaderNodeParticleRandomness {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeParticleRandomness) set_op_type(type_name VisualShaderNodeParticleRandomnessOpType) {
    classname := StringName.new("VisualShaderNodeParticleRandomness")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060089061)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleRandomness) get_op_type() VisualShaderNodeParticleRandomnessOpType {
    mut object_out := VisualShaderNodeParticleRandomnessOpType.op_type_scalar
    classname := StringName.new("VisualShaderNodeParticleRandomness")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3597061078)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

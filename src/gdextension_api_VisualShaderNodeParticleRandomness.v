module vgdextension

pub enum VisualShaderNodeParticleRandomnessOpType as i64 {
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
    fnname := StringName.new("set_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060089061)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleRandomness) get_op_type() VisualShaderNodeParticleRandomnessOpType {
    mut object_out := i64(VisualShaderNodeParticleRandomnessOpType.op_type_scalar)
    classname := StringName.new("VisualShaderNodeParticleRandomness")
    fnname := StringName.new("get_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3597061078)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeParticleRandomnessOpType(object_out)}
}

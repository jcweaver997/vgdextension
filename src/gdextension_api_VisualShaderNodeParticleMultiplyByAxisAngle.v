module vgdextension

@[noinit]
pub struct VisualShaderNodeParticleMultiplyByAxisAngle {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeParticleMultiplyByAxisAngle) set_degrees_mode(enabled bool) {
    classname := StringName.new("VisualShaderNodeParticleMultiplyByAxisAngle")
    fnname := StringName.new("set_degrees_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleMultiplyByAxisAngle) is_degrees_mode() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeParticleMultiplyByAxisAngle")
    fnname := StringName.new("is_degrees_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

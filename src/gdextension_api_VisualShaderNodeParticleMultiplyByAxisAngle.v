module vgdextension

@[noinit]
pub struct VisualShaderNodeParticleMultiplyByAxisAngle {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeParticleMultiplyByAxisAngle) set_degrees_mode(enabled bool) {
    classname := StringName.new("VisualShaderNodeParticleMultiplyByAxisAngle")
    defer { classname.deinit() }
    fnname := StringName.new("set_degrees_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleMultiplyByAxisAngle) is_degrees_mode() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeParticleMultiplyByAxisAngle")
    defer { classname.deinit() }
    fnname := StringName.new("is_degrees_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

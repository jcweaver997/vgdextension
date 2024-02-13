module vgdextension

@[noinit]
pub struct VisualShaderNodeParticleEmitter {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeParticleEmitter) set_mode_2d(enabled bool) {
    classname := StringName.new("VisualShaderNodeParticleEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleEmitter) is_mode_2d() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeParticleEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("is_mode_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

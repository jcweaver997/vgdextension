module vgdextension

pub enum VisualShaderNodeParticleEmitEmitFlags as i64 {
    emit_flag_position = 1
    emit_flag_rot_scale = 2
    emit_flag_velocity = 4
    emit_flag_color = 8
    emit_flag_custom = 16
}

@[noinit]
pub struct VisualShaderNodeParticleEmit {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeParticleEmit) set_flags(flags VisualShaderNodeParticleEmitEmitFlags) {
    classname := StringName.new("VisualShaderNodeParticleEmit")
    fnname := StringName.new("set_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3960756792)
    mut args := unsafe { [1]voidptr{} }
    i64_flags := i64(flags)
    args[0] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleEmit) get_flags() VisualShaderNodeParticleEmitEmitFlags {
    mut object_out := i64(VisualShaderNodeParticleEmitEmitFlags.emit_flag_position)
    classname := StringName.new("VisualShaderNodeParticleEmit")
    fnname := StringName.new("get_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 171277835)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeParticleEmitEmitFlags(object_out)}
}

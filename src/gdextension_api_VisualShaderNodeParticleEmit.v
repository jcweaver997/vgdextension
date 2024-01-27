module vgdextension

pub enum VisualShaderNodeParticleEmitEmitFlags {
    emit_flag_position = 1
    emit_flag_rot_scale = 2
    emit_flag_velocity = 4
    emit_flag_color = 8
    emit_flag_custom = 16
}

pub type VisualShaderNodeParticleEmit = voidptr

pub fn (mut r VisualShaderNodeParticleEmit) set_flags(flags VisualShaderNodeParticleEmitEmitFlags) {
    classname := StringName.new("VisualShaderNodeParticleEmit")
    defer { classname.deinit() }
    fnname := StringName.new("set_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3960756792)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleEmit) get_flags() VisualShaderNodeParticleEmitEmitFlags {
    mut object_out := VisualShaderNodeParticleEmitEmitFlags.emit_flag_position
    classname := StringName.new("VisualShaderNodeParticleEmit")
    defer { classname.deinit() }
    fnname := StringName.new("get_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 171277835)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

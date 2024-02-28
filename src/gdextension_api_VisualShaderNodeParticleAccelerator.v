module vgdextension

pub enum VisualShaderNodeParticleAcceleratorMode as i64 {
    mode_linear = 0
    mode_radial = 1
    mode_tangential = 2
    mode_max = 3
}

@[noinit]
pub struct VisualShaderNodeParticleAccelerator {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeParticleAccelerator) set_mode(mode VisualShaderNodeParticleAcceleratorMode) {
    classname := StringName.new("VisualShaderNodeParticleAccelerator")
    fnname := StringName.new("set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457585749)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleAccelerator) get_mode() VisualShaderNodeParticleAcceleratorMode {
    mut object_out := i64(VisualShaderNodeParticleAcceleratorMode.mode_linear)
    classname := StringName.new("VisualShaderNodeParticleAccelerator")
    fnname := StringName.new("get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660365633)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeParticleAcceleratorMode(object_out)}
}

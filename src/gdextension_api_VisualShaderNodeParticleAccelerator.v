module vgdextension

pub enum VisualShaderNodeParticleAcceleratorMode {
    mode_linear = 0
    mode_radial = 1
    mode_tangential = 2
    mode_max = 3
}

@[noinit]
pub struct VisualShaderNodeParticleAccelerator {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeParticleAccelerator) set_mode(mode VisualShaderNodeParticleAcceleratorMode) {
    classname := StringName.new("VisualShaderNodeParticleAccelerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457585749)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleAccelerator) get_mode() VisualShaderNodeParticleAcceleratorMode {
    mut object_out := VisualShaderNodeParticleAcceleratorMode.mode_linear
    classname := StringName.new("VisualShaderNodeParticleAccelerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660365633)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

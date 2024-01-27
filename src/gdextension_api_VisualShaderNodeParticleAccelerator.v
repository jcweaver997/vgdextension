pub enum VisualShaderNodeParticleAcceleratorMode {
    mode_linear = 0
    mode_radial = 1
    mode_tangential = 2
    mode_max = 3
}

pub type VisualShaderNodeParticleAccelerator = voidptr

pub fn (mut r VisualShaderNodeParticleAccelerator) set_mode(mode VisualShaderNodeParticleAcceleratorMode) {
    classname := StringName.new("VisualShaderNodeParticleAccelerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457585749)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleAccelerator) get_mode() VisualShaderNodeParticleAcceleratorMode {
    mut object_out := VisualShaderNodeParticleAcceleratorMode.mode_linear
    classname := StringName.new("VisualShaderNodeParticleAccelerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660365633)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

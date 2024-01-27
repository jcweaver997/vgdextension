pub type GPUParticlesAttractorSphere3D = voidptr

pub fn (mut r GPUParticlesAttractorSphere3D) set_radius(radius f32) {
    classname := StringName.new("GPUParticlesAttractorSphere3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesAttractorSphere3D) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticlesAttractorSphere3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

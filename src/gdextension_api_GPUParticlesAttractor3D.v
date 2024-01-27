pub type GPUParticlesAttractor3D = voidptr

pub fn (mut r GPUParticlesAttractor3D) set_cull_mask(mask i32) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesAttractor3D) set_strength(strength f32) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesAttractor3D) set_attenuation(attenuation f32) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_attenuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_attenuation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_attenuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesAttractor3D) set_directionality(amount f32) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_directionality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_directionality() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_directionality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

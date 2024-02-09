module vgdextension

pub struct GPUParticlesAttractor3D {
    VisualInstance3D
}

pub fn (mut r GPUParticlesAttractor3D) set_cull_mask(mask u32) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_cull_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesAttractor3D) set_strength(strength f64) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesAttractor3D) set_attenuation(attenuation f64) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_attenuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&attenuation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_attenuation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_attenuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesAttractor3D) set_directionality(amount f64) {
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_directionality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticlesAttractor3D) get_directionality() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticlesAttractor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_directionality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

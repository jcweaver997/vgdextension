pub type GPUParticlesCollision3D = voidptr

pub fn (mut r GPUParticlesCollision3D) set_cull_mask(mask i32) {
    classname := StringName.new("GPUParticlesCollision3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollision3D) get_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticlesCollision3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct GPUParticlesCollision3D {
    VisualInstance3D
}

pub fn (mut r GPUParticlesCollision3D) set_cull_mask(mask u32) {
    classname := StringName.new("GPUParticlesCollision3D")
    fnname := StringName.new("set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollision3D) get_cull_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("GPUParticlesCollision3D")
    fnname := StringName.new("get_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

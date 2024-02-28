module vgdextension

pub enum GPUParticlesCollisionSDF3DResolution as i64 {
    resolution_16 = 0
    resolution_32 = 1
    resolution_64 = 2
    resolution_128 = 3
    resolution_256 = 4
    resolution_512 = 5
    resolution_max = 6
}

@[noinit]
pub struct GPUParticlesCollisionSDF3D {
    GPUParticlesCollision3D
}

pub fn (r &GPUParticlesCollisionSDF3D) set_size(size Vector3) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionSDF3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GPUParticlesCollisionSDF3D) set_resolution(resolution GPUParticlesCollisionSDF3DResolution) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("set_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155629297)
    mut args := unsafe { [1]voidptr{} }
    i64_resolution := i64(resolution)
    args[0] = unsafe{voidptr(&i64_resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionSDF3D) get_resolution() GPUParticlesCollisionSDF3DResolution {
    mut object_out := i64(GPUParticlesCollisionSDF3DResolution.resolution_16)
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("get_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2919555867)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GPUParticlesCollisionSDF3DResolution(object_out)}
}
pub fn (r &GPUParticlesCollisionSDF3D) set_texture(texture Texture3D) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionSDF3D) get_texture() Texture3D {
    mut object_out := Texture3D{}
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GPUParticlesCollisionSDF3D) set_thickness(thickness f64) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("set_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&thickness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionSDF3D) get_thickness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("get_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GPUParticlesCollisionSDF3D) set_bake_mask(mask u32) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("set_bake_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionSDF3D) get_bake_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("get_bake_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GPUParticlesCollisionSDF3D) set_bake_mask_value(layer_number i32, value bool) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("set_bake_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionSDF3D) get_bake_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    fnname := StringName.new("get_bake_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

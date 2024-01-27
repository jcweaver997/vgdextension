module vgdextension

pub enum GPUParticlesCollisionSDF3DResolution {
    resolution_16 = 0
    resolution_32 = 1
    resolution_64 = 2
    resolution_128 = 3
    resolution_256 = 4
    resolution_512 = 5
    resolution_max = 6
}

pub type GPUParticlesCollisionSDF3D = voidptr

pub fn (mut r GPUParticlesCollisionSDF3D) set_size(size Vector3) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollisionSDF3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesCollisionSDF3D) set_resolution(resolution GPUParticlesCollisionSDF3DResolution) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155629297)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollisionSDF3D) get_resolution() GPUParticlesCollisionSDF3DResolution {
    mut object_out := GPUParticlesCollisionSDF3DResolution.resolution_16
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2919555867)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesCollisionSDF3D) set_texture(texture Texture3D) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollisionSDF3D) get_texture() Texture3D {
    mut object_out := Texture3D(unsafe{nil})
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesCollisionSDF3D) set_thickness(thickness f32) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollisionSDF3D) get_thickness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesCollisionSDF3D) set_bake_mask(mask i32) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollisionSDF3D) get_bake_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticlesCollisionSDF3D) set_bake_mask_value(layer_number i32, value bool) {
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticlesCollisionSDF3D) get_bake_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("GPUParticlesCollisionSDF3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

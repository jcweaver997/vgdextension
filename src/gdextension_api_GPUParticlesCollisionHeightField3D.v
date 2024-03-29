module vgdextension

pub enum GPUParticlesCollisionHeightField3DResolution as i64 {
    resolution_256 = 0
    resolution_512 = 1
    resolution_1024 = 2
    resolution_2048 = 3
    resolution_4096 = 4
    resolution_8192 = 5
    resolution_max = 6
}

pub enum GPUParticlesCollisionHeightField3DUpdateMode as i64 {
    update_mode_when_moved = 0
    update_mode_always = 1
}

@[noinit]
pub struct GPUParticlesCollisionHeightField3D {
    GPUParticlesCollision3D
}

pub fn (r &GPUParticlesCollisionHeightField3D) set_size(size Vector3) {
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionHeightField3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GPUParticlesCollisionHeightField3D) set_resolution(resolution GPUParticlesCollisionHeightField3DResolution) {
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("set_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1009996517)
    mut args := unsafe { [1]voidptr{} }
    i64_resolution := i64(resolution)
    args[0] = unsafe{voidptr(&i64_resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionHeightField3D) get_resolution() GPUParticlesCollisionHeightField3DResolution {
    mut object_out := i64(GPUParticlesCollisionHeightField3DResolution.resolution_256)
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("get_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1156065644)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GPUParticlesCollisionHeightField3DResolution(object_out)}
}
pub fn (r &GPUParticlesCollisionHeightField3D) set_update_mode(update_mode GPUParticlesCollisionHeightField3DUpdateMode) {
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("set_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 673680859)
    mut args := unsafe { [1]voidptr{} }
    i64_update_mode := i64(update_mode)
    args[0] = unsafe{voidptr(&i64_update_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionHeightField3D) get_update_mode() GPUParticlesCollisionHeightField3DUpdateMode {
    mut object_out := i64(GPUParticlesCollisionHeightField3DUpdateMode.update_mode_when_moved)
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("get_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1998141380)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GPUParticlesCollisionHeightField3DUpdateMode(object_out)}
}
pub fn (r &GPUParticlesCollisionHeightField3D) set_follow_camera_enabled(enabled bool) {
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("set_follow_camera_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GPUParticlesCollisionHeightField3D) is_follow_camera_enabled() bool {
    mut object_out := false
    classname := StringName.new("GPUParticlesCollisionHeightField3D")
    fnname := StringName.new("is_follow_camera_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

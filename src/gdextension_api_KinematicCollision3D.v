module vgdextension

@[noinit]
pub struct KinematicCollision3D {
    RefCounted
}

pub fn (r &KinematicCollision3D) get_travel() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_travel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_remainder() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_remainder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collision_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collision_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_position(collision_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_normal(collision_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_angle(collision_index i32, up_direction Vector3) f64 {
    mut object_out := f64(0)
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1242741860)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    args[1] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_local_shape(collision_index i32) Object {
    mut object_out := Object{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_local_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collider(collision_index i32) Object {
    mut object_out := Object{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collider_id(collision_index i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collider_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collider_rid(collision_index i32) RID {
    mut object_out := RID{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collider_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231817359)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collider_shape(collision_index i32) Object {
    mut object_out := Object{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collider_shape_index(collision_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collider_shape_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision3D) get_collider_velocity(collision_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("KinematicCollision3D")
    fnname := StringName.new("get_collider_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

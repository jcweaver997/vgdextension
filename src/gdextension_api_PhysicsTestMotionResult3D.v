module vgdextension

@[noinit]
pub struct PhysicsTestMotionResult3D {
    RefCounted
}

pub fn (r &PhysicsTestMotionResult3D) get_travel() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_travel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_remainder() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_remainder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_safe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_safe_fraction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_unsafe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_unsafe_fraction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_point(collision_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_normal(collision_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collider_velocity(collision_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collider_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1914908202)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collider_id(collision_index i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collider_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collider_rid(collision_index i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collider_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231817359)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collider(collision_index i32) Object {
    mut object_out := Object{}
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2639523548)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collider_shape(collision_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_local_shape(collision_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_local_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsTestMotionResult3D) get_collision_depth(collision_index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionResult3D")
    fnname := StringName.new("get_collision_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 218038398)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

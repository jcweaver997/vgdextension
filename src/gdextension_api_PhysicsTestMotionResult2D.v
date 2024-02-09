module vgdextension

pub struct PhysicsTestMotionResult2D {
    RefCounted
}

pub fn (r &PhysicsTestMotionResult2D) get_travel() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_travel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_remainder() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_remainder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collision_point() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collision_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collider_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collider_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collider_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collider() Object {
    mut object_out := Object{}
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collider_shape() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collision_local_shape() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_local_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collision_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collision_safe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_safe_fraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsTestMotionResult2D) get_collision_unsafe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionResult2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_unsafe_fraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

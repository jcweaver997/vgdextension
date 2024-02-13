module vgdextension

@[noinit]
pub struct PhysicsBody3D {
    CollisionObject3D
}

pub fn (mut r PhysicsBody3D) move_and_collide(motion Vector3, test_only bool, safe_margin f64, recovery_as_collision bool, max_collisions i32) KinematicCollision3D {
    mut object_out := KinematicCollision3D{}
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("move_and_collide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2825704414)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&motion)}
    args[1] = unsafe{voidptr(&test_only)}
    args[2] = unsafe{voidptr(&safe_margin)}
    args[3] = unsafe{voidptr(&recovery_as_collision)}
    args[4] = unsafe{voidptr(&max_collisions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody3D) test_move(from Transform3D, motion Vector3, collision KinematicCollision3D, safe_margin f64, recovery_as_collision bool, max_collisions i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("test_move")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680299713)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&motion)}
    args[2] = collision.ptr
    args[3] = unsafe{voidptr(&safe_margin)}
    args[4] = unsafe{voidptr(&recovery_as_collision)}
    args[5] = unsafe{voidptr(&max_collisions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody3D) set_axis_lock(axis PhysicsServer3DBodyAxis, gdlock bool) {
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis_lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1787895195)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    args[1] = unsafe{voidptr(&gdlock)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsBody3D) get_axis_lock(axis PhysicsServer3DBodyAxis) bool {
    mut object_out := false
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_axis_lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2264617709)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody3D) get_collision_exceptions() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody3D) add_collision_exception_with(body Node) {
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_collision_exception_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = body.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsBody3D) remove_collision_exception_with(body Node) {
    classname := StringName.new("PhysicsBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_collision_exception_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = body.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

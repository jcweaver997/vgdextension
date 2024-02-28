module vgdextension

@[noinit]
pub struct PhysicsBody2D {
    CollisionObject2D
}

pub fn (r &PhysicsBody2D) move_and_collide(motion Vector2, test_only bool, safe_margin f64, recovery_as_collision bool) KinematicCollision2D {
    mut object_out := KinematicCollision2D{}
    classname := StringName.new("PhysicsBody2D")
    fnname := StringName.new("move_and_collide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3681923724)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&motion)}
    args[1] = unsafe{voidptr(&test_only)}
    args[2] = unsafe{voidptr(&safe_margin)}
    args[3] = unsafe{voidptr(&recovery_as_collision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsBody2D) test_move(from Transform2D, motion Vector2, collision KinematicCollision2D, safe_margin f64, recovery_as_collision bool) bool {
    mut object_out := false
    classname := StringName.new("PhysicsBody2D")
    fnname := StringName.new("test_move")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3324464701)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&motion)}
    args[2] = voidptr(&collision.ptr)
    args[3] = unsafe{voidptr(&safe_margin)}
    args[4] = unsafe{voidptr(&recovery_as_collision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsBody2D) get_collision_exceptions() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsBody2D")
    fnname := StringName.new("get_collision_exceptions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsBody2D) add_collision_exception_with(body Node) {
    classname := StringName.new("PhysicsBody2D")
    fnname := StringName.new("add_collision_exception_with")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&body.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsBody2D) remove_collision_exception_with(body Node) {
    classname := StringName.new("PhysicsBody2D")
    fnname := StringName.new("remove_collision_exception_with")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&body.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

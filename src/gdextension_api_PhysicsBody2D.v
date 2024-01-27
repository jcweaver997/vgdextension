module vgdextension

pub type PhysicsBody2D = voidptr

pub fn (mut r PhysicsBody2D) move_and_collide(motion Vector2, test_only bool, safe_margin f32, recovery_as_collision bool) KinematicCollision2D {
    mut object_out := KinematicCollision2D(unsafe{nil})
    classname := StringName.new("PhysicsBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("move_and_collide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1529961754)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&motion)}
    args[1] = unsafe{voidptr(&test_only)}
    args[2] = unsafe{voidptr(&safe_margin)}
    args[3] = unsafe{voidptr(&recovery_as_collision)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody2D) test_move(from Transform2D, motion Vector2, collision KinematicCollision2D, safe_margin f32, recovery_as_collision bool) bool {
    mut object_out := false
    classname := StringName.new("PhysicsBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("test_move")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1369208982)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&motion)}
    args[2] = unsafe{voidptr(&collision)}
    args[3] = unsafe{voidptr(&safe_margin)}
    args[4] = unsafe{voidptr(&recovery_as_collision)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody2D) get_collision_exceptions() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsBody2D) add_collision_exception_with(body Node) {
    classname := StringName.new("PhysicsBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_collision_exception_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsBody2D) remove_collision_exception_with(body Node) {
    classname := StringName.new("PhysicsBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_collision_exception_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

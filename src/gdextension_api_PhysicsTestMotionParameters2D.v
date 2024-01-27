pub type PhysicsTestMotionParameters2D = voidptr

pub fn (r &PhysicsTestMotionParameters2D) get_from() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_from(from Transform2D) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters2D) get_motion() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_motion(motion Vector2) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters2D) get_margin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_margin(margin f32) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters2D) is_collide_separation_ray_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_separation_ray_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_collide_separation_ray_enabled(enabled bool) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_separation_ray_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters2D) get_exclude_bodies() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_exclude_bodies(exclude_list Array) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters2D) get_exclude_objects() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_exclude_objects(exclude_list Array) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters2D) is_recovery_as_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_recovery_as_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_recovery_as_collision_enabled(enabled bool) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_recovery_as_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

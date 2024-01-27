pub type PhysicsTestMotionParameters3D = voidptr

pub fn (r &PhysicsTestMotionParameters3D) get_from() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_from(from Transform3D) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) get_motion() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_motion(motion Vector3) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) get_margin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_margin(margin f32) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) get_max_collisions() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_collisions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_max_collisions(max_collisions i32) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_collisions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) is_collide_separation_ray_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_separation_ray_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_collide_separation_ray_enabled(enabled bool) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_separation_ray_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) get_exclude_bodies() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_exclude_bodies(exclude_list Array) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) get_exclude_objects() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_exclude_objects(exclude_list Array) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsTestMotionParameters3D) is_recovery_as_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_recovery_as_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters3D) set_recovery_as_collision_enabled(enabled bool) {
    classname := StringName.new("PhysicsTestMotionParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_recovery_as_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

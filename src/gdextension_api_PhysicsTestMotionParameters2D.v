module vgdextension

@[noinit]
pub struct PhysicsTestMotionParameters2D {
    RefCounted
}

pub fn (r &PhysicsTestMotionParameters2D) get_from() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("get_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_from(from Transform2D) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsTestMotionParameters2D) get_motion() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("get_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_motion(motion Vector2) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&motion)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsTestMotionParameters2D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_margin(margin f64) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsTestMotionParameters2D) is_collide_separation_ray_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("is_collide_separation_ray_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_collide_separation_ray_enabled(enabled bool) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_collide_separation_ray_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsTestMotionParameters2D) get_exclude_bodies() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("get_exclude_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_exclude_bodies(exclude_list Array) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_exclude_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude_list)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsTestMotionParameters2D) get_exclude_objects() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("get_exclude_objects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_exclude_objects(exclude_list Array) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_exclude_objects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude_list)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsTestMotionParameters2D) is_recovery_as_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("is_recovery_as_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsTestMotionParameters2D) set_recovery_as_collision_enabled(enabled bool) {
    classname := StringName.new("PhysicsTestMotionParameters2D")
    fnname := StringName.new("set_recovery_as_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

module vgdextension

@[noinit]
pub struct PhysicsRayQueryParameters2D {
    RefCounted
}

pub fn PhysicsRayQueryParameters2D.create(from Vector2, to Vector2, collision_mask u32, exclude Array) PhysicsRayQueryParameters2D {
    mut object_out := PhysicsRayQueryParameters2D{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3196569324)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&collision_mask)}
    args[3] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_from(from Vector2) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) get_from() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("get_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_to(to Vector2) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) get_to() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("get_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_collision_mask(collision_mask u32) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_exclude(exclude Array) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_exclude")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) get_exclude() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("get_exclude")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_collide_with_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("is_collide_with_bodies_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_collide_with_areas(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_collide_with_areas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("is_collide_with_areas_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsRayQueryParameters2D) set_hit_from_inside(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("set_hit_from_inside")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsRayQueryParameters2D) is_hit_from_inside_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters2D")
    fnname := StringName.new("is_hit_from_inside_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

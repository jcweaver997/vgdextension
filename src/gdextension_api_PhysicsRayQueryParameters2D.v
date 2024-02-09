module vgdextension

pub struct PhysicsRayQueryParameters2D {
    RefCounted
}

pub fn PhysicsRayQueryParameters2D.create(from Vector2, to Vector2, collision_mask u32, exclude Array) PhysicsRayQueryParameters2D {
    mut object_out := PhysicsRayQueryParameters2D{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1118143851)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&collision_mask)}
    args[3] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_from(from Vector2) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) get_from() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_to(to Vector2) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) get_to() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_collision_mask(collision_mask u32) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_exclude(exclude Array) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) get_exclude() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_bodies_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_collide_with_areas(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_areas_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters2D) set_hit_from_inside(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_hit_from_inside")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters2D) is_hit_from_inside_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_hit_from_inside_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

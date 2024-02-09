module vgdextension

pub struct PhysicsRayQueryParameters3D {
    RefCounted
}

pub fn PhysicsRayQueryParameters3D.create(from Vector3, to Vector3, collision_mask u32, exclude Array) PhysicsRayQueryParameters3D {
    mut object_out := PhysicsRayQueryParameters3D{}
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680321959)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&collision_mask)}
    args[3] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_from(from Vector3) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) get_from() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_to(to Vector3) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) get_to() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_collision_mask(collision_mask u32) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_exclude(exclude Array) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) get_exclude() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_bodies_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_collide_with_areas(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_areas_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_hit_from_inside(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_hit_from_inside")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) is_hit_from_inside_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_hit_from_inside_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsRayQueryParameters3D) set_hit_back_faces(enable bool) {
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_hit_back_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsRayQueryParameters3D) is_hit_back_faces_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsRayQueryParameters3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_hit_back_faces_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

pub type RayCast2D = voidptr

pub fn (mut r RayCast2D) set_enabled(enabled bool) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) set_target_position(local_point Vector2) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) get_target_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RayCast2D) is_colliding() bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_colliding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) force_raycast_update() {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("force_raycast_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) get_collider() Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RayCast2D) get_collider_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RayCast2D) get_collider_shape() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RayCast2D) get_collision_point() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RayCast2D) get_collision_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) add_exception_rid(rid RID) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_exception_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RayCast2D) add_exception(node CollisionObject2D) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3090941106)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RayCast2D) remove_exception_rid(rid RID) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_exception_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RayCast2D) remove_exception(node CollisionObject2D) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3090941106)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RayCast2D) clear_exceptions() {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RayCast2D) set_collision_mask(mask i32) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) set_exclude_parent_body(mask bool) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_parent_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) get_exclude_parent_body() bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_parent_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) set_collide_with_areas(enable bool) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_areas_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_bodies_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RayCast2D) set_hit_from_inside(enable bool) {
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_hit_from_inside")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RayCast2D) is_hit_from_inside_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_hit_from_inside_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

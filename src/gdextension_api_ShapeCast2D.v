module vgdextension

@[noinit]
pub struct ShapeCast2D {
    Node2D
}

pub fn (mut r ShapeCast2D) set_enabled(enabled bool) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_shape(shape Shape2D) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 771364740)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shape.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_shape() Shape2D {
    mut object_out := Shape2D{}
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 522005891)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_target_position(local_point Vector2) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_target_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_margin(margin f64) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_max_results(max_results i32) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_results")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_max_results() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_results")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) is_colliding() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_colliding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_collision_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) force_shapecast_update() {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("force_shapecast_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &ShapeCast2D) get_collider(index i32) Object {
    mut object_out := Object{}
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_collider_rid(index i32) RID {
    mut object_out := RID{}
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_collider_shape(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_collision_point(index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_collision_normal(index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_closest_collision_safe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_collision_safe_fraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ShapeCast2D) get_closest_collision_unsafe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_collision_unsafe_fraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) add_exception_rid(rid RID) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_exception_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ShapeCast2D) add_exception(node CollisionObject2D) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3090941106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ShapeCast2D) remove_exception_rid(rid RID) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_exception_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ShapeCast2D) remove_exception(node CollisionObject2D) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3090941106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ShapeCast2D) clear_exceptions() {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ShapeCast2D) set_collision_mask(mask u32) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_exclude_parent_body(mask bool) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_parent_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) get_exclude_parent_body() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_parent_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_collide_with_areas(enable bool) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_areas_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ShapeCast2D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ShapeCast2D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_bodies_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

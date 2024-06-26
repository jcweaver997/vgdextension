module vgdextension

@[noinit]
pub struct ShapeCast3D {
    Node3D
}

pub fn (r &ShapeCast3D) resource_changed(resource Resource) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("resource_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&resource.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) set_enabled(enabled bool) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_shape(shape Shape3D) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549710052)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&shape.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_shape() Shape3D {
    mut object_out := Shape3D{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214262478)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_target_position(local_point Vector3) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_target_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_margin(margin f64) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_max_results(max_results i32) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_max_results")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_max_results() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_max_results")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) is_colliding() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("is_colliding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_collision_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collision_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) force_shapecast_update() {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("force_shapecast_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_collider(index i32) Object {
    mut object_out := Object{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_collider_rid(index i32) RID {
    mut object_out := RID{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collider_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_collider_shape(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_collision_point(index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collision_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_collision_normal(index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collision_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_closest_collision_safe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_closest_collision_safe_fraction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) get_closest_collision_unsafe_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_closest_collision_unsafe_fraction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) add_exception_rid(rid RID) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("add_exception_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) add_exception(node CollisionObject3D) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("add_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976431078)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) remove_exception_rid(rid RID) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("remove_exception_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) remove_exception(node CollisionObject3D) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("remove_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976431078)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) clear_exceptions() {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("clear_exceptions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) set_collision_mask(mask u32) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_exclude_parent_body(mask bool) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_exclude_parent_body")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_exclude_parent_body() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_exclude_parent_body")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_collide_with_areas(enable bool) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_collide_with_areas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("is_collide_with_areas_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_collide_with_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("is_collide_with_bodies_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ShapeCast3D) set_debug_shape_custom_color(debug_shape_custom_color Color) {
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("set_debug_shape_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&debug_shape_custom_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShapeCast3D) get_debug_shape_custom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ShapeCast3D")
    fnname := StringName.new("get_debug_shape_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

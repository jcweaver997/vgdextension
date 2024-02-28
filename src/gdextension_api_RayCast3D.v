module vgdextension

@[noinit]
pub struct RayCast3D {
    Node3D
}

pub fn (r &RayCast3D) set_enabled(enabled bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_target_position(local_point Vector3) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_target_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) is_colliding() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("is_colliding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) force_raycast_update() {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("force_raycast_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_collider() Object {
    mut object_out := Object{}
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) get_collider_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collider_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) get_collider_shape() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) get_collision_point() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collision_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) get_collision_normal() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collision_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) get_collision_face_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collision_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) add_exception_rid(rid RID) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("add_exception_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) add_exception(node CollisionObject3D) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("add_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976431078)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) remove_exception_rid(rid RID) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("remove_exception_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) remove_exception(node CollisionObject3D) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("remove_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976431078)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) clear_exceptions() {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("clear_exceptions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) set_collision_mask(mask u32) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_exclude_parent_body(mask bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_exclude_parent_body")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_exclude_parent_body() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_exclude_parent_body")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_collide_with_areas(enable bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_collide_with_areas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("is_collide_with_areas_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_collide_with_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("is_collide_with_bodies_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_hit_from_inside(enable bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_hit_from_inside")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) is_hit_from_inside_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("is_hit_from_inside_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_hit_back_faces(enable bool) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_hit_back_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) is_hit_back_faces_enabled() bool {
    mut object_out := false
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("is_hit_back_faces_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_debug_shape_custom_color(debug_shape_custom_color Color) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_debug_shape_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&debug_shape_custom_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_debug_shape_custom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_debug_shape_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RayCast3D) set_debug_shape_thickness(debug_shape_thickness i32) {
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("set_debug_shape_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&debug_shape_thickness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RayCast3D) get_debug_shape_thickness() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RayCast3D")
    fnname := StringName.new("get_debug_shape_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

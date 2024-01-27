module vgdextension

pub type PhysicsDirectSpaceState3DExtension = voidptr

pub fn (mut r PhysicsDirectSpaceState3DExtension) uintersect_ray(from Vector3, to Vector3, collision_mask i32, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, hit_back_faces bool, pick_ray bool, result &PhysicsServer3DExtensionRayResult) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&collision_mask)}
    args[3] = unsafe{voidptr(&collide_with_bodies)}
    args[4] = unsafe{voidptr(&collide_with_areas)}
    args[5] = unsafe{voidptr(&hit_from_inside)}
    args[6] = unsafe{voidptr(&hit_back_faces)}
    args[7] = unsafe{voidptr(&pick_ray)}
    args[8] = unsafe{voidptr(&result)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3DExtension) uintersect_point(position Vector3, collision_mask i32, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer3DExtensionShapeResult, max_results i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_intersect_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&collision_mask)}
    args[2] = unsafe{voidptr(&collide_with_bodies)}
    args[3] = unsafe{voidptr(&collide_with_areas)}
    args[4] = unsafe{voidptr(&results)}
    args[5] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3DExtension) uintersect_shape(shape_rid RID, transform Transform3D, motion Vector3, margin f32, collision_mask i32, collide_with_bodies bool, collide_with_areas bool, result_count &PhysicsServer3DExtensionShapeResult, max_results i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_intersect_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&shape_rid)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&motion)}
    args[3] = unsafe{voidptr(&margin)}
    args[4] = unsafe{voidptr(&collision_mask)}
    args[5] = unsafe{voidptr(&collide_with_bodies)}
    args[6] = unsafe{voidptr(&collide_with_areas)}
    args[7] = unsafe{voidptr(&result_count)}
    args[8] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3DExtension) ucast_motion(shape_rid RID, transform Transform3D, motion Vector3, margin f32, collision_mask i32, collide_with_bodies bool, collide_with_areas bool, closest_safe &f32, closest_unsafe &f32, info &PhysicsServer3DExtensionShapeRestInfo) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_cast_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&shape_rid)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&motion)}
    args[3] = unsafe{voidptr(&margin)}
    args[4] = unsafe{voidptr(&collision_mask)}
    args[5] = unsafe{voidptr(&collide_with_bodies)}
    args[6] = unsafe{voidptr(&collide_with_areas)}
    args[7] = unsafe{voidptr(&closest_safe)}
    args[8] = unsafe{voidptr(&closest_unsafe)}
    args[9] = unsafe{voidptr(&info)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3DExtension) ucollide_shape(shape_rid RID, transform Transform3D, motion Vector3, margin f32, collision_mask i32, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i32, result_count &i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_collide_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&shape_rid)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&motion)}
    args[3] = unsafe{voidptr(&margin)}
    args[4] = unsafe{voidptr(&collision_mask)}
    args[5] = unsafe{voidptr(&collide_with_bodies)}
    args[6] = unsafe{voidptr(&collide_with_areas)}
    args[7] = unsafe{voidptr(&results)}
    args[8] = unsafe{voidptr(&max_results)}
    args[9] = unsafe{voidptr(&result_count)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3DExtension) urest_info(shape_rid RID, transform Transform3D, motion Vector3, margin f32, collision_mask i32, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer3DExtensionShapeRestInfo) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_rest_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&shape_rid)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&motion)}
    args[3] = unsafe{voidptr(&margin)}
    args[4] = unsafe{voidptr(&collision_mask)}
    args[5] = unsafe{voidptr(&collide_with_bodies)}
    args[6] = unsafe{voidptr(&collide_with_areas)}
    args[7] = unsafe{voidptr(&rest_info)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3DExtension) uget_closest_point_to_object_volume(object RID, point Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_closest_point_to_object_volume")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3DExtension) is_body_excluded_from_query(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("is_body_excluded_from_query")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

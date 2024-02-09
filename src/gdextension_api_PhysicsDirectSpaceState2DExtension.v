module vgdextension

pub struct PhysicsDirectSpaceState2DExtension {
    PhysicsDirectSpaceState2D
}

pub interface IPhysicsDirectSpaceState2DExtensionIntersectRay {
    mut:
    virt_intersect_ray(from Vector2, to Vector2, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, result &PhysicsServer2DExtensionRayResult) bool
}

pub fn (mut r PhysicsDirectSpaceState2DExtension) uintersect_ray(from Vector2, to Vector2, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, hit_from_inside bool, result &PhysicsServer2DExtensionRayResult) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&collision_mask)}
    args[3] = unsafe{voidptr(&collide_with_bodies)}
    args[4] = unsafe{voidptr(&collide_with_areas)}
    args[5] = unsafe{voidptr(&hit_from_inside)}
    args[6] = unsafe{voidptr(&result)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsDirectSpaceState2DExtensionIntersectPoint {
    mut:
    virt_intersect_point(position Vector2, canvas_instance_id u64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer2DExtensionShapeResult, max_results i32) i32
}

pub fn (mut r PhysicsDirectSpaceState2DExtension) uintersect_point(position Vector2, canvas_instance_id u64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, results &PhysicsServer2DExtensionShapeResult, max_results i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_intersect_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&canvas_instance_id)}
    args[2] = unsafe{voidptr(&collision_mask)}
    args[3] = unsafe{voidptr(&collide_with_bodies)}
    args[4] = unsafe{voidptr(&collide_with_areas)}
    args[5] = unsafe{voidptr(&results)}
    args[6] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsDirectSpaceState2DExtensionIntersectShape {
    mut:
    virt_intersect_shape(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, result &PhysicsServer2DExtensionShapeResult, max_results i32) i32
}

pub fn (mut r PhysicsDirectSpaceState2DExtension) uintersect_shape(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, result &PhysicsServer2DExtensionShapeResult, max_results i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
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
    args[7] = unsafe{voidptr(&result)}
    args[8] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsDirectSpaceState2DExtensionCastMotion {
    mut:
    virt_cast_motion(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, closest_safe &f64, closest_unsafe &f64) bool
}

pub fn (mut r PhysicsDirectSpaceState2DExtension) ucast_motion(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, closest_safe &f64, closest_unsafe &f64) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_cast_motion")
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
    args[7] = unsafe{voidptr(&closest_safe)}
    args[8] = unsafe{voidptr(&closest_unsafe)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsDirectSpaceState2DExtensionCollideShape {
    mut:
    virt_collide_shape(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i32, result_count &i32) bool
}

pub fn (mut r PhysicsDirectSpaceState2DExtension) ucollide_shape(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, results voidptr, max_results i32, result_count &i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsDirectSpaceState2DExtensionRestInfo {
    mut:
    virt_rest_info(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer2DExtensionShapeRestInfo) bool
}

pub fn (mut r PhysicsDirectSpaceState2DExtension) urest_info(shape_rid RID, transform Transform2D, motion Vector2, margin f64, collision_mask u32, collide_with_bodies bool, collide_with_areas bool, rest_info &PhysicsServer2DExtensionShapeRestInfo) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectSpaceState2DExtension) is_body_excluded_from_query(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectSpaceState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("is_body_excluded_from_query")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

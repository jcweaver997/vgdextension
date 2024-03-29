module vgdextension

@[noinit]
pub struct NavigationAgent3D {
    Node
}

pub fn (r &NavigationAgent3D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_avoidance_enabled(enabled bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_avoidance_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_path_desired_distance(desired_distance f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_path_desired_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&desired_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_path_desired_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_path_desired_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_target_desired_distance(desired_distance f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_target_desired_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&desired_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_target_desired_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_target_desired_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_radius(radius f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_height(height f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_path_height_offset(path_height_offset f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_path_height_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path_height_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_path_height_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_path_height_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_use_3d_avoidance(enabled bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_use_3d_avoidance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_use_3d_avoidance() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_use_3d_avoidance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_keep_y_velocity(enabled bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_keep_y_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_keep_y_velocity() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_keep_y_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_neighbor_distance(neighbor_distance f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_neighbor_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&neighbor_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_neighbor_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_neighbor_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_max_neighbors(max_neighbors i32) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_max_neighbors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_neighbors)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_max_neighbors() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_max_neighbors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_time_horizon_agents(time_horizon f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_time_horizon_agents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_horizon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_time_horizon_agents() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_time_horizon_agents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_time_horizon_obstacles(time_horizon f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_time_horizon_obstacles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_horizon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_time_horizon_obstacles() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_time_horizon_obstacles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_max_speed(max_speed f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_max_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_max_speed() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_max_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_path_max_distance(max_speed f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_path_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_path_max_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_path_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_navigation_layers(navigation_layers u32) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_navigation_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_navigation_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_navigation_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_pathfinding_algorithm(pathfinding_algorithm NavigationPathQueryParameters3DPathfindingAlgorithm) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_pathfinding_algorithm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 394560454)
    mut args := unsafe { [1]voidptr{} }
    i64_pathfinding_algorithm := i64(pathfinding_algorithm)
    args[0] = unsafe{voidptr(&i64_pathfinding_algorithm)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_pathfinding_algorithm() NavigationPathQueryParameters3DPathfindingAlgorithm {
    mut object_out := i64(NavigationPathQueryParameters3DPathfindingAlgorithm.pathfinding_algorithm_astar)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_pathfinding_algorithm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3398491350)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPathQueryParameters3DPathfindingAlgorithm(object_out)}
}
pub fn (r &NavigationAgent3D) set_path_postprocessing(path_postprocessing NavigationPathQueryParameters3DPathPostProcessing) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_path_postprocessing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2267362344)
    mut args := unsafe { [1]voidptr{} }
    i64_path_postprocessing := i64(path_postprocessing)
    args[0] = unsafe{voidptr(&i64_path_postprocessing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_path_postprocessing() NavigationPathQueryParameters3DPathPostProcessing {
    mut object_out := i64(NavigationPathQueryParameters3DPathPostProcessing.path_postprocessing_corridorfunnel)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_path_postprocessing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3883858360)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPathQueryParameters3DPathPostProcessing(object_out)}
}
pub fn (r &NavigationAgent3D) set_path_metadata_flags(flags NavigationPathQueryParameters3DPathMetadataFlags) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_path_metadata_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2713846708)
    mut args := unsafe { [1]voidptr{} }
    i64_flags := i64(flags)
    args[0] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_path_metadata_flags() NavigationPathQueryParameters3DPathMetadataFlags {
    mut object_out := i64(NavigationPathQueryParameters3DPathMetadataFlags.path_metadata_include_none)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_path_metadata_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1582332802)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPathQueryParameters3DPathMetadataFlags(object_out)}
}
pub fn (r &NavigationAgent3D) set_navigation_map(navigation_map RID) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_target_position(position Vector3) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_target_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) get_next_path_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_next_path_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_velocity_forced(velocity Vector3) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_velocity_forced")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) set_velocity(velocity Vector3) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) distance_to_target() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("distance_to_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) get_current_navigation_result() NavigationPathQueryResult3D {
    mut object_out := NavigationPathQueryResult3D{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_current_navigation_result")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 728825684)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) get_current_navigation_path() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_current_navigation_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) get_current_navigation_path_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_current_navigation_path_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) is_target_reached() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("is_target_reached")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) is_target_reachable() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("is_target_reachable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) is_navigation_finished() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("is_navigation_finished")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) get_final_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_final_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_avoidance_layers(layers u32) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_avoidance_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_avoidance_mask(mask u32) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_avoidance_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_avoidance_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_avoidance_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_avoidance_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_avoidance_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_avoidance_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_avoidance_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_avoidance_mask_value(mask_number i32, value bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_avoidance_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mask_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_avoidance_mask_value(mask_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_avoidance_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_avoidance_priority(priority f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_avoidance_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_avoidance_priority() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_avoidance_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_debug_enabled(enabled bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_debug_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_debug_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_debug_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_debug_use_custom(enabled bool) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_debug_use_custom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_debug_use_custom() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_debug_use_custom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_debug_path_custom_color(color Color) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_debug_path_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_debug_path_custom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_debug_path_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationAgent3D) set_debug_path_custom_point_size(point_size f64) {
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("set_debug_path_custom_point_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationAgent3D) get_debug_path_custom_point_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationAgent3D")
    fnname := StringName.new("get_debug_path_custom_point_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

pub type NavigationAgent2D = voidptr

pub fn (r &NavigationAgent2D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_avoidance_enabled(enabled bool) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_avoidance_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_path_desired_distance(desired_distance f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_desired_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_path_desired_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_desired_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_target_desired_distance(desired_distance f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_desired_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_target_desired_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_desired_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_radius(radius f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_neighbor_distance(neighbor_distance f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_neighbor_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_neighbor_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_neighbor_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_max_neighbors(max_neighbors i32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_neighbors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_max_neighbors() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_neighbors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_time_horizon_agents(time_horizon f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_time_horizon_agents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_time_horizon_agents() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_horizon_agents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_time_horizon_obstacles(time_horizon f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_time_horizon_obstacles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_time_horizon_obstacles() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_horizon_obstacles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_max_speed(max_speed f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_max_speed() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_path_max_distance(max_speed f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationAgent2D) get_path_max_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_navigation_layers(navigation_layers i32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_navigation_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_pathfinding_algorithm(pathfinding_algorithm NavigationPathQueryParameters2DPathfindingAlgorithm) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pathfinding_algorithm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783519915)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_pathfinding_algorithm() NavigationPathQueryParameters2DPathfindingAlgorithm {
    mut object_out := NavigationPathQueryParameters2DPathfindingAlgorithm.pathfinding_algorithm_astar
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pathfinding_algorithm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3000421146)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_path_postprocessing(path_postprocessing NavigationPathQueryParameters2DPathPostProcessing) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_postprocessing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2864409082)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_path_postprocessing() NavigationPathQueryParameters2DPathPostProcessing {
    mut object_out := NavigationPathQueryParameters2DPathPostProcessing.path_postprocessing_corridorfunnel
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_postprocessing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3798118993)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_path_metadata_flags(flags NavigationPathQueryParameters2DPathMetadataFlags) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_metadata_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 24274129)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_path_metadata_flags() NavigationPathQueryParameters2DPathMetadataFlags {
    mut object_out := NavigationPathQueryParameters2DPathMetadataFlags(unsafe{nil})
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_metadata_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 488152976)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_navigation_map(navigation_map RID) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_target_position(position Vector2) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_target_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) get_next_path_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_next_path_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_velocity_forced(velocity Vector2) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_velocity_forced")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationAgent2D) set_velocity(velocity Vector2) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationAgent2D) get_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationAgent2D) distance_to_target() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("distance_to_target")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationAgent2D) get_current_navigation_result() NavigationPathQueryResult2D {
    mut object_out := NavigationPathQueryResult2D(unsafe{nil})
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_navigation_result")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166799483)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationAgent2D) get_current_navigation_path() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_navigation_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationAgent2D) get_current_navigation_path_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_navigation_path_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationAgent2D) is_target_reached() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_target_reached")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) is_target_reachable() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_target_reachable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) is_navigation_finished() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_navigation_finished")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) get_final_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_final_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_avoidance_layers(layers i32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_avoidance_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_avoidance_mask(mask i32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_avoidance_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_avoidance_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_avoidance_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_avoidance_mask_value(mask_number i32, value bool) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_avoidance_mask_value(mask_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_avoidance_priority(priority f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_avoidance_priority() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_debug_enabled(enabled bool) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_debug_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_debug_use_custom(enabled bool) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_use_custom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_debug_use_custom() bool {
    mut object_out := false
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_use_custom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_debug_path_custom_color(color Color) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_path_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_debug_path_custom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_path_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_debug_path_custom_point_size(point_size f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_path_custom_point_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_debug_path_custom_point_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_path_custom_point_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationAgent2D) set_debug_path_custom_line_width(line_width f32) {
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_path_custom_line_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationAgent2D) get_debug_path_custom_line_width() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationAgent2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_path_custom_line_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

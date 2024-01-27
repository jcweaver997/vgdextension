module vgdextension

pub enum NavigationMeshSamplePartitionType {
    sample_partition_watershed = 0
    sample_partition_monotone = 1
    sample_partition_layers = 2
    sample_partition_max = 3
}

pub enum NavigationMeshParsedGeometryType {
    parsed_geometry_mesh_instances = 0
    parsed_geometry_static_colliders = 1
    parsed_geometry_both = 2
    parsed_geometry_max = 3
}

pub enum NavigationMeshSourceGeometryMode {
    source_geometry_root_node_children = 0
    source_geometry_groups_with_children = 1
    source_geometry_groups_explicit = 2
    source_geometry_max = 3
}

pub type NavigationMesh = voidptr

pub fn (mut r NavigationMesh) set_sample_partition_type(sample_partition_type NavigationMeshSamplePartitionType) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_sample_partition_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2472437533)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_sample_partition_type() NavigationMeshSamplePartitionType {
    mut object_out := NavigationMeshSamplePartitionType.sample_partition_watershed
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_sample_partition_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 833513918)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_parsed_geometry_type(geometry_type NavigationMeshParsedGeometryType) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_parsed_geometry_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3064713163)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_parsed_geometry_type() NavigationMeshParsedGeometryType {
    mut object_out := NavigationMeshParsedGeometryType.parsed_geometry_mesh_instances
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_parsed_geometry_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3928011953)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_collision_mask(mask i32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_source_geometry_mode(mask NavigationMeshSourceGeometryMode) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_source_geometry_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2700825194)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_source_geometry_mode() NavigationMeshSourceGeometryMode {
    mut object_out := NavigationMeshSourceGeometryMode.source_geometry_root_node_children
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_geometry_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2770484141)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_source_group_name(mask StringName) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_source_group_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_source_group_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_group_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_cell_size(cell_size f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_cell_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_cell_height(cell_height f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_cell_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_agent_height(agent_height f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_agent_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_agent_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_agent_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_agent_radius(agent_radius f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_agent_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMesh) get_agent_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_agent_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_agent_max_climb(agent_max_climb f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_agent_max_climb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_agent_max_climb() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_agent_max_climb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_agent_max_slope(agent_max_slope f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_agent_max_slope")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_agent_max_slope() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_agent_max_slope")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_region_min_size(region_min_size f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_region_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_region_min_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_region_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_region_merge_size(region_merge_size f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_region_merge_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_region_merge_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_region_merge_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_edge_max_length(edge_max_length f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_edge_max_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_edge_max_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_edge_max_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_edge_max_error(edge_max_error f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_edge_max_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_edge_max_error() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_edge_max_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_vertices_per_polygon(vertices_per_polygon f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertices_per_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_vertices_per_polygon() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertices_per_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_detail_sample_distance(detail_sample_dist f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_detail_sample_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_detail_sample_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_detail_sample_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_detail_sample_max_error(detail_sample_max_error f32) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_detail_sample_max_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_detail_sample_max_error() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_detail_sample_max_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_filter_low_hanging_obstacles(filter_low_hanging_obstacles bool) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_low_hanging_obstacles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_filter_low_hanging_obstacles() bool {
    mut object_out := false
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_filter_low_hanging_obstacles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_filter_ledge_spans(filter_ledge_spans bool) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_ledge_spans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_filter_ledge_spans() bool {
    mut object_out := false
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_filter_ledge_spans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_filter_walkable_low_height_spans(filter_walkable_low_height_spans bool) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_walkable_low_height_spans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_filter_walkable_low_height_spans() bool {
    mut object_out := false
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_filter_walkable_low_height_spans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_filter_baking_aabb(baking_aabb AABB) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_baking_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_filter_baking_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_filter_baking_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_filter_baking_aabb_offset(baking_aabb_offset Vector3) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_baking_aabb_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_filter_baking_aabb_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_filter_baking_aabb_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) set_vertices(vertices PackedVector3Array) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_vertices() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) add_polygon(polygon PackedInt32Array) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("add_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMesh) get_polygon_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) get_polygon(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3668444399)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMesh) clear_polygons() {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("clear_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMesh) create_from_mesh(mesh Mesh) {
    classname := StringName.new("NavigationMesh")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

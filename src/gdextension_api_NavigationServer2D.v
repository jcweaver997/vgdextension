pub type NavigationServer2D = voidptr

pub fn (r &NavigationServer2D) get_maps() Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_maps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_set_active(mape RID, active bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) map_is_active(mape RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_set_cell_size(mape RID, cell_size f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_set_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) map_get_cell_size(mape RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_set_use_edge_connections(mape RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_set_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) map_get_use_edge_connections(mape RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_set_edge_connection_margin(mape RID, margin f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_set_edge_connection_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) map_get_edge_connection_margin(mape RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_edge_connection_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_set_link_connection_radius(mape RID, radius f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_set_link_connection_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) map_get_link_connection_radius(mape RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_link_connection_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_path(mape RID, origin Vector2, destination Vector2, optimize bool, navigation_layers i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 56240621)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&origin)}
    args[2] = unsafe{voidptr(&destination)}
    args[3] = unsafe{voidptr(&optimize)}
    args[4] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_closest_point(mape RID, to_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_closest_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1358334418)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_closest_point_owner(mape RID, to_point Vector2) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_closest_point_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1353467510)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_links(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_links")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_regions(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_regions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_agents(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_agents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) map_get_obstacles(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_get_obstacles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) map_force_update(mape RID) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("map_force_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) query_path(parameters NavigationPathQueryParameters2D, result NavigationPathQueryResult2D) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("query_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3394638789)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) region_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_use_edge_connections(region RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_use_edge_connections(region RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_enter_cost(region RID, enter_cost f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_enter_cost(region RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_travel_cost(region RID, travel_cost f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_travel_cost(region RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_owner_id(region RID, owner_id i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_owner_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_owner_id(region RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_owner_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) region_owns_point(region RID, point Vector2) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_owns_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 219849798)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_map(region RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_map(region RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_navigation_layers(region RID, navigation_layers i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_navigation_layers(region RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) region_set_transform(region RID, transform Transform2D) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) region_set_navigation_polygon(region RID, navigation_polygon NavigationPolygon) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_set_navigation_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3633623451)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) region_get_connections_count(region RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_connections_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) region_get_connection_pathway_start(region RID, connection i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_connection_pathway_start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&connection)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationServer2D) region_get_connection_pathway_end(region RID, connection i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("region_get_connection_pathway_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&connection)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_map(link RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_map(link RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_bidirectional(link RID, bidirectional bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_bidirectional")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_is_bidirectional(link RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_is_bidirectional")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_navigation_layers(link RID, navigation_layers i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_navigation_layers(link RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_start_position(link RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_start_position(link RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_end_position(link RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_end_position(link RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_enter_cost(link RID, enter_cost f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_enter_cost(link RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_travel_cost(link RID, travel_cost f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_travel_cost(link RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) link_set_owner_id(link RID, owner_id i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_set_owner_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) link_get_owner_id(link RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("link_get_owner_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) agent_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) agent_set_avoidance_enabled(agent RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) agent_get_avoidance_enabled(agent RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_get_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) agent_set_map(agent RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) agent_get_map(agent RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_get_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) agent_set_paused(agent RID, paused bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) agent_get_paused(agent RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_get_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) agent_set_neighbor_distance(agent RID, distance f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_neighbor_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_max_neighbors(agent RID, count i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_max_neighbors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_time_horizon_agents(agent RID, time_horizon f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_time_horizon_agents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_time_horizon_obstacles(agent RID, time_horizon f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_time_horizon_obstacles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_radius(agent RID, radius f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_max_speed(agent RID, max_speed f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_max_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_velocity_forced(agent RID, velocity Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_velocity_forced")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_velocity(agent RID, velocity Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_position(agent RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) agent_is_map_changed(agent RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_is_map_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) agent_set_avoidance_callback(agent RID, callback Callable) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_avoidance_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_avoidance_layers(agent RID, layers i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_avoidance_mask(agent RID, mask i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_avoidance_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) agent_set_avoidance_priority(agent RID, priority f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("agent_set_avoidance_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) obstacle_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) obstacle_set_avoidance_enabled(obstacle RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) obstacle_get_avoidance_enabled(obstacle RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_get_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) obstacle_set_map(obstacle RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) obstacle_get_map(obstacle RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_get_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) obstacle_set_paused(obstacle RID, paused bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) obstacle_get_paused(obstacle RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_get_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationServer2D) obstacle_set_radius(obstacle RID, radius f32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) obstacle_set_velocity(obstacle RID, velocity Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) obstacle_set_position(obstacle RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) obstacle_set_vertices(obstacle RID, vertices PackedVector2Array) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 29476483)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) obstacle_set_avoidance_layers(obstacle RID, layers i32) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("obstacle_set_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) free_rid(rid RID) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationServer2D) set_debug_enabled(enabled bool) {
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationServer2D) get_debug_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

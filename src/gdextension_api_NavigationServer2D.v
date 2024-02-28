module vgdextension

@[noinit]
pub struct NavigationServer2D {
    Object
}

pub fn NavigationServer2D.get_singleton() NavigationServer2D {
    sn := StringName.new("NavigationServer2D")
    o := NavigationServer2D{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &NavigationServer2D) get_maps() Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("get_maps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_set_active(mape RID, active bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) map_is_active(mape RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_set_cell_size(mape RID, cell_size f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_set_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&cell_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) map_get_cell_size(mape RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_set_use_edge_connections(mape RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_set_use_edge_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) map_get_use_edge_connections(mape RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_use_edge_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_set_edge_connection_margin(mape RID, margin f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_set_edge_connection_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) map_get_edge_connection_margin(mape RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_edge_connection_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_set_link_connection_radius(mape RID, radius f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_set_link_connection_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) map_get_link_connection_radius(mape RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_link_connection_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_path(mape RID, origin Vector2, destination Vector2, optimize bool, navigation_layers u32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3146466012)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&origin)}
    args[2] = unsafe{voidptr(&destination)}
    args[3] = unsafe{voidptr(&optimize)}
    args[4] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_closest_point(mape RID, to_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_closest_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1358334418)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_closest_point_owner(mape RID, to_point Vector2) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_closest_point_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1353467510)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    args[1] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_links(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_links")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_regions(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_regions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_agents(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_agents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_get_obstacles(mape RID) Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_get_obstacles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) map_force_update(mape RID) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("map_force_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) query_path(parameters NavigationPathQueryParameters2D, result NavigationPathQueryResult2D) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("query_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3394638789)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = result.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_enabled(region RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_enabled(region RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_use_edge_connections(region RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_use_edge_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_use_edge_connections(region RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_use_edge_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_enter_cost(region RID, enter_cost f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&enter_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_enter_cost(region RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_travel_cost(region RID, travel_cost f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&travel_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_travel_cost(region RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_owner_id(region RID, owner_id u64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_owner_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_owner_id(region RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_owner_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_owns_point(region RID, point Vector2) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_owns_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 219849798)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_map(region RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_map(region RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_navigation_layers(region RID, navigation_layers u32) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_navigation_layers(region RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_set_transform(region RID, transform Transform2D) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_set_navigation_polygon(region RID, navigation_polygon NavigationPolygon) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_set_navigation_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3633623451)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = navigation_polygon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) region_get_connections_count(region RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_connections_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_get_connection_pathway_start(region RID, connection i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_connection_pathway_start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&connection)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) region_get_connection_pathway_end(region RID, connection i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("region_get_connection_pathway_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&connection)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_map(link RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_map(link RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_enabled(link RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_enabled(link RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_bidirectional(link RID, bidirectional bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_bidirectional")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&bidirectional)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_is_bidirectional(link RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_is_bidirectional")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_navigation_layers(link RID, navigation_layers u32) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_navigation_layers(link RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_start_position(link RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_start_position(link RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_end_position(link RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_end_position(link RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_enter_cost(link RID, enter_cost f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&enter_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_enter_cost(link RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_travel_cost(link RID, travel_cost f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&travel_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_travel_cost(link RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) link_set_owner_id(link RID, owner_id u64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_set_owner_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    args[1] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) link_get_owner_id(link RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("link_get_owner_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&link)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) agent_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) agent_set_avoidance_enabled(agent RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_get_avoidance_enabled(agent RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_get_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) agent_set_map(agent RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_get_map(agent RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_get_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) agent_set_paused(agent RID, paused bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&paused)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_get_paused(agent RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_get_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) agent_set_neighbor_distance(agent RID, distance f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_neighbor_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_max_neighbors(agent RID, count i32) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_max_neighbors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_time_horizon_agents(agent RID, time_horizon f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_time_horizon_agents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&time_horizon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_time_horizon_obstacles(agent RID, time_horizon f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_time_horizon_obstacles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&time_horizon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_radius(agent RID, radius f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_max_speed(agent RID, max_speed f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_max_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&max_speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_velocity_forced(agent RID, velocity Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_velocity_forced")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_velocity(agent RID, velocity Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_position(agent RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_is_map_changed(agent RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_is_map_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) agent_set_avoidance_callback(agent RID, callback Callable) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_avoidance_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_avoidance_layers(agent RID, layers u32) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_avoidance_mask(agent RID, mask u32) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_avoidance_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) agent_set_avoidance_priority(agent RID, priority f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("agent_set_avoidance_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&agent)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_create() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) obstacle_set_avoidance_enabled(obstacle RID, enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_get_avoidance_enabled(obstacle RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_get_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) obstacle_set_map(obstacle RID, mape RID) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_get_map(obstacle RID) RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_get_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) obstacle_set_paused(obstacle RID, paused bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&paused)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_get_paused(obstacle RID) bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_get_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationServer2D) obstacle_set_radius(obstacle RID, radius f64) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_set_velocity(obstacle RID, velocity Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_set_position(obstacle RID, position Vector2) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_set_vertices(obstacle RID, vertices PackedVector2Array) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 29476483)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) obstacle_set_avoidance_layers(obstacle RID, layers u32) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("obstacle_set_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&obstacle)}
    args[1] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) parse_source_geometry_data(navigation_polygon NavigationPolygon, source_geometry_data NavigationMeshSourceGeometryData2D, root_node Node, callback Callable) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("parse_source_geometry_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1176164995)
    mut args := unsafe { [4]voidptr{} }
    args[0] = navigation_polygon.ptr
    args[1] = source_geometry_data.ptr
    args[2] = root_node.ptr
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) bake_from_source_geometry_data(navigation_polygon NavigationPolygon, source_geometry_data NavigationMeshSourceGeometryData2D, callback Callable) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("bake_from_source_geometry_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2909414286)
    mut args := unsafe { [3]voidptr{} }
    args[0] = navigation_polygon.ptr
    args[1] = source_geometry_data.ptr
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) bake_from_source_geometry_data_async(navigation_polygon NavigationPolygon, source_geometry_data NavigationMeshSourceGeometryData2D, callback Callable) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("bake_from_source_geometry_data_async")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2909414286)
    mut args := unsafe { [3]voidptr{} }
    args[0] = navigation_polygon.ptr
    args[1] = source_geometry_data.ptr
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) free_rid(rid RID) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) set_debug_enabled(enabled bool) {
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("set_debug_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationServer2D) get_debug_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationServer2D")
    fnname := StringName.new("get_debug_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

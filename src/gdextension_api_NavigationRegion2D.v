pub type NavigationRegion2D = voidptr

pub fn (mut r NavigationRegion2D) set_navigation_polygon(navigation_polygon NavigationPolygon) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1515040758)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_navigation_polygon() NavigationPolygon {
    mut object_out := NavigationPolygon(unsafe{nil})
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1046532237)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_enabled(enabled bool) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_use_edge_connections(enabled bool) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_use_edge_connections() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_navigation_layers(navigation_layers i32) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_navigation_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_constrain_avoidance(enabled bool) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constrain_avoidance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_constrain_avoidance() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constrain_avoidance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_avoidance_layers(layers i32) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_avoidance_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_avoidance_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_avoidance_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationRegion2D) get_region_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_region_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_enter_cost(enter_cost f32) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_enter_cost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion2D) set_travel_cost(travel_cost f32) {
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion2D) get_travel_cost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationRegion2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

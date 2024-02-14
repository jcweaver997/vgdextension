module vgdextension

@[noinit]
pub struct NavigationRegion2D {
    Node2D
}

pub fn (r &NavigationRegion2D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_navigation_polygon(navigation_polygon NavigationPolygon) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_navigation_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1515040758)
    mut args := unsafe { [1]voidptr{} }
    args[0] = navigation_polygon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_navigation_polygon() NavigationPolygon {
    mut object_out := NavigationPolygon{}
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_navigation_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1046532237)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_enabled(enabled bool) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_navigation_map(navigation_map RID) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_use_edge_connections(enabled bool) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_use_edge_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_use_edge_connections() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_use_edge_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_navigation_layers(navigation_layers u32) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_navigation_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_navigation_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_navigation_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_constrain_avoidance(enabled bool) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_constrain_avoidance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_constrain_avoidance() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_constrain_avoidance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_avoidance_layers(layers u32) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_avoidance_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_avoidance_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_avoidance_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_avoidance_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_avoidance_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationRegion2D) get_region_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_region_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_enter_cost(enter_cost f64) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enter_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_enter_cost() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) set_travel_cost(travel_cost f64) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("set_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&travel_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationRegion2D) get_travel_cost() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("get_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationRegion2D) bake_navigation_polygon(on_thread bool) {
    classname := StringName.new("NavigationRegion2D")
    fnname := StringName.new("bake_navigation_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&on_thread)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

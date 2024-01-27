pub type NavigationRegion3D = voidptr

pub fn (mut r NavigationRegion3D) set_navigation_mesh(navigation_mesh NavigationMesh) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2923361153)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) get_navigation_mesh() NavigationMesh {
    mut object_out := NavigationMesh(unsafe{nil})
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1468720886)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) set_enabled(enabled bool) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) set_use_edge_connections(enabled bool) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) get_use_edge_connections() bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_edge_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) set_navigation_layers(navigation_layers i32) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) get_navigation_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &NavigationRegion3D) get_region_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_region_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) set_enter_cost(enter_cost f32) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) get_enter_cost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) set_travel_cost(travel_cost f32) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationRegion3D) get_travel_cost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationRegion3D) bake_navigation_mesh(on_thread bool) {
    classname := StringName.new("NavigationRegion3D")
    defer { classname.deinit() }
    fnname := StringName.new("bake_navigation_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

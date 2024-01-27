pub type NavigationLink2D = voidptr

pub fn (mut r NavigationLink2D) set_enabled(enabled bool) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_bidirectional(bidirectional bool) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bidirectional")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) is_bidirectional() bool {
    mut object_out := false
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_bidirectional")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_navigation_layers(navigation_layers i32) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_navigation_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_start_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_start_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_end_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_end_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_global_start_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_global_start_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_global_end_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_global_end_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_enter_cost(enter_cost f32) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_enter_cost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enter_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationLink2D) set_travel_cost(travel_cost f32) {
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationLink2D) get_travel_cost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationLink2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_travel_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

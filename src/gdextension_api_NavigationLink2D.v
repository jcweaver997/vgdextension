module vgdextension

@[noinit]
pub struct NavigationLink2D {
    Node2D
}

pub fn (r &NavigationLink2D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_enabled(enabled bool) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_bidirectional(bidirectional bool) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_bidirectional")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bidirectional)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) is_bidirectional() bool {
    mut object_out := false
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("is_bidirectional")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_navigation_layers(navigation_layers u32) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_navigation_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_navigation_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_navigation_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_navigation_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_navigation_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_start_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_start_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_end_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_end_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_global_start_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_global_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_global_start_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_global_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_global_end_position(position Vector2) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_global_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_global_end_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_global_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_enter_cost(enter_cost f64) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enter_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_enter_cost() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_enter_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationLink2D) set_travel_cost(travel_cost f64) {
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("set_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&travel_cost)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationLink2D) get_travel_cost() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationLink2D")
    fnname := StringName.new("get_travel_cost")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

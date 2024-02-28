module vgdextension

@[noinit]
pub struct NavigationObstacle2D {
    Node2D
}

pub fn (r &NavigationObstacle2D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_avoidance_enabled(enabled bool) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_avoidance_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_avoidance_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_navigation_map(navigation_map RID) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_radius(radius f64) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_velocity(velocity Vector2) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_vertices(vertices PackedVector2Array) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_vertices() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_avoidance_layers(layers u32) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_avoidance_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_avoidance_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationObstacle2D) set_avoidance_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("set_avoidance_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationObstacle2D) get_avoidance_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationObstacle2D")
    fnname := StringName.new("get_avoidance_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

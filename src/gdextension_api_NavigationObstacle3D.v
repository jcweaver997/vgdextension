module vgdextension

pub type NavigationObstacle3D = voidptr

pub fn (r &NavigationObstacle3D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_avoidance_enabled(enabled bool) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_avoidance_enabled() bool {
    mut object_out := false
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_navigation_map(navigation_map RID) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_radius(radius f32) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_height(height f32) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_velocity(velocity Vector3) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_vertices(vertices PackedVector3Array) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_vertices() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_avoidance_layers(layers i32) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_avoidance_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_avoidance_layer_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_avoidance_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_avoidance_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_avoidance_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationObstacle3D) set_use_3d_avoidance(enabled bool) {
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_3d_avoidance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationObstacle3D) get_use_3d_avoidance() bool {
    mut object_out := false
    classname := StringName.new("NavigationObstacle3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_3d_avoidance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

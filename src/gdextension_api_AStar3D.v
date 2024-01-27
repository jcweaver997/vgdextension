module vgdextension

pub type AStar3D = voidptr

pub fn (r &AStar3D) uestimate_cost(from_id i32, to_id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("_estimate_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStar3D) ucompute_cost(from_id i32, to_id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("_compute_cost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStar3D) get_available_point_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_available_point_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) add_point(id i32, position Vector3, weight_scale f32) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920922839)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar3D) get_point_position(id i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) set_point_position(id i32, position Vector3) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar3D) get_point_weight_scale(id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_weight_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) set_point_weight_scale(id i32, weight_scale f32) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_weight_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStar3D) remove_point(id i32) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar3D) has_point(id i32) bool {
    mut object_out := false
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) get_point_connections(id i32) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865087369)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) get_point_ids() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3851388692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) set_point_disabled(id i32, disabled bool) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar3D) is_point_disabled(id i32) bool {
    mut object_out := false
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) connect_points(id i32, to_id i32, bidirectional bool) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("connect_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3785370599)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStar3D) disconnect_points(id i32, to_id i32, bidirectional bool) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3785370599)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar3D) are_points_connected(id i32, to_id i32, bidirectional bool) bool {
    mut object_out := false
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("are_points_connected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4063588998)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&to_id)}
    args[2] = unsafe{voidptr(&bidirectional)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStar3D) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AStar3D) get_point_capacity() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_capacity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) reserve_space(num_nodes i32) {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("reserve_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStar3D) clear() {
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar3D) get_closest_point(to_position Vector3, include_disabled bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3241074317)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&to_position)}
    args[1] = unsafe{voidptr(&include_disabled)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStar3D) get_closest_position_in_segment(to_position Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_position_in_segment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_position)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) get_point_path(from_id i32, to_id i32) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 880819742)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar3D) get_id_path(from_id i32, to_id i32) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("AStar3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_id_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3404614526)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

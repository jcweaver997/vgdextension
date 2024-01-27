pub type AStar2D = voidptr

pub fn (r &AStar2D) uestimate_cost(from_id i32, to_id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStar2D")
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
pub fn (r &AStar2D) ucompute_cost(from_id i32, to_id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStar2D")
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
pub fn (r &AStar2D) get_available_point_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_available_point_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) add_point(id i32, position Vector2, weight_scale f32) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3370185124)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar2D) get_point_position(id i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) set_point_position(id i32, position Vector2) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar2D) get_point_weight_scale(id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_weight_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) set_point_weight_scale(id i32, weight_scale f32) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_weight_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStar2D) remove_point(id i32) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar2D) has_point(id i32) bool {
    mut object_out := false
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("has_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) get_point_connections(id i32) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865087369)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) get_point_ids() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3851388692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) set_point_disabled(id i32, disabled bool) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar2D) is_point_disabled(id i32) bool {
    mut object_out := false
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) connect_points(id i32, to_id i32, bidirectional bool) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("connect_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3785370599)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStar2D) disconnect_points(id i32, to_id i32, bidirectional bool) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3785370599)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar2D) are_points_connected(id i32, to_id i32, bidirectional bool) bool {
    mut object_out := false
    classname := StringName.new("AStar2D")
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
pub fn (r &AStar2D) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AStar2D) get_point_capacity() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_capacity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) reserve_space(num_nodes i32) {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("reserve_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStar2D) clear() {
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStar2D) get_closest_point(to_position Vector2, include_disabled bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2300324924)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&to_position)}
    args[1] = unsafe{voidptr(&include_disabled)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStar2D) get_closest_position_in_segment(to_position Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_position_in_segment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_position)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) get_point_path(from_id i32, to_id i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("AStar2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 281625055)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStar2D) get_id_path(from_id i32, to_id i32) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("AStar2D")
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

pub enum AStarGrid2DHeuristic {
    heuristic_euclidean = 0
    heuristic_manhattan = 1
    heuristic_octile = 2
    heuristic_chebyshev = 3
    heuristic_max = 4
}

pub enum AStarGrid2DDiagonalMode {
    diagonal_mode_always = 0
    diagonal_mode_never = 1
    diagonal_mode_at_least_one_walkable = 2
    diagonal_mode_only_if_no_obstacles = 3
    diagonal_mode_max = 4
}

pub type AStarGrid2D = voidptr

pub fn (r &AStarGrid2D) uestimate_cost(from_id Vector2i, to_id Vector2i) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStarGrid2D")
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
pub fn (r &AStarGrid2D) ucompute_cost(from_id Vector2i, to_id Vector2i) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStarGrid2D")
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
pub fn (mut r AStarGrid2D) set_region(region Rect2i) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763793166)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_region() Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_size(size Vector2i) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_offset(offset Vector2) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_cell_size(cell_size Vector2) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_cell_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AStarGrid2D) is_in_bounds(x i32, y i32) bool {
    mut object_out := false
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStarGrid2D) is_in_boundsv(id Vector2i) bool {
    mut object_out := false
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_boundsv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AStarGrid2D) is_dirty() bool {
    mut object_out := false
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_dirty")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) update() {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AStarGrid2D) set_jumping_enabled(enabled bool) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_jumping_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) is_jumping_enabled() bool {
    mut object_out := false
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_jumping_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_diagonal_mode(mode AStarGrid2DDiagonalMode) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_diagonal_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017829798)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_diagonal_mode() AStarGrid2DDiagonalMode {
    mut object_out := AStarGrid2DDiagonalMode.diagonal_mode_always
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_diagonal_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3129282674)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_default_compute_heuristic(heuristic AStarGrid2DHeuristic) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_compute_heuristic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1044375519)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_default_compute_heuristic() AStarGrid2DHeuristic {
    mut object_out := AStarGrid2DHeuristic.heuristic_euclidean
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_compute_heuristic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074731422)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_default_estimate_heuristic(heuristic AStarGrid2DHeuristic) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_estimate_heuristic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1044375519)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_default_estimate_heuristic() AStarGrid2DHeuristic {
    mut object_out := AStarGrid2DHeuristic.heuristic_euclidean
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_estimate_heuristic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074731422)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_point_solid(id Vector2i, solid bool) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_solid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2825551965)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) is_point_solid(id Vector2i) bool {
    mut object_out := false
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_solid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) set_point_weight_scale(id Vector2i, weight_scale f32) {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_weight_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2262553149)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_point_weight_scale(id Vector2i) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_weight_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 719993801)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) clear() {
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AStarGrid2D) get_point_position(id Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 108438297)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) get_point_path(from_id Vector2i, to_id Vector2i) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 690373547)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AStarGrid2D) get_id_path(from_id Vector2i, to_id Vector2i) Array {
    mut object_out := Array{}
    classname := StringName.new("AStarGrid2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_id_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1989391000)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_id)}
    args[1] = unsafe{voidptr(&to_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

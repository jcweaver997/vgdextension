module vgdextension

pub enum CurveTangentMode {
    tangent_free = 0
    tangent_linear = 1
    tangent_mode_count = 2
}

pub struct Curve {
    Resource
}

pub fn (r &Curve) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) set_point_count(count i32) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) add_point(position Vector2, left_tangent f64, right_tangent f64, left_mode CurveTangentMode, right_mode CurveTangentMode) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("add_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2766148617)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&left_tangent)}
    args[2] = unsafe{voidptr(&right_tangent)}
    args[3] = unsafe{voidptr(&left_mode)}
    args[4] = unsafe{voidptr(&right_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) remove_point(index i32) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("remove_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) clear_points() {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("clear_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve) get_point_position(index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) set_point_value(index i32, y f64) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) set_point_offset(index i32, offset f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780573764)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve) sample(offset f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("sample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3919130443)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve) sample_baked(offset f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("sample_baked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3919130443)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve) get_point_left_tangent(index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_left_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve) get_point_right_tangent(index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_right_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve) get_point_left_mode(index i32) CurveTangentMode {
    mut object_out := CurveTangentMode.tangent_free
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_left_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 426950354)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve) get_point_right_mode(index i32) CurveTangentMode {
    mut object_out := CurveTangentMode.tangent_free
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_right_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 426950354)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) set_point_left_tangent(index i32, tangent f64) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_left_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) set_point_right_tangent(index i32, tangent f64) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_right_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) set_point_left_mode(index i32, mode CurveTangentMode) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_left_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217242874)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) set_point_right_mode(index i32, mode CurveTangentMode) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_right_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217242874)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Curve) get_min_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) set_min_value(min f64) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Curve) get_max_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) set_max_value(max f64) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Curve) clean_dupes() {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("clean_dupes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve) bake() {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("bake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve) get_bake_resolution() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve) set_bake_resolution(resolution i32) {
    classname := StringName.new("Curve")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

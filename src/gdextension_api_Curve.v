module vgdextension

pub enum CurveTangentMode as i64 {
    tangent_free = 0
    tangent_linear = 1
    tangent_mode_count = 2
}

@[noinit]
pub struct Curve {
    Resource
}

pub fn (r &Curve) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) set_point_count(count i32) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) add_point(position Vector2, left_tangent f64, right_tangent f64, left_mode CurveTangentMode, right_mode CurveTangentMode) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("add_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 434072736)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&left_tangent)}
    args[2] = unsafe{voidptr(&right_tangent)}
    i64_left_mode := i64(left_mode)
    args[3] = unsafe{voidptr(&i64_left_mode)}
    i64_right_mode := i64(right_mode)
    args[4] = unsafe{voidptr(&i64_right_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) remove_point(index i32) {
    classname := StringName.new("Curve")
    fnname := StringName.new("remove_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) clear_points() {
    classname := StringName.new("Curve")
    fnname := StringName.new("clear_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) get_point_position(index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve")
    fnname := StringName.new("get_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) set_point_value(index i32, y f64) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) set_point_offset(index i32, offset f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780573764)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) sample(offset f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("sample")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3919130443)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) sample_baked(offset f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("sample_baked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3919130443)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) get_point_left_tangent(index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_point_left_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) get_point_right_tangent(index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_point_right_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) get_point_left_mode(index i32) CurveTangentMode {
    mut object_out := i64(CurveTangentMode.tangent_free)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_point_left_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 426950354)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CurveTangentMode(object_out)}
}
pub fn (r &Curve) get_point_right_mode(index i32) CurveTangentMode {
    mut object_out := i64(CurveTangentMode.tangent_free)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_point_right_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 426950354)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CurveTangentMode(object_out)}
}
pub fn (r &Curve) set_point_left_tangent(index i32, tangent f64) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_left_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) set_point_right_tangent(index i32, tangent f64) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_right_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) set_point_left_mode(index i32, mode CurveTangentMode) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_left_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217242874)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) set_point_right_mode(index i32, mode CurveTangentMode) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_point_right_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217242874)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) get_min_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_min_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) set_min_value(min f64) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_min_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) get_max_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_max_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) set_max_value(max f64) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_max_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) clean_dupes() {
    classname := StringName.new("Curve")
    fnname := StringName.new("clean_dupes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) bake() {
    classname := StringName.new("Curve")
    fnname := StringName.new("bake")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve) get_bake_resolution() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve")
    fnname := StringName.new("get_bake_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve) set_bake_resolution(resolution i32) {
    classname := StringName.new("Curve")
    fnname := StringName.new("set_bake_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

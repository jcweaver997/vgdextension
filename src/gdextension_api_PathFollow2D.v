module vgdextension

pub struct PathFollow2D {
    Node2D
}

pub fn (mut r PathFollow2D) set_progress(progress f64) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&progress)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) get_progress() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow2D) set_h_offset(h_offset f64) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&h_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) get_h_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow2D) set_v_offset(v_offset f64) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&v_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) get_v_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow2D) set_progress_ratio(ratio f64) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_progress_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) get_progress_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_progress_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow2D) set_rotates(enabled bool) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) is_rotating() bool {
    mut object_out := false
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_rotating")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow2D) set_cubic_interpolation(enabled bool) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cubic_interpolation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) get_cubic_interpolation() bool {
    mut object_out := false
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cubic_interpolation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow2D) set_loop(loop bool) {
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow2D) has_loop() bool {
    mut object_out := false
    classname := StringName.new("PathFollow2D")
    defer { classname.deinit() }
    fnname := StringName.new("has_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

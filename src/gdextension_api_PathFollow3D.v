module vgdextension

pub enum PathFollow3DRotationMode {
    rotation_none = 0
    rotation_y = 1
    rotation_xy = 2
    rotation_xyz = 3
    rotation_oriented = 4
}

@[noinit]
pub struct PathFollow3D {
    Node3D
}

pub fn (mut r PathFollow3D) set_progress(progress f64) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&progress)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) get_progress() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_h_offset(h_offset f64) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&h_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) get_h_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_v_offset(v_offset f64) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&v_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) get_v_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_progress_ratio(ratio f64) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_progress_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) get_progress_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_progress_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_rotation_mode(rotation_mode PathFollow3DRotationMode) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1640311967)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rotation_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) get_rotation_mode() PathFollow3DRotationMode {
    mut object_out := PathFollow3DRotationMode.rotation_none
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814010545)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_cubic_interpolation(enabled bool) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cubic_interpolation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) get_cubic_interpolation() bool {
    mut object_out := false
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cubic_interpolation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_use_model_front(enabled bool) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_model_front")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) is_using_model_front() bool {
    mut object_out := false
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_model_front")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_loop(loop bool) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) has_loop() bool {
    mut object_out := false
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PathFollow3D) set_tilt_enabled(enabled bool) {
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_tilt_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PathFollow3D) is_tilt_enabled() bool {
    mut object_out := false
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_tilt_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn PathFollow3D.correct_posture(transform Transform3D, rotation_mode PathFollow3DRotationMode) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PathFollow3D")
    defer { classname.deinit() }
    fnname := StringName.new("correct_posture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2686588690)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    args[1] = unsafe{voidptr(&rotation_mode)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

module vgdextension

pub type SkeletonModification2D = voidptr

pub fn (mut r SkeletonModification2D) uexecute(delta f32) {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("_execute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2D) usetup_modification(modification_stack SkeletonModificationStack2D) {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("_setup_modification")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2D) udraw_editor_gizmo() {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("_draw_editor_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2D) set_enabled(enabled bool) {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2D) get_enabled() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2D) get_modification_stack() SkeletonModificationStack2D {
    mut object_out := SkeletonModificationStack2D(unsafe{nil})
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_modification_stack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137761694)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2D) set_is_setup(is_setup bool) {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_is_setup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2D) get_is_setup() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_is_setup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2D) set_execution_mode(execution_mode i32) {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_execution_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2D) get_execution_mode() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_execution_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2D) clamp_angle(angle f32, min f32, max f32, invert bool) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("clamp_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1229502682)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&angle)}
    args[1] = unsafe{voidptr(&min)}
    args[2] = unsafe{voidptr(&max)}
    args[3] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2D) set_editor_draw_gizmo(draw_gizmo bool) {
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_editor_draw_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2D) get_editor_draw_gizmo() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_draw_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

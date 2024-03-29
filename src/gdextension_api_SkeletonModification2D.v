module vgdextension

@[noinit]
pub struct SkeletonModification2D {
    Resource
}

pub interface ISkeletonModification2DExecute {
    mut:
    virt_execute(delta f64)
}

pub fn (r &SkeletonModification2D) uexecute(delta f64) {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("_execute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ISkeletonModification2DSetupModification {
    mut:
    virt_setup_modification(modification_stack SkeletonModificationStack2D)
}

pub fn (r &SkeletonModification2D) usetup_modification(modification_stack SkeletonModificationStack2D) {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("_setup_modification")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&modification_stack.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ISkeletonModification2DDrawEditorGizmo {
    mut:
    virt_draw_editor_gizmo()
}

pub fn (r &SkeletonModification2D) udraw_editor_gizmo() {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("_draw_editor_gizmo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2D) set_enabled(enabled bool) {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2D) get_enabled() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("get_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonModification2D) get_modification_stack() SkeletonModificationStack2D {
    mut object_out := SkeletonModificationStack2D{}
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("get_modification_stack")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137761694)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonModification2D) set_is_setup(is_setup bool) {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("set_is_setup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&is_setup)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2D) get_is_setup() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("get_is_setup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonModification2D) set_execution_mode(execution_mode i32) {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("set_execution_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&execution_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2D) get_execution_mode() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("get_execution_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonModification2D) clamp_angle(angle f64, min f64, max f64, invert bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("clamp_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1229502682)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&angle)}
    args[1] = unsafe{voidptr(&min)}
    args[2] = unsafe{voidptr(&max)}
    args[3] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonModification2D) set_editor_draw_gizmo(draw_gizmo bool) {
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("set_editor_draw_gizmo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draw_gizmo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2D) get_editor_draw_gizmo() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2D")
    fnname := StringName.new("get_editor_draw_gizmo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

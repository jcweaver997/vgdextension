module vgdextension

@[noinit]
pub struct ImporterMeshInstance3D {
    Node3D
}

pub fn (mut r ImporterMeshInstance3D) set_mesh(mesh ImporterMesh) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_mesh() ImporterMesh {
    mut object_out := ImporterMesh{}
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161779525)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_skin(skin Skin) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
    mut args := unsafe { [1]voidptr{} }
    args[0] = skin.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_skin() Skin {
    mut object_out := Skin{}
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_skeleton_path(skeleton_path NodePath) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_skeleton_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_skeleton_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_skeleton_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_layer_mask(layer_mask u32) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_layer_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_layer_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_layer_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_cast_shadows_setting(shadow_casting_setting GeometryInstance3DShadowCastingSetting) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_cast_shadows_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 856677339)
    mut args := unsafe { [1]voidptr{} }
    i64_shadow_casting_setting := i64(shadow_casting_setting)
    args[0] = unsafe{voidptr(&i64_shadow_casting_setting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_cast_shadows_setting() GeometryInstance3DShadowCastingSetting {
    mut object_out := i64(GeometryInstance3DShadowCastingSetting.shadow_casting_setting_off)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_cast_shadows_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383019359)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GeometryInstance3DShadowCastingSetting(object_out)}
}
pub fn (mut r ImporterMeshInstance3D) set_visibility_range_end_margin(distance f64) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_visibility_range_end_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_visibility_range_end_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_visibility_range_end_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_visibility_range_end(distance f64) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_visibility_range_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_visibility_range_end() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_visibility_range_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_visibility_range_begin_margin(distance f64) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_visibility_range_begin_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_visibility_range_begin_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_visibility_range_begin_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_visibility_range_begin(distance f64) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_visibility_range_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_visibility_range_begin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_visibility_range_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_visibility_range_fade_mode(mode GeometryInstance3DVisibilityRangeFadeMode) {
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("set_visibility_range_fade_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440117808)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMeshInstance3D) get_visibility_range_fade_mode() GeometryInstance3DVisibilityRangeFadeMode {
    mut object_out := i64(GeometryInstance3DVisibilityRangeFadeMode.visibility_range_fade_disabled)
    classname := StringName.new("ImporterMeshInstance3D")
    fnname := StringName.new("get_visibility_range_fade_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2067221882)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GeometryInstance3DVisibilityRangeFadeMode(object_out)}
}

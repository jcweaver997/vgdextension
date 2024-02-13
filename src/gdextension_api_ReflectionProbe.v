module vgdextension

pub enum ReflectionProbeUpdateMode {
    update_once = 0
    update_always = 1
}

pub enum ReflectionProbeAmbientMode {
    ambient_disabled = 0
    ambient_environment = 1
    ambient_color = 2
}

@[noinit]
pub struct ReflectionProbe {
    VisualInstance3D
}

pub fn (mut r ReflectionProbe) set_intensity(intensity f64) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_intensity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_ambient_mode(ambient ReflectionProbeAmbientMode) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1748981278)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ambient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_ambient_mode() ReflectionProbeAmbientMode {
    mut object_out := ReflectionProbeAmbientMode.ambient_disabled
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1014607621)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_ambient_color(ambient Color) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ambient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_ambient_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_ambient_color_energy(ambient_energy f64) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_color_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ambient_energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_ambient_color_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_color_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_max_distance(max_distance f64) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_max_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_mesh_lod_threshold(ratio f64) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh_lod_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_mesh_lod_threshold() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh_lod_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_size(size Vector3) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_origin_offset(origin_offset Vector3) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_origin_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&origin_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_origin_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_origin_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_as_interior(enable bool) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) is_set_as_interior() bool {
    mut object_out := false
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("is_set_as_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_enable_box_projection(enable bool) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_box_projection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) is_box_projection_enabled() bool {
    mut object_out := false
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("is_box_projection_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_enable_shadows(enable bool) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_shadows")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) are_shadows_enabled() bool {
    mut object_out := false
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("are_shadows_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_cull_mask(layers u32) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_cull_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReflectionProbe) set_update_mode(mode ReflectionProbeUpdateMode) {
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("set_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4090221187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ReflectionProbe) get_update_mode() ReflectionProbeUpdateMode {
    mut object_out := ReflectionProbeUpdateMode.update_once
    classname := StringName.new("ReflectionProbe")
    defer { classname.deinit() }
    fnname := StringName.new("get_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2367550552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

pub enum Light3DParam {
    param_energy = 0
    param_indirect_energy = 1
    param_volumetric_fog_energy = 2
    param_specular = 3
    param_range = 4
    param_size = 5
    param_attenuation = 6
    param_spot_angle = 7
    param_spot_attenuation = 8
    param_shadow_max_distance = 9
    param_shadow_split_1_offset = 10
    param_shadow_split_2_offset = 11
    param_shadow_split_3_offset = 12
    param_shadow_fade_start = 13
    param_shadow_normal_bias = 14
    param_shadow_bias = 15
    param_shadow_pancake_size = 16
    param_shadow_opacity = 17
    param_shadow_blur = 18
    param_transmittance_bias = 19
    param_intensity = 20
    param_max = 21
}

pub enum Light3DBakeMode {
    bake_disabled = 0
    bake_static = 1
    bake_dynamic = 2
}

pub type Light3D = voidptr

pub fn (mut r Light3D) set_editor_only(editor_only bool) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_editor_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) is_editor_only() bool {
    mut object_out := false
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_editor_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_param(param Light3DParam, value f32) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1722734213)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_param(param Light3DParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1844084987)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_shadow(enabled bool) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) has_shadow() bool {
    mut object_out := false
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_shadow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_negative(enabled bool) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_negative")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) is_negative() bool {
    mut object_out := false
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_negative")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_cull_mask(cull_mask i32) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_enable_distance_fade(enable bool) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_distance_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) is_distance_fade_enabled() bool {
    mut object_out := false
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_distance_fade_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_distance_fade_begin(distance f32) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_distance_fade_begin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_distance_fade_shadow(distance f32) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_shadow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_distance_fade_shadow() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_shadow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_distance_fade_length(distance f32) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_distance_fade_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_color(color Color) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_shadow_reverse_cull_face(enable bool) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_reverse_cull_face")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_shadow_reverse_cull_face() bool {
    mut object_out := false
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_reverse_cull_face")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_bake_mode(bake_mode Light3DBakeMode) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 37739303)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_bake_mode() Light3DBakeMode {
    mut object_out := Light3DBakeMode.bake_disabled
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 371737608)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_projector(projector Texture2D) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_projector")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_projector() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_projector")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Light3D) set_temperature(temperature f32) {
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_temperature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Light3D) get_temperature() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_temperature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Light3D) get_correlated_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Light3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_correlated_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

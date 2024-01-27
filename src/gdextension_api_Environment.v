module vgdextension

pub enum EnvironmentBGMode {
    bg_clear_color = 0
    bg_color = 1
    bg_sky = 2
    bg_canvas = 3
    bg_keep = 4
    bg_camera_feed = 5
    bg_max = 6
}

pub enum EnvironmentAmbientSource {
    ambient_source_bg = 0
    ambient_source_disabled = 1
    ambient_source_color = 2
    ambient_source_sky = 3
}

pub enum EnvironmentReflectionSource {
    reflection_source_bg = 0
    reflection_source_disabled = 1
    reflection_source_sky = 2
}

pub enum EnvironmentToneMapper {
    tone_mapper_linear = 0
    tone_mapper_reinhardt = 1
    tone_mapper_filmic = 2
    tone_mapper_aces = 3
}

pub enum EnvironmentGlowBlendMode {
    glow_blend_mode_additive = 0
    glow_blend_mode_screen = 1
    glow_blend_mode_softlight = 2
    glow_blend_mode_replace = 3
    glow_blend_mode_mix = 4
}

pub enum EnvironmentSDFGIYScale {
    sdfgi_y_scale_50_percent = 0
    sdfgi_y_scale_75_percent = 1
    sdfgi_y_scale_100_percent = 2
}

pub type Environment = voidptr

pub fn (mut r Environment) set_background(mode EnvironmentBGMode) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_background")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071623990)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_background() EnvironmentBGMode {
    mut object_out := EnvironmentBGMode.bg_clear_color
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_background")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1843210413)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sky(sky Sky) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3336722921)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sky() Sky {
    mut object_out := Sky(unsafe{nil})
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177136966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sky_custom_fov(scale f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_custom_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sky_custom_fov() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_custom_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sky_rotation(euler_radians Vector3) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sky_rotation() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_bg_color(color Color) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_bg_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_bg_energy_multiplier(energy f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_bg_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_bg_energy_multiplier() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_bg_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_bg_intensity(energy f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_bg_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_bg_intensity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_bg_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_canvas_max_layer(layer i32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_canvas_max_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_canvas_max_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_canvas_max_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_camera_feed_id(id i32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_feed_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_feed_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ambient_light_color(color Color) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_light_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ambient_light_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_light_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ambient_source(source EnvironmentAmbientSource) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2607780160)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ambient_source() EnvironmentAmbientSource {
    mut object_out := EnvironmentAmbientSource.ambient_source_bg
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 67453933)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ambient_light_energy(energy f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_light_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ambient_light_energy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_light_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ambient_light_sky_contribution(ratio f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ambient_light_sky_contribution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ambient_light_sky_contribution() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ambient_light_sky_contribution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_reflection_source(source EnvironmentReflectionSource) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_reflection_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 299673197)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_reflection_source() EnvironmentReflectionSource {
    mut object_out := EnvironmentReflectionSource.reflection_source_bg
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_reflection_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 777700713)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_tonemapper(mode EnvironmentToneMapper) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_tonemapper")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509116664)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_tonemapper() EnvironmentToneMapper {
    mut object_out := EnvironmentToneMapper.tone_mapper_linear
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_tonemapper")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2908408137)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_tonemap_exposure(exposure f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_tonemap_exposure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_tonemap_exposure() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_tonemap_exposure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_tonemap_white(white f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_tonemap_white")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_tonemap_white() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_tonemap_white")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssr_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssr_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_ssr_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_ssr_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssr_max_steps(max_steps i32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssr_max_steps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssr_max_steps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssr_max_steps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssr_fade_in(fade_in f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssr_fade_in")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssr_fade_in() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssr_fade_in")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssr_fade_out(fade_out f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssr_fade_out")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssr_fade_out() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssr_fade_out")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssr_depth_tolerance(depth_tolerance f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssr_depth_tolerance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssr_depth_tolerance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssr_depth_tolerance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_ssao_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_ssao_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_radius(radius f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_intensity(intensity f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_intensity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_power(power f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_power")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_power() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_power")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_detail(detail f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_detail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_detail() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_detail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_horizon(horizon f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_horizon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_horizon() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_horizon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_sharpness(sharpness f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_sharpness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_direct_light_affect(amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_direct_light_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_direct_light_affect() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_direct_light_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssao_ao_channel_affect(amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssao_ao_channel_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssao_ao_channel_affect() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssao_ao_channel_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssil_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssil_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_ssil_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_ssil_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssil_radius(radius f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssil_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssil_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssil_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssil_intensity(intensity f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssil_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssil_intensity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssil_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssil_sharpness(sharpness f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssil_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssil_sharpness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssil_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_ssil_normal_rejection(normal_rejection f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_ssil_normal_rejection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_ssil_normal_rejection() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_ssil_normal_rejection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_sdfgi_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_sdfgi_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_cascades(amount i32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_cascades")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_cascades() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_cascades")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_min_cell_size(size f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_min_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_min_cell_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_min_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_max_distance(distance f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_max_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_cascade0_distance(distance f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_cascade0_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_cascade0_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_cascade0_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_y_scale(scale EnvironmentSDFGIYScale) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_y_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3608608372)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_y_scale() EnvironmentSDFGIYScale {
    mut object_out := EnvironmentSDFGIYScale.sdfgi_y_scale_50_percent
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_y_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2568002245)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_use_occlusion(enable bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_use_occlusion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_sdfgi_using_occlusion() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_sdfgi_using_occlusion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_bounce_feedback(amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_bounce_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_bounce_feedback() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_bounce_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_read_sky_light(enable bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_read_sky_light")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_sdfgi_reading_sky_light() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_sdfgi_reading_sky_light")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_energy(amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_energy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_normal_bias(bias f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_normal_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_normal_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_normal_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_sdfgi_probe_bias(bias f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdfgi_probe_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_sdfgi_probe_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdfgi_probe_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_glow_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_glow_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_level(idx i32, intensity f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_level(idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_normalized(normalize bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_normalized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_glow_normalized() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_glow_normalized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_intensity(intensity f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_intensity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_strength(strength f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_mix(mix f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_mix() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_bloom(amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_bloom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_bloom() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_bloom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_blend_mode(mode EnvironmentGlowBlendMode) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2561587761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_blend_mode() EnvironmentGlowBlendMode {
    mut object_out := EnvironmentGlowBlendMode.glow_blend_mode_additive
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1529667332)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_hdr_bleed_threshold(threshold f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_hdr_bleed_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_hdr_bleed_threshold() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_hdr_bleed_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_hdr_bleed_scale(scale f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_hdr_bleed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_hdr_bleed_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_hdr_bleed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_hdr_luminance_cap(amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_hdr_luminance_cap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_hdr_luminance_cap() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_hdr_luminance_cap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_map_strength(strength f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_map_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_map_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_map_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_glow_map(mode Texture) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_glow_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790811099)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_glow_map() Texture {
    mut object_out := Texture(unsafe{nil})
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_glow_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4037048985)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_fog_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_fog_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_light_color(light_color Color) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_light_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_light_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_light_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_light_energy(light_energy f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_light_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_light_energy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_light_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_sun_scatter(sun_scatter f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_sun_scatter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_sun_scatter() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_sun_scatter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_density(density f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_density() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_height(height f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_height_density(height_density f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_height_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_height_density() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_height_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_aerial_perspective(aerial_perspective f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_aerial_perspective")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_aerial_perspective() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_aerial_perspective")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_fog_sky_affect(sky_affect f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_fog_sky_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_fog_sky_affect() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_fog_sky_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_volumetric_fog_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_volumetric_fog_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_emission(color Color) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_emission() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_albedo(color Color) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_albedo() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_density(density f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_density() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_emission_energy(begin f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_emission_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_emission_energy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_emission_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_anisotropy(anisotropy f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_anisotropy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_anisotropy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_anisotropy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_length(length f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_detail_spread(detail_spread f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_detail_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_detail_spread() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_detail_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_gi_inject(gi_inject f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_gi_inject")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_gi_inject() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_gi_inject")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_ambient_inject(enabled f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_ambient_inject")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_ambient_inject() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_ambient_inject")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_sky_affect(sky_affect f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_sky_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_sky_affect() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_sky_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_temporal_reprojection_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_temporal_reprojection_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_volumetric_fog_temporal_reprojection_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_volumetric_fog_temporal_reprojection_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_temporal_reprojection_amount(temporal_reprojection_amount f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_volumetric_fog_temporal_reprojection_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_volumetric_fog_temporal_reprojection_amount() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_volumetric_fog_temporal_reprojection_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_adjustment_enabled(enabled bool) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_adjustment_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) is_adjustment_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("is_adjustment_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_adjustment_brightness(brightness f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_adjustment_brightness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_adjustment_brightness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_adjustment_brightness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_adjustment_contrast(contrast f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_adjustment_contrast")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_adjustment_contrast() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_adjustment_contrast")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_adjustment_saturation(saturation f32) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_adjustment_saturation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_adjustment_saturation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_adjustment_saturation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Environment) set_adjustment_color_correction(color_correction Texture) {
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("set_adjustment_color_correction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790811099)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Environment) get_adjustment_color_correction() Texture {
    mut object_out := Texture(unsafe{nil})
    classname := StringName.new("Environment")
    defer { classname.deinit() }
    fnname := StringName.new("get_adjustment_color_correction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4037048985)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

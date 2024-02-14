module vgdextension

pub enum EnvironmentBGMode as i64 {
    bg_clear_color = 0
    bg_color = 1
    bg_sky = 2
    bg_canvas = 3
    bg_keep = 4
    bg_camera_feed = 5
    bg_max = 6
}

pub enum EnvironmentAmbientSource as i64 {
    ambient_source_bg = 0
    ambient_source_disabled = 1
    ambient_source_color = 2
    ambient_source_sky = 3
}

pub enum EnvironmentReflectionSource as i64 {
    reflection_source_bg = 0
    reflection_source_disabled = 1
    reflection_source_sky = 2
}

pub enum EnvironmentToneMapper as i64 {
    tone_mapper_linear = 0
    tone_mapper_reinhardt = 1
    tone_mapper_filmic = 2
    tone_mapper_aces = 3
}

pub enum EnvironmentGlowBlendMode as i64 {
    glow_blend_mode_additive = 0
    glow_blend_mode_screen = 1
    glow_blend_mode_softlight = 2
    glow_blend_mode_replace = 3
    glow_blend_mode_mix = 4
}

pub enum EnvironmentSDFGIYScale as i64 {
    sdfgi_y_scale_50_percent = 0
    sdfgi_y_scale_75_percent = 1
    sdfgi_y_scale_100_percent = 2
}

@[noinit]
pub struct Environment {
    Resource
}

pub fn (mut r Environment) set_background(mode EnvironmentBGMode) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_background")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071623990)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_background() EnvironmentBGMode {
    mut object_out := i64(EnvironmentBGMode.bg_clear_color)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_background")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1843210413)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EnvironmentBGMode(object_out)}
}
pub fn (mut r Environment) set_sky(sky Sky) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sky")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3336722921)
    mut args := unsafe { [1]voidptr{} }
    args[0] = sky.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sky() Sky {
    mut object_out := Sky{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sky")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177136966)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sky_custom_fov(scale f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sky_custom_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sky_custom_fov() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sky_custom_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sky_rotation(euler_radians Vector3) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sky_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&euler_radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sky_rotation() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sky_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_bg_color(color Color) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_bg_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_bg_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_bg_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_bg_energy_multiplier(energy f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_bg_energy_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_bg_energy_multiplier() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_bg_energy_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_bg_intensity(energy f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_bg_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_bg_intensity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_bg_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_canvas_max_layer(layer i32) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_canvas_max_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_canvas_max_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_canvas_max_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_camera_feed_id(id i32) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_camera_feed_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_camera_feed_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ambient_light_color(color Color) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ambient_light_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ambient_light_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ambient_light_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ambient_source(source EnvironmentAmbientSource) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ambient_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2607780160)
    mut args := unsafe { [1]voidptr{} }
    i64_source := i64(source)
    args[0] = unsafe{voidptr(&i64_source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ambient_source() EnvironmentAmbientSource {
    mut object_out := i64(EnvironmentAmbientSource.ambient_source_bg)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ambient_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 67453933)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EnvironmentAmbientSource(object_out)}
}
pub fn (mut r Environment) set_ambient_light_energy(energy f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ambient_light_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ambient_light_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ambient_light_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ambient_light_sky_contribution(ratio f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ambient_light_sky_contribution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ambient_light_sky_contribution() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ambient_light_sky_contribution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_reflection_source(source EnvironmentReflectionSource) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_reflection_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 299673197)
    mut args := unsafe { [1]voidptr{} }
    i64_source := i64(source)
    args[0] = unsafe{voidptr(&i64_source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_reflection_source() EnvironmentReflectionSource {
    mut object_out := i64(EnvironmentReflectionSource.reflection_source_bg)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_reflection_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 777700713)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EnvironmentReflectionSource(object_out)}
}
pub fn (mut r Environment) set_tonemapper(mode EnvironmentToneMapper) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_tonemapper")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509116664)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_tonemapper() EnvironmentToneMapper {
    mut object_out := i64(EnvironmentToneMapper.tone_mapper_linear)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_tonemapper")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2908408137)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EnvironmentToneMapper(object_out)}
}
pub fn (mut r Environment) set_tonemap_exposure(exposure f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_tonemap_exposure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exposure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_tonemap_exposure() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_tonemap_exposure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_tonemap_white(white f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_tonemap_white")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&white)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_tonemap_white() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_tonemap_white")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssr_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssr_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_ssr_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_ssr_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssr_max_steps(max_steps i32) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssr_max_steps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_steps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssr_max_steps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssr_max_steps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssr_fade_in(fade_in f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssr_fade_in")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fade_in)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssr_fade_in() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssr_fade_in")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssr_fade_out(fade_out f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssr_fade_out")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fade_out)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssr_fade_out() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssr_fade_out")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssr_depth_tolerance(depth_tolerance f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssr_depth_tolerance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth_tolerance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssr_depth_tolerance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssr_depth_tolerance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_ssao_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_ssao_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_radius(radius f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_intensity(intensity f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_intensity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_power(power f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_power")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&power)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_power() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_power")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_detail(detail f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_detail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&detail)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_detail() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_detail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_horizon(horizon f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_horizon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&horizon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_horizon() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_horizon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_sharpness(sharpness f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sharpness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_sharpness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_direct_light_affect(amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_direct_light_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_direct_light_affect() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_direct_light_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssao_ao_channel_affect(amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssao_ao_channel_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssao_ao_channel_affect() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssao_ao_channel_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssil_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssil_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_ssil_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_ssil_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssil_radius(radius f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssil_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssil_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssil_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssil_intensity(intensity f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssil_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssil_intensity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssil_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssil_sharpness(sharpness f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssil_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sharpness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssil_sharpness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssil_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_ssil_normal_rejection(normal_rejection f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_ssil_normal_rejection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normal_rejection)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_ssil_normal_rejection() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_ssil_normal_rejection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_sdfgi_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_sdfgi_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_cascades(amount i32) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_cascades")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_cascades() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_cascades")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_min_cell_size(size f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_min_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_min_cell_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_min_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_max_distance(distance f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_max_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_cascade0_distance(distance f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_cascade0_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_cascade0_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_cascade0_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_y_scale(scale EnvironmentSDFGIYScale) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_y_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3608608372)
    mut args := unsafe { [1]voidptr{} }
    i64_scale := i64(scale)
    args[0] = unsafe{voidptr(&i64_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_y_scale() EnvironmentSDFGIYScale {
    mut object_out := i64(EnvironmentSDFGIYScale.sdfgi_y_scale_50_percent)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_y_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2568002245)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EnvironmentSDFGIYScale(object_out)}
}
pub fn (mut r Environment) set_sdfgi_use_occlusion(enable bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_use_occlusion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_sdfgi_using_occlusion() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_sdfgi_using_occlusion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_bounce_feedback(amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_bounce_feedback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_bounce_feedback() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_bounce_feedback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_read_sky_light(enable bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_read_sky_light")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_sdfgi_reading_sky_light() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_sdfgi_reading_sky_light")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_energy(amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_normal_bias(bias f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_normal_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_normal_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_normal_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_sdfgi_probe_bias(bias f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_sdfgi_probe_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_sdfgi_probe_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_sdfgi_probe_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_glow_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_glow_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_level(idx i32, intensity f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_level(idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_normalized(normalize bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_normalized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normalize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_glow_normalized() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_glow_normalized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_intensity(intensity f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_intensity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_strength(strength f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_mix(mix f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_mix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_mix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_mix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_bloom(amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_bloom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_bloom() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_bloom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_blend_mode(mode EnvironmentGlowBlendMode) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2561587761)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_blend_mode() EnvironmentGlowBlendMode {
    mut object_out := i64(EnvironmentGlowBlendMode.glow_blend_mode_additive)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1529667332)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EnvironmentGlowBlendMode(object_out)}
}
pub fn (mut r Environment) set_glow_hdr_bleed_threshold(threshold f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_hdr_bleed_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_hdr_bleed_threshold() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_hdr_bleed_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_hdr_bleed_scale(scale f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_hdr_bleed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_hdr_bleed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_hdr_bleed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_hdr_luminance_cap(amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_hdr_luminance_cap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_hdr_luminance_cap() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_hdr_luminance_cap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_map_strength(strength f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_map_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_map_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_map_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_glow_map(mode Texture) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_glow_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790811099)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mode.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_glow_map() Texture {
    mut object_out := Texture{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_glow_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4037048985)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_fog_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_fog_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_light_color(light_color Color) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_light_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&light_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_light_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_light_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_light_energy(light_energy f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_light_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&light_energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_light_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_light_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_sun_scatter(sun_scatter f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_sun_scatter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sun_scatter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_sun_scatter() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_sun_scatter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_density(density f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_density")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&density)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_density() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_density")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_height(height f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_height_density(height_density f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_height_density")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height_density)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_height_density() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_height_density")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_aerial_perspective(aerial_perspective f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_aerial_perspective")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aerial_perspective)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_aerial_perspective() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_aerial_perspective")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_fog_sky_affect(sky_affect f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_fog_sky_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sky_affect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_fog_sky_affect() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_fog_sky_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_volumetric_fog_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_volumetric_fog_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_emission(color Color) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_emission")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_emission() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_emission")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_albedo(color Color) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_albedo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_albedo() Color {
    mut object_out := Color{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_albedo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_density(density f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_density")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&density)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_density() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_density")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_emission_energy(begin f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_emission_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&begin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_emission_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_emission_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_anisotropy(anisotropy f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_anisotropy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anisotropy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_anisotropy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_anisotropy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_length(length f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_detail_spread(detail_spread f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_detail_spread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&detail_spread)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_detail_spread() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_detail_spread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_gi_inject(gi_inject f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_gi_inject")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gi_inject)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_gi_inject() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_gi_inject")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_ambient_inject(enabled f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_ambient_inject")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_ambient_inject() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_ambient_inject")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_sky_affect(sky_affect f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_sky_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sky_affect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_sky_affect() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_sky_affect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_temporal_reprojection_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_temporal_reprojection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_volumetric_fog_temporal_reprojection_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_volumetric_fog_temporal_reprojection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_volumetric_fog_temporal_reprojection_amount(temporal_reprojection_amount f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_volumetric_fog_temporal_reprojection_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&temporal_reprojection_amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_volumetric_fog_temporal_reprojection_amount() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_volumetric_fog_temporal_reprojection_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_adjustment_enabled(enabled bool) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_adjustment_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) is_adjustment_enabled() bool {
    mut object_out := false
    classname := StringName.new("Environment")
    fnname := StringName.new("is_adjustment_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_adjustment_brightness(brightness f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_adjustment_brightness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&brightness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_adjustment_brightness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_adjustment_brightness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_adjustment_contrast(contrast f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_adjustment_contrast")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contrast)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_adjustment_contrast() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_adjustment_contrast")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_adjustment_saturation(saturation f64) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_adjustment_saturation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&saturation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_adjustment_saturation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Environment")
    fnname := StringName.new("get_adjustment_saturation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Environment) set_adjustment_color_correction(color_correction Texture) {
    classname := StringName.new("Environment")
    fnname := StringName.new("set_adjustment_color_correction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790811099)
    mut args := unsafe { [1]voidptr{} }
    args[0] = color_correction.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Environment) get_adjustment_color_correction() Texture {
    mut object_out := Texture{}
    classname := StringName.new("Environment")
    fnname := StringName.new("get_adjustment_color_correction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4037048985)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

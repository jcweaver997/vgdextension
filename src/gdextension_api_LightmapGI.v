module vgdextension

pub enum LightmapGIBakeQuality as i64 {
    bake_quality_low = 0
    bake_quality_medium = 1
    bake_quality_high = 2
    bake_quality_ultra = 3
}

pub enum LightmapGIGenerateProbes as i64 {
    generate_probes_disabled = 0
    generate_probes_subdiv_4 = 1
    generate_probes_subdiv_8 = 2
    generate_probes_subdiv_16 = 3
    generate_probes_subdiv_32 = 4
}

pub enum LightmapGIBakeError as i64 {
    bake_error_ok = 0
    bake_error_no_scene_root = 1
    bake_error_foreign_data = 2
    bake_error_no_lightmapper = 3
    bake_error_no_save_path = 4
    bake_error_no_meshes = 5
    bake_error_meshes_invalid = 6
    bake_error_cant_create_image = 7
    bake_error_user_aborted = 8
    bake_error_texture_size_too_small = 9
}

pub enum LightmapGIEnvironmentMode as i64 {
    environment_mode_disabled = 0
    environment_mode_scene = 1
    environment_mode_custom_sky = 2
    environment_mode_custom_color = 3
}

@[noinit]
pub struct LightmapGI {
    VisualInstance3D
}

pub fn (r &LightmapGI) set_light_data(data LightmapGIData) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_light_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790597277)
    mut args := unsafe { [1]voidptr{} }
    args[0] = data.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_light_data() LightmapGIData {
    mut object_out := LightmapGIData{}
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_light_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 290354153)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_bake_quality(bake_quality LightmapGIBakeQuality) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_bake_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1192215803)
    mut args := unsafe { [1]voidptr{} }
    i64_bake_quality := i64(bake_quality)
    args[0] = unsafe{voidptr(&i64_bake_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_bake_quality() LightmapGIBakeQuality {
    mut object_out := i64(LightmapGIBakeQuality.bake_quality_low)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_bake_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 688832735)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{LightmapGIBakeQuality(object_out)}
}
pub fn (r &LightmapGI) set_bounces(bounces i32) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bounces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_bounces() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_bounce_indirect_energy(bounce_indirect_energy f64) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_bounce_indirect_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bounce_indirect_energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_bounce_indirect_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_bounce_indirect_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_generate_probes(subdivision LightmapGIGenerateProbes) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_generate_probes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 549981046)
    mut args := unsafe { [1]voidptr{} }
    i64_subdivision := i64(subdivision)
    args[0] = unsafe{voidptr(&i64_subdivision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_generate_probes() LightmapGIGenerateProbes {
    mut object_out := i64(LightmapGIGenerateProbes.generate_probes_disabled)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_generate_probes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3930596226)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{LightmapGIGenerateProbes(object_out)}
}
pub fn (r &LightmapGI) set_bias(bias f64) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_environment_mode(mode LightmapGIEnvironmentMode) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_environment_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2282650285)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_environment_mode() LightmapGIEnvironmentMode {
    mut object_out := i64(LightmapGIEnvironmentMode.environment_mode_disabled)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_environment_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4128646479)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{LightmapGIEnvironmentMode(object_out)}
}
pub fn (r &LightmapGI) set_environment_custom_sky(sky Sky) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_environment_custom_sky")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3336722921)
    mut args := unsafe { [1]voidptr{} }
    args[0] = sky.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_environment_custom_sky() Sky {
    mut object_out := Sky{}
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_environment_custom_sky")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177136966)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_environment_custom_color(color Color) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_environment_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_environment_custom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_environment_custom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_environment_custom_energy(energy f64) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_environment_custom_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_environment_custom_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_environment_custom_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_max_texture_size(max_texture_size i32) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_max_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_texture_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_max_texture_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_max_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_use_denoiser(use_denoiser bool) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_use_denoiser")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_denoiser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) is_using_denoiser() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("is_using_denoiser")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_denoiser_strength(denoiser_strength f64) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_denoiser_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&denoiser_strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_denoiser_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_denoiser_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_interior(enable bool) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) is_interior() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("is_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_directional(directional bool) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_directional")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&directional)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) is_directional() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("is_directional")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_use_texture_for_bounces(use_texture_for_bounces bool) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_use_texture_for_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_texture_for_bounces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) is_using_texture_for_bounces() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("is_using_texture_for_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LightmapGI) set_camera_attributes(camera_attributes CameraAttributes) {
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("set_camera_attributes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    mut args := unsafe { [1]voidptr{} }
    args[0] = camera_attributes.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightmapGI) get_camera_attributes() CameraAttributes {
    mut object_out := CameraAttributes{}
    classname := StringName.new("LightmapGI")
    fnname := StringName.new("get_camera_attributes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

pub enum LightmapGIBakeQuality {
    bake_quality_low = 0
    bake_quality_medium = 1
    bake_quality_high = 2
    bake_quality_ultra = 3
}

pub enum LightmapGIGenerateProbes {
    generate_probes_disabled = 0
    generate_probes_subdiv_4 = 1
    generate_probes_subdiv_8 = 2
    generate_probes_subdiv_16 = 3
    generate_probes_subdiv_32 = 4
}

pub enum LightmapGIBakeError {
    bake_error_ok = 0
    bake_error_no_scene_root = 1
    bake_error_foreign_data = 2
    bake_error_no_lightmapper = 3
    bake_error_no_save_path = 4
    bake_error_no_meshes = 5
    bake_error_meshes_invalid = 6
    bake_error_cant_create_image = 7
    bake_error_user_aborted = 8
}

pub enum LightmapGIEnvironmentMode {
    environment_mode_disabled = 0
    environment_mode_scene = 1
    environment_mode_custom_sky = 2
    environment_mode_custom_color = 3
}

pub type LightmapGI = voidptr

pub fn (mut r LightmapGI) set_light_data(data LightmapGIData) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_light_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1790597277)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_light_data() LightmapGIData {
    mut object_out := LightmapGIData(unsafe{nil})
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_light_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 290354153)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_bake_quality(bake_quality LightmapGIBakeQuality) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1192215803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_bake_quality() LightmapGIBakeQuality {
    mut object_out := LightmapGIBakeQuality.bake_quality_low
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 688832735)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_bounces(bounces i32) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_bounces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_bounces() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_bounces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_generate_probes(subdivision LightmapGIGenerateProbes) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_generate_probes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 549981046)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_generate_probes() LightmapGIGenerateProbes {
    mut object_out := LightmapGIGenerateProbes.generate_probes_disabled
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_generate_probes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3930596226)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_bias(bias f32) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_environment_mode(mode LightmapGIEnvironmentMode) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2282650285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_environment_mode() LightmapGIEnvironmentMode {
    mut object_out := LightmapGIEnvironmentMode.environment_mode_disabled
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4128646479)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_environment_custom_sky(sky Sky) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment_custom_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3336722921)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_environment_custom_sky() Sky {
    mut object_out := Sky(unsafe{nil})
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment_custom_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177136966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_environment_custom_color(color Color) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_environment_custom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_environment_custom_energy(energy f32) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment_custom_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_environment_custom_energy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment_custom_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_max_texture_size(max_texture_size i32) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_max_texture_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_use_denoiser(use_denoiser bool) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_denoiser")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) is_using_denoiser() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_denoiser")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_interior(enable bool) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) is_interior() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("is_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_directional(directional bool) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_directional")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) is_directional() bool {
    mut object_out := false
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("is_directional")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGI) set_camera_attributes(camera_attributes CameraAttributes) {
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightmapGI) get_camera_attributes() CameraAttributes {
    mut object_out := CameraAttributes(unsafe{nil})
    classname := StringName.new("LightmapGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

pub enum BaseMaterial3DTextureParam {
    texture_albedo = 0
    texture_metallic = 1
    texture_roughness = 2
    texture_emission = 3
    texture_normal = 4
    texture_rim = 5
    texture_clearcoat = 6
    texture_flowmap = 7
    texture_ambient_occlusion = 8
    texture_heightmap = 9
    texture_subsurface_scattering = 10
    texture_subsurface_transmittance = 11
    texture_backlight = 12
    texture_refraction = 13
    texture_detail_mask = 14
    texture_detail_albedo = 15
    texture_detail_normal = 16
    texture_orm = 17
    texture_max = 18
}

pub enum BaseMaterial3DTextureFilter {
    texture_filter_nearest = 0
    texture_filter_linear = 1
    texture_filter_nearest_with_mipmaps = 2
    texture_filter_linear_with_mipmaps = 3
    texture_filter_nearest_with_mipmaps_anisotropic = 4
    texture_filter_linear_with_mipmaps_anisotropic = 5
    texture_filter_max = 6
}

pub enum BaseMaterial3DDetailUV {
    detail_uv_1 = 0
    detail_uv_2 = 1
}

pub enum BaseMaterial3DTransparency {
    transparency_disabled = 0
    transparency_alpha = 1
    transparency_alpha_scissor = 2
    transparency_alpha_hash = 3
    transparency_alpha_depth_pre_pass = 4
    transparency_max = 5
}

pub enum BaseMaterial3DShadingMode {
    shading_mode_unshaded = 0
    shading_mode_per_pixel = 1
    shading_mode_per_vertex = 2
    shading_mode_max = 3
}

pub enum BaseMaterial3DFeature {
    feature_emission = 0
    feature_normal_mapping = 1
    feature_rim = 2
    feature_clearcoat = 3
    feature_anisotropy = 4
    feature_ambient_occlusion = 5
    feature_height_mapping = 6
    feature_subsurface_scattering = 7
    feature_subsurface_transmittance = 8
    feature_backlight = 9
    feature_refraction = 10
    feature_detail = 11
    feature_max = 12
}

pub enum BaseMaterial3DBlendMode {
    blend_mode_mix = 0
    blend_mode_add = 1
    blend_mode_sub = 2
    blend_mode_mul = 3
}

pub enum BaseMaterial3DAlphaAntiAliasing {
    alpha_antialiasing_off = 0
    alpha_antialiasing_alpha_to_coverage = 1
    alpha_antialiasing_alpha_to_coverage_and_to_one = 2
}

pub enum BaseMaterial3DDepthDrawMode {
    depth_draw_opaque_only = 0
    depth_draw_always = 1
    depth_draw_disabled = 2
}

pub enum BaseMaterial3DCullMode {
    cull_back = 0
    cull_front = 1
    cull_disabled = 2
}

pub enum BaseMaterial3DFlags {
    flag_disable_depth_test = 0
    flag_albedo_from_vertex_color = 1
    flag_srgb_vertex_color = 2
    flag_use_point_size = 3
    flag_fixed_size = 4
    flag_billboard_keep_scale = 5
    flag_uv1_use_triplanar = 6
    flag_uv2_use_triplanar = 7
    flag_uv1_use_world_triplanar = 8
    flag_uv2_use_world_triplanar = 9
    flag_ao_on_uv2 = 10
    flag_emission_on_uv2 = 11
    flag_albedo_texture_force_srgb = 12
    flag_dont_receive_shadows = 13
    flag_disable_ambient_light = 14
    flag_use_shadow_to_opacity = 15
    flag_use_texture_repeat = 16
    flag_invert_heightmap = 17
    flag_subsurface_mode_skin = 18
    flag_particle_trails_mode = 19
    flag_albedo_texture_msdf = 20
    flag_max = 21
}

pub enum BaseMaterial3DDiffuseMode {
    diffuse_burley = 0
    diffuse_lambert = 1
    diffuse_lambert_wrap = 2
    diffuse_toon = 3
}

pub enum BaseMaterial3DSpecularMode {
    specular_schlick_ggx = 0
    specular_toon = 1
    specular_disabled = 2
}

pub enum BaseMaterial3DBillboardMode {
    billboard_disabled = 0
    billboard_enabled = 1
    billboard_fixed_y = 2
    billboard_particles = 3
}

pub enum BaseMaterial3DTextureChannel {
    texture_channel_red = 0
    texture_channel_green = 1
    texture_channel_blue = 2
    texture_channel_alpha = 3
    texture_channel_grayscale = 4
}

pub enum BaseMaterial3DEmissionOperator {
    emission_op_add = 0
    emission_op_multiply = 1
}

pub enum BaseMaterial3DDistanceFadeMode {
    distance_fade_disabled = 0
    distance_fade_pixel_alpha = 1
    distance_fade_pixel_dither = 2
    distance_fade_object_dither = 3
}

pub type BaseMaterial3D = voidptr

pub fn (mut r BaseMaterial3D) set_albedo(albedo Color) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_albedo() Color {
    mut object_out := Color{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_transparency(transparency BaseMaterial3DTransparency) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transparency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3435651667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_transparency() BaseMaterial3DTransparency {
    mut object_out := BaseMaterial3DTransparency.transparency_disabled
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transparency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990903061)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_alpha_antialiasing(alpha_aa BaseMaterial3DAlphaAntiAliasing) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3212649852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_alpha_antialiasing() BaseMaterial3DAlphaAntiAliasing {
    mut object_out := BaseMaterial3DAlphaAntiAliasing.alpha_antialiasing_off
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2889939400)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_alpha_antialiasing_edge(edge f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_antialiasing_edge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_alpha_antialiasing_edge() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_antialiasing_edge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_shading_mode(shading_mode BaseMaterial3DShadingMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shading_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3368750322)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_shading_mode() BaseMaterial3DShadingMode {
    mut object_out := BaseMaterial3DShadingMode.shading_mode_unshaded
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shading_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2132070559)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_specular(specular f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_specular")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_specular() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_specular")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_metallic(metallic f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_metallic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_metallic() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_metallic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_roughness(roughness f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_roughness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_roughness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_roughness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_emission(emission Color) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_emission() Color {
    mut object_out := Color{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_emission_energy_multiplier(emission_energy_multiplier f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_emission_energy_multiplier() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_emission_intensity(emission_energy_multiplier f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_emission_intensity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_normal_scale(normal_scale f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_normal_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_normal_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_normal_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_rim(rim f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rim")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_rim() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rim")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_rim_tint(rim_tint f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rim_tint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_rim_tint() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rim_tint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_clearcoat(clearcoat f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_clearcoat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_clearcoat() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_clearcoat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_clearcoat_roughness(clearcoat_roughness f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_clearcoat_roughness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_clearcoat_roughness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_clearcoat_roughness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_anisotropy(anisotropy f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_anisotropy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_anisotropy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_anisotropy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_heightmap_scale(heightmap_scale f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_heightmap_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_heightmap_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_heightmap_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_subsurface_scattering_strength(strength f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_subsurface_scattering_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_subsurface_scattering_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_subsurface_scattering_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_transmittance_color(color Color) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transmittance_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_transmittance_color() Color {
    mut object_out := Color{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transmittance_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_transmittance_depth(depth f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transmittance_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_transmittance_depth() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transmittance_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_transmittance_boost(boost f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transmittance_boost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_transmittance_boost() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transmittance_boost")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_backlight(backlight Color) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_backlight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_backlight() Color {
    mut object_out := Color{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_backlight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_refraction(refraction f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_refraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_refraction() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_refraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_point_size(point_size f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_point_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_detail_uv(detail_uv BaseMaterial3DDetailUV) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_detail_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 456801921)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_detail_uv() BaseMaterial3DDetailUV {
    mut object_out := BaseMaterial3DDetailUV.detail_uv_1
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_detail_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2306920512)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_blend_mode(blend_mode BaseMaterial3DBlendMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2830186259)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_blend_mode() BaseMaterial3DBlendMode {
    mut object_out := BaseMaterial3DBlendMode.blend_mode_mix
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4022690962)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_depth_draw_mode(depth_draw_mode BaseMaterial3DDepthDrawMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_draw_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1456584748)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_depth_draw_mode() BaseMaterial3DDepthDrawMode {
    mut object_out := BaseMaterial3DDepthDrawMode.depth_draw_opaque_only
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_draw_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2578197639)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_cull_mode(cull_mode BaseMaterial3DCullMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2338909218)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_cull_mode() BaseMaterial3DCullMode {
    mut object_out := BaseMaterial3DCullMode.cull_back
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1941499586)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_diffuse_mode(diffuse_mode BaseMaterial3DDiffuseMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_diffuse_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1045299638)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_diffuse_mode() BaseMaterial3DDiffuseMode {
    mut object_out := BaseMaterial3DDiffuseMode.diffuse_burley
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_diffuse_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3973617136)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_specular_mode(specular_mode BaseMaterial3DSpecularMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_specular_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 584737147)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_specular_mode() BaseMaterial3DSpecularMode {
    mut object_out := BaseMaterial3DSpecularMode.specular_schlick_ggx
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_specular_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2569953298)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_flag(flag BaseMaterial3DFlags, enable bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3070159527)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_flag(flag BaseMaterial3DFlags) bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410065)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_texture_filter(mode BaseMaterial3DTextureFilter) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 22904437)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_texture_filter() BaseMaterial3DTextureFilter {
    mut object_out := BaseMaterial3DTextureFilter.texture_filter_nearest
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289213076)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_feature(feature BaseMaterial3DFeature, enable bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2819288693)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_feature(feature BaseMaterial3DFeature) bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965241794)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_texture(param BaseMaterial3DTextureParam, texture Texture2D) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 464208135)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_texture(param BaseMaterial3DTextureParam) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 329605813)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_detail_blend_mode(detail_blend_mode BaseMaterial3DBlendMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_detail_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2830186259)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_detail_blend_mode() BaseMaterial3DBlendMode {
    mut object_out := BaseMaterial3DBlendMode.blend_mode_mix
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_detail_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4022690962)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_uv1_scale(scale Vector3) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv1_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_uv1_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv1_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_uv1_offset(offset Vector3) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv1_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_uv1_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv1_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_uv1_triplanar_blend_sharpness(sharpness f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv1_triplanar_blend_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_uv1_triplanar_blend_sharpness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv1_triplanar_blend_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_uv2_scale(scale Vector3) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv2_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_uv2_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv2_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_uv2_offset(offset Vector3) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv2_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_uv2_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv2_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_uv2_triplanar_blend_sharpness(sharpness f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv2_triplanar_blend_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_uv2_triplanar_blend_sharpness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv2_triplanar_blend_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_billboard_mode(mode BaseMaterial3DBillboardMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_billboard_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4202036497)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_billboard_mode() BaseMaterial3DBillboardMode {
    mut object_out := BaseMaterial3DBillboardMode.billboard_disabled
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_billboard_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283840139)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_particles_anim_h_frames(frames i32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_anim_h_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_particles_anim_h_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_anim_h_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_particles_anim_v_frames(frames i32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_anim_v_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_particles_anim_v_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_anim_v_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_particles_anim_loop(loop bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_anim_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_particles_anim_loop() bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_anim_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_heightmap_deep_parallax(enable bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_heightmap_deep_parallax")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) is_heightmap_deep_parallax_enabled() bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_heightmap_deep_parallax_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_heightmap_deep_parallax_min_layers(layer i32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_heightmap_deep_parallax_min_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_heightmap_deep_parallax_min_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_heightmap_deep_parallax_min_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_heightmap_deep_parallax_max_layers(layer i32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_heightmap_deep_parallax_max_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_heightmap_deep_parallax_max_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_heightmap_deep_parallax_max_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_heightmap_deep_parallax_flip_tangent(flip bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_heightmap_deep_parallax_flip_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_heightmap_deep_parallax_flip_tangent() bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_heightmap_deep_parallax_flip_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_heightmap_deep_parallax_flip_binormal(flip bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_heightmap_deep_parallax_flip_binormal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_heightmap_deep_parallax_flip_binormal() bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_heightmap_deep_parallax_flip_binormal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_grow(amount f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_grow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_grow() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_grow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_emission_operator(operator BaseMaterial3DEmissionOperator) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3825128922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_emission_operator() BaseMaterial3DEmissionOperator {
    mut object_out := BaseMaterial3DEmissionOperator.emission_op_add
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_operator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974205018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_ao_light_affect(amount f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ao_light_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_ao_light_affect() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_ao_light_affect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_alpha_scissor_threshold(threshold f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_scissor_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_alpha_scissor_threshold() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_scissor_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_alpha_hash_scale(threshold f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_hash_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_alpha_hash_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_hash_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_grow_enabled(enable bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_grow_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) is_grow_enabled() bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_grow_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_metallic_texture_channel(channel BaseMaterial3DTextureChannel) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_metallic_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 744167988)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_metallic_texture_channel() BaseMaterial3DTextureChannel {
    mut object_out := BaseMaterial3DTextureChannel.texture_channel_red
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_metallic_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 568133867)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_roughness_texture_channel(channel BaseMaterial3DTextureChannel) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_roughness_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 744167988)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_roughness_texture_channel() BaseMaterial3DTextureChannel {
    mut object_out := BaseMaterial3DTextureChannel.texture_channel_red
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_roughness_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 568133867)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_ao_texture_channel(channel BaseMaterial3DTextureChannel) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ao_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 744167988)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_ao_texture_channel() BaseMaterial3DTextureChannel {
    mut object_out := BaseMaterial3DTextureChannel.texture_channel_red
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_ao_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 568133867)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_refraction_texture_channel(channel BaseMaterial3DTextureChannel) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_refraction_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 744167988)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_refraction_texture_channel() BaseMaterial3DTextureChannel {
    mut object_out := BaseMaterial3DTextureChannel.texture_channel_red
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_refraction_texture_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 568133867)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_proximity_fade_enabled(enabled bool) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_proximity_fade_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) is_proximity_fade_enabled() bool {
    mut object_out := false
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_proximity_fade_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_proximity_fade_distance(distance f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_proximity_fade_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_proximity_fade_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_proximity_fade_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_msdf_pixel_range(range f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_msdf_pixel_range() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_msdf_outline_size(size f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_msdf_outline_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_msdf_outline_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_msdf_outline_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_distance_fade(mode BaseMaterial3DDistanceFadeMode) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1379478617)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_distance_fade() BaseMaterial3DDistanceFadeMode {
    mut object_out := BaseMaterial3DDistanceFadeMode.distance_fade_disabled
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2694575734)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_distance_fade_max_distance(distance f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_distance_fade_max_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseMaterial3D) set_distance_fade_min_distance(distance f32) {
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_min_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BaseMaterial3D) get_distance_fade_min_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("BaseMaterial3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_min_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

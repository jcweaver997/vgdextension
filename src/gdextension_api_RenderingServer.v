module vgdextension

pub enum RenderingServerTextureLayeredType {
    texture_layered_2d_array = 0
    texture_layered_cubemap = 1
    texture_layered_cubemap_array = 2
}

pub enum RenderingServerCubeMapLayer {
    cubemap_layer_left = 0
    cubemap_layer_right = 1
    cubemap_layer_bottom = 2
    cubemap_layer_top = 3
    cubemap_layer_front = 4
    cubemap_layer_back = 5
}

pub enum RenderingServerShaderMode {
    shader_spatial = 0
    shader_canvas_item = 1
    shader_particles = 2
    shader_sky = 3
    shader_fog = 4
    shader_max = 5
}

pub enum RenderingServerArrayType {
    array_vertex = 0
    array_normal = 1
    array_tangent = 2
    array_color = 3
    array_tex_uv = 4
    array_tex_uv2 = 5
    array_custom0 = 6
    array_custom1 = 7
    array_custom2 = 8
    array_custom3 = 9
    array_bones = 10
    array_weights = 11
    array_index = 12
    array_max = 13
}

pub enum RenderingServerArrayCustomFormat {
    array_custom_rgba8_unorm = 0
    array_custom_rgba8_snorm = 1
    array_custom_rg_half = 2
    array_custom_rgba_half = 3
    array_custom_r_float = 4
    array_custom_rg_float = 5
    array_custom_rgb_float = 6
    array_custom_rgba_float = 7
    array_custom_max = 8
}

pub enum RenderingServerArrayFormat {
    array_format_vertex = 1
    array_format_normal = 2
    array_format_tangent = 4
    array_format_color = 8
    array_format_tex_uv = 16
    array_format_tex_uv2 = 32
    array_format_custom0 = 64
    array_format_custom1 = 128
    array_format_custom2 = 256
    array_format_custom3 = 512
    array_format_bones = 1024
    array_format_weights = 2048
    array_format_index = 4096
    array_format_blend_shape_mask = 7
    array_format_custom_base = 13
    array_format_custom_bits = 3
    array_format_custom2_shift = 19
    array_format_custom3_shift = 22
    array_compress_flags_base = 25
    array_flag_use_2d_vertices = 33554432
    array_flag_use_dynamic_update = 67108864
    array_flag_use_8_bone_weights = 134217728
    array_flag_uses_empty_vertex_array = 268435456
}

pub enum RenderingServerPrimitiveType {
    primitive_points = 0
    primitive_lines = 1
    primitive_line_strip = 2
    primitive_triangles = 3
    primitive_triangle_strip = 4
    primitive_max = 5
}

pub enum RenderingServerBlendShapeMode {
    blend_shape_mode_normalized = 0
    blend_shape_mode_relative = 1
}

pub enum RenderingServerMultimeshTransformFormat {
    multimesh_transform_2d = 0
    multimesh_transform_3d = 1
}

pub enum RenderingServerLightProjectorFilter {
    light_projector_filter_nearest = 0
    light_projector_filter_linear = 1
    light_projector_filter_nearest_mipmaps = 2
    light_projector_filter_linear_mipmaps = 3
    light_projector_filter_nearest_mipmaps_anisotropic = 4
    light_projector_filter_linear_mipmaps_anisotropic = 5
}

pub enum RenderingServerLightType {
    light_directional = 0
    light_omni = 1
    light_spot = 2
}

pub enum RenderingServerLightParam {
    light_param_energy = 0
    light_param_indirect_energy = 1
    light_param_volumetric_fog_energy = 2
    light_param_specular = 3
    light_param_range = 4
    light_param_size = 5
    light_param_attenuation = 6
    light_param_spot_angle = 7
    light_param_spot_attenuation = 8
    light_param_shadow_max_distance = 9
    light_param_shadow_split_1_offset = 10
    light_param_shadow_split_2_offset = 11
    light_param_shadow_split_3_offset = 12
    light_param_shadow_fade_start = 13
    light_param_shadow_normal_bias = 14
    light_param_shadow_bias = 15
    light_param_shadow_pancake_size = 16
    light_param_shadow_opacity = 17
    light_param_shadow_blur = 18
    light_param_transmittance_bias = 19
    light_param_intensity = 20
    light_param_max = 21
}

pub enum RenderingServerLightBakeMode {
    light_bake_disabled = 0
    light_bake_static = 1
    light_bake_dynamic = 2
}

pub enum RenderingServerLightOmniShadowMode {
    light_omni_shadow_dual_paraboloid = 0
    light_omni_shadow_cube = 1
}

pub enum RenderingServerLightDirectionalShadowMode {
    light_directional_shadow_orthogonal = 0
    light_directional_shadow_parallel_2_splits = 1
    light_directional_shadow_parallel_4_splits = 2
}

pub enum RenderingServerLightDirectionalSkyMode {
    light_directional_sky_mode_light_and_sky = 0
    light_directional_sky_mode_light_only = 1
    light_directional_sky_mode_sky_only = 2
}

pub enum RenderingServerShadowQuality {
    shadow_quality_hard = 0
    shadow_quality_soft_very_low = 1
    shadow_quality_soft_low = 2
    shadow_quality_soft_medium = 3
    shadow_quality_soft_high = 4
    shadow_quality_soft_ultra = 5
    shadow_quality_max = 6
}

pub enum RenderingServerReflectionProbeUpdateMode {
    reflection_probe_update_once = 0
    reflection_probe_update_always = 1
}

pub enum RenderingServerReflectionProbeAmbientMode {
    reflection_probe_ambient_disabled = 0
    reflection_probe_ambient_environment = 1
    reflection_probe_ambient_color = 2
}

pub enum RenderingServerDecalTexture {
    decal_texture_albedo = 0
    decal_texture_normal = 1
    decal_texture_orm = 2
    decal_texture_emission = 3
    decal_texture_max = 4
}

pub enum RenderingServerDecalFilter {
    decal_filter_nearest = 0
    decal_filter_linear = 1
    decal_filter_nearest_mipmaps = 2
    decal_filter_linear_mipmaps = 3
    decal_filter_nearest_mipmaps_anisotropic = 4
    decal_filter_linear_mipmaps_anisotropic = 5
}

pub enum RenderingServerVoxelGIQuality {
    voxel_gi_quality_low = 0
    voxel_gi_quality_high = 1
}

pub enum RenderingServerParticlesMode {
    particles_mode_2d = 0
    particles_mode_3d = 1
}

pub enum RenderingServerParticlesTransformAlign {
    particles_transform_align_disabled = 0
    particles_transform_align_z_billboard = 1
    particles_transform_align_y_to_velocity = 2
    particles_transform_align_z_billboard_y_to_velocity = 3
}

pub enum RenderingServerParticlesDrawOrder {
    particles_draw_order_index = 0
    particles_draw_order_lifetime = 1
    particles_draw_order_reverse_lifetime = 2
    particles_draw_order_view_depth = 3
}

pub enum RenderingServerParticlesCollisionType {
    particles_collision_type_sphere_attract = 0
    particles_collision_type_box_attract = 1
    particles_collision_type_vector_field_attract = 2
    particles_collision_type_sphere_collide = 3
    particles_collision_type_box_collide = 4
    particles_collision_type_sdf_collide = 5
    particles_collision_type_heightfield_collide = 6
}

pub enum RenderingServerParticlesCollisionHeightfieldResolution {
    particles_collision_heightfield_resolution_256 = 0
    particles_collision_heightfield_resolution_512 = 1
    particles_collision_heightfield_resolution_1024 = 2
    particles_collision_heightfield_resolution_2048 = 3
    particles_collision_heightfield_resolution_4096 = 4
    particles_collision_heightfield_resolution_8192 = 5
    particles_collision_heightfield_resolution_max = 6
}

pub enum RenderingServerFogVolumeShape {
    fog_volume_shape_ellipsoid = 0
    fog_volume_shape_cone = 1
    fog_volume_shape_cylinder = 2
    fog_volume_shape_box = 3
    fog_volume_shape_world = 4
    fog_volume_shape_max = 5
}

pub enum RenderingServerViewportScaling3DMode {
    viewport_scaling_3d_mode_bilinear = 0
    viewport_scaling_3d_mode_fsr = 1
    viewport_scaling_3d_mode_max = 2
}

pub enum RenderingServerViewportUpdateMode {
    viewport_update_disabled = 0
    viewport_update_once = 1
    viewport_update_when_visible = 2
    viewport_update_when_parent_visible = 3
    viewport_update_always = 4
}

pub enum RenderingServerViewportClearMode {
    viewport_clear_always = 0
    viewport_clear_never = 1
    viewport_clear_only_next_frame = 2
}

pub enum RenderingServerViewportEnvironmentMode {
    viewport_environment_disabled = 0
    viewport_environment_enabled = 1
    viewport_environment_inherit = 2
    viewport_environment_max = 3
}

pub enum RenderingServerViewportSDFOversize {
    viewport_sdf_oversize_100_percent = 0
    viewport_sdf_oversize_120_percent = 1
    viewport_sdf_oversize_150_percent = 2
    viewport_sdf_oversize_200_percent = 3
    viewport_sdf_oversize_max = 4
}

pub enum RenderingServerViewportSDFScale {
    viewport_sdf_scale_100_percent = 0
    viewport_sdf_scale_50_percent = 1
    viewport_sdf_scale_25_percent = 2
    viewport_sdf_scale_max = 3
}

pub enum RenderingServerViewportMSAA {
    viewport_msaa_disabled = 0
    viewport_msaa_2x = 1
    viewport_msaa_4x = 2
    viewport_msaa_8x = 3
    viewport_msaa_max = 4
}

pub enum RenderingServerViewportScreenSpaceAA {
    viewport_screen_space_aa_disabled = 0
    viewport_screen_space_aa_fxaa = 1
    viewport_screen_space_aa_max = 2
}

pub enum RenderingServerViewportOcclusionCullingBuildQuality {
    viewport_occlusion_build_quality_low = 0
    viewport_occlusion_build_quality_medium = 1
    viewport_occlusion_build_quality_high = 2
}

pub enum RenderingServerViewportRenderInfo {
    viewport_render_info_objects_in_frame = 0
    viewport_render_info_primitives_in_frame = 1
    viewport_render_info_draw_calls_in_frame = 2
    viewport_render_info_max = 3
}

pub enum RenderingServerViewportRenderInfoType {
    viewport_render_info_type_visible = 0
    viewport_render_info_type_shadow = 1
    viewport_render_info_type_max = 2
}

pub enum RenderingServerViewportDebugDraw {
    viewport_debug_draw_disabled = 0
    viewport_debug_draw_unshaded = 1
    viewport_debug_draw_lighting = 2
    viewport_debug_draw_overdraw = 3
    viewport_debug_draw_wireframe = 4
    viewport_debug_draw_normal_buffer = 5
    viewport_debug_draw_voxel_gi_albedo = 6
    viewport_debug_draw_voxel_gi_lighting = 7
    viewport_debug_draw_voxel_gi_emission = 8
    viewport_debug_draw_shadow_atlas = 9
    viewport_debug_draw_directional_shadow_atlas = 10
    viewport_debug_draw_scene_luminance = 11
    viewport_debug_draw_ssao = 12
    viewport_debug_draw_ssil = 13
    viewport_debug_draw_pssm_splits = 14
    viewport_debug_draw_decal_atlas = 15
    viewport_debug_draw_sdfgi = 16
    viewport_debug_draw_sdfgi_probes = 17
    viewport_debug_draw_gi_buffer = 18
    viewport_debug_draw_disable_lod = 19
    viewport_debug_draw_cluster_omni_lights = 20
    viewport_debug_draw_cluster_spot_lights = 21
    viewport_debug_draw_cluster_decals = 22
    viewport_debug_draw_cluster_reflection_probes = 23
    viewport_debug_draw_occluders = 24
    viewport_debug_draw_motion_vectors = 25
}

pub enum RenderingServerViewportVRSMode {
    viewport_vrs_disabled = 0
    viewport_vrs_texture = 1
    viewport_vrs_xr = 2
    viewport_vrs_max = 3
}

pub enum RenderingServerSkyMode {
    sky_mode_automatic = 0
    sky_mode_quality = 1
    sky_mode_incremental = 2
    sky_mode_realtime = 3
}

pub enum RenderingServerEnvironmentBG {
    env_bg_clear_color = 0
    env_bg_color = 1
    env_bg_sky = 2
    env_bg_canvas = 3
    env_bg_keep = 4
    env_bg_camera_feed = 5
    env_bg_max = 6
}

pub enum RenderingServerEnvironmentAmbientSource {
    env_ambient_source_bg = 0
    env_ambient_source_disabled = 1
    env_ambient_source_color = 2
    env_ambient_source_sky = 3
}

pub enum RenderingServerEnvironmentReflectionSource {
    env_reflection_source_bg = 0
    env_reflection_source_disabled = 1
    env_reflection_source_sky = 2
}

pub enum RenderingServerEnvironmentGlowBlendMode {
    env_glow_blend_mode_additive = 0
    env_glow_blend_mode_screen = 1
    env_glow_blend_mode_softlight = 2
    env_glow_blend_mode_replace = 3
    env_glow_blend_mode_mix = 4
}

pub enum RenderingServerEnvironmentToneMapper {
    env_tone_mapper_linear = 0
    env_tone_mapper_reinhard = 1
    env_tone_mapper_filmic = 2
    env_tone_mapper_aces = 3
}

pub enum RenderingServerEnvironmentSSRRoughnessQuality {
    env_ssr_roughness_quality_disabled = 0
    env_ssr_roughness_quality_low = 1
    env_ssr_roughness_quality_medium = 2
    env_ssr_roughness_quality_high = 3
}

pub enum RenderingServerEnvironmentSSAOQuality {
    env_ssao_quality_very_low = 0
    env_ssao_quality_low = 1
    env_ssao_quality_medium = 2
    env_ssao_quality_high = 3
    env_ssao_quality_ultra = 4
}

pub enum RenderingServerEnvironmentSSILQuality {
    env_ssil_quality_very_low = 0
    env_ssil_quality_low = 1
    env_ssil_quality_medium = 2
    env_ssil_quality_high = 3
    env_ssil_quality_ultra = 4
}

pub enum RenderingServerEnvironmentSDFGIYScale {
    env_sdfgi_y_scale_50_percent = 0
    env_sdfgi_y_scale_75_percent = 1
    env_sdfgi_y_scale_100_percent = 2
}

pub enum RenderingServerEnvironmentSDFGIRayCount {
    env_sdfgi_ray_count_4 = 0
    env_sdfgi_ray_count_8 = 1
    env_sdfgi_ray_count_16 = 2
    env_sdfgi_ray_count_32 = 3
    env_sdfgi_ray_count_64 = 4
    env_sdfgi_ray_count_96 = 5
    env_sdfgi_ray_count_128 = 6
    env_sdfgi_ray_count_max = 7
}

pub enum RenderingServerEnvironmentSDFGIFramesToConverge {
    env_sdfgi_converge_in_5_frames = 0
    env_sdfgi_converge_in_10_frames = 1
    env_sdfgi_converge_in_15_frames = 2
    env_sdfgi_converge_in_20_frames = 3
    env_sdfgi_converge_in_25_frames = 4
    env_sdfgi_converge_in_30_frames = 5
    env_sdfgi_converge_max = 6
}

pub enum RenderingServerEnvironmentSDFGIFramesToUpdateLight {
    env_sdfgi_update_light_in_1_frame = 0
    env_sdfgi_update_light_in_2_frames = 1
    env_sdfgi_update_light_in_4_frames = 2
    env_sdfgi_update_light_in_8_frames = 3
    env_sdfgi_update_light_in_16_frames = 4
    env_sdfgi_update_light_max = 5
}

pub enum RenderingServerSubSurfaceScatteringQuality {
    sub_surface_scattering_quality_disabled = 0
    sub_surface_scattering_quality_low = 1
    sub_surface_scattering_quality_medium = 2
    sub_surface_scattering_quality_high = 3
}

pub enum RenderingServerDOFBokehShape {
    dof_bokeh_box = 0
    dof_bokeh_hexagon = 1
    dof_bokeh_circle = 2
}

pub enum RenderingServerDOFBlurQuality {
    dof_blur_quality_very_low = 0
    dof_blur_quality_low = 1
    dof_blur_quality_medium = 2
    dof_blur_quality_high = 3
}

pub enum RenderingServerInstanceType {
    instance_none = 0
    instance_mesh = 1
    instance_multimesh = 2
    instance_particles = 3
    instance_particles_collision = 4
    instance_light = 5
    instance_reflection_probe = 6
    instance_decal = 7
    instance_voxel_gi = 8
    instance_lightmap = 9
    instance_occluder = 10
    instance_visiblity_notifier = 11
    instance_fog_volume = 12
    instance_max = 13
    instance_geometry_mask = 14
}

pub enum RenderingServerInstanceFlags {
    instance_flag_use_baked_light = 0
    instance_flag_use_dynamic_gi = 1
    instance_flag_draw_next_frame_if_visible = 2
    instance_flag_ignore_occlusion_culling = 3
    instance_flag_max = 4
}

pub enum RenderingServerShadowCastingSetting {
    shadow_casting_setting_off = 0
    shadow_casting_setting_on = 1
    shadow_casting_setting_double_sided = 2
    shadow_casting_setting_shadows_only = 3
}

pub enum RenderingServerVisibilityRangeFadeMode {
    visibility_range_fade_disabled = 0
    visibility_range_fade_self = 1
    visibility_range_fade_dependencies = 2
}

pub enum RenderingServerBakeChannels {
    bake_channel_albedo_alpha = 0
    bake_channel_normal = 1
    bake_channel_orm = 2
    bake_channel_emission = 3
}

pub enum RenderingServerCanvasTextureChannel {
    canvas_texture_channel_diffuse = 0
    canvas_texture_channel_normal = 1
    canvas_texture_channel_specular = 2
}

pub enum RenderingServerNinePatchAxisMode {
    nine_patch_stretch = 0
    nine_patch_tile = 1
    nine_patch_tile_fit = 2
}

pub enum RenderingServerCanvasItemTextureFilter {
    canvas_item_texture_filter_default = 0
    canvas_item_texture_filter_nearest = 1
    canvas_item_texture_filter_linear = 2
    canvas_item_texture_filter_nearest_with_mipmaps = 3
    canvas_item_texture_filter_linear_with_mipmaps = 4
    canvas_item_texture_filter_nearest_with_mipmaps_anisotropic = 5
    canvas_item_texture_filter_linear_with_mipmaps_anisotropic = 6
    canvas_item_texture_filter_max = 7
}

pub enum RenderingServerCanvasItemTextureRepeat {
    canvas_item_texture_repeat_default = 0
    canvas_item_texture_repeat_disabled = 1
    canvas_item_texture_repeat_enabled = 2
    canvas_item_texture_repeat_mirror = 3
    canvas_item_texture_repeat_max = 4
}

pub enum RenderingServerCanvasGroupMode {
    canvas_group_mode_disabled = 0
    canvas_group_mode_clip_only = 1
    canvas_group_mode_clip_and_draw = 2
    canvas_group_mode_transparent = 3
}

pub enum RenderingServerCanvasLightMode {
    canvas_light_mode_point = 0
    canvas_light_mode_directional = 1
}

pub enum RenderingServerCanvasLightBlendMode {
    canvas_light_blend_mode_add = 0
    canvas_light_blend_mode_sub = 1
    canvas_light_blend_mode_mix = 2
}

pub enum RenderingServerCanvasLightShadowFilter {
    canvas_light_filter_none = 0
    canvas_light_filter_pcf5 = 1
    canvas_light_filter_pcf13 = 2
    canvas_light_filter_max = 3
}

pub enum RenderingServerCanvasOccluderPolygonCullMode {
    canvas_occluder_polygon_cull_disabled = 0
    canvas_occluder_polygon_cull_clockwise = 1
    canvas_occluder_polygon_cull_counter_clockwise = 2
}

pub enum RenderingServerGlobalShaderParameterType {
    global_var_type_bool = 0
    global_var_type_bvec2 = 1
    global_var_type_bvec3 = 2
    global_var_type_bvec4 = 3
    global_var_type_int = 4
    global_var_type_ivec2 = 5
    global_var_type_ivec3 = 6
    global_var_type_ivec4 = 7
    global_var_type_rect2i = 8
    global_var_type_uint = 9
    global_var_type_uvec2 = 10
    global_var_type_uvec3 = 11
    global_var_type_uvec4 = 12
    global_var_type_float = 13
    global_var_type_vec2 = 14
    global_var_type_vec3 = 15
    global_var_type_vec4 = 16
    global_var_type_color = 17
    global_var_type_rect2 = 18
    global_var_type_mat2 = 19
    global_var_type_mat3 = 20
    global_var_type_mat4 = 21
    global_var_type_transform_2d = 22
    global_var_type_transform = 23
    global_var_type_sampler2d = 24
    global_var_type_sampler2darray = 25
    global_var_type_sampler3d = 26
    global_var_type_samplercube = 27
    global_var_type_max = 28
}

pub enum RenderingServerRenderingInfo {
    rendering_info_total_objects_in_frame = 0
    rendering_info_total_primitives_in_frame = 1
    rendering_info_total_draw_calls_in_frame = 2
    rendering_info_texture_mem_used = 3
    rendering_info_buffer_mem_used = 4
    rendering_info_video_mem_used = 5
}

pub enum RenderingServerFeatures {
    feature_shaders = 0
    feature_multithreaded = 1
}

pub struct RenderingServer {
    Object
}

pub fn RenderingServer.get_singleton() RenderingServer {
    sn := StringName.new("RenderingServer")
    defer {sn.deinit()}
    o := RenderingServer{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r RenderingServer) texture_2d_create(image Image) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2010018390)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_2d_layered_create(layers Array, layered_type RenderingServerTextureLayeredType) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_layered_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 913689023)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    args[1] = unsafe{voidptr(&layered_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_3d_create(format ImageFormat, width i32, height i32, depth i32, mipmaps bool, data Array) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_3d_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4036838706)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    args[3] = unsafe{voidptr(&depth)}
    args[4] = unsafe{voidptr(&mipmaps)}
    args[5] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_proxy_create(base RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_proxy_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 41030802)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_2d_update(texture RID, image Image, layer i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 999539803)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = image.ptr
    args[2] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) texture_3d_update(texture RID, data Array) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_3d_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) texture_proxy_update(texture RID, proxy_to RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_proxy_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&proxy_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) texture_2d_placeholder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_placeholder_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_2d_layered_placeholder_create(layered_type RenderingServerTextureLayeredType) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_layered_placeholder_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1394585590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layered_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_3d_placeholder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_3d_placeholder_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) texture_2d_get(texture RID) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4206205781)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) texture_2d_layer_get(texture RID, layer i32) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_2d_layer_get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2705440895)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) texture_3d_get(texture RID) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_3d_get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_replace(texture RID, by_texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_replace")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&by_texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) texture_set_size_override(texture RID, width i32, height i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_set_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) texture_set_path(texture RID, path String) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_set_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) texture_get_path(texture RID) String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) texture_set_force_redraw_if_visible(texture RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_set_force_redraw_if_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) texture_get_rd_texture(texture RID, srgb bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_get_rd_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2790148051)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&srgb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) texture_get_native_handle(texture RID, srgb bool) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("texture_get_native_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1834114100)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&srgb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) shader_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) shader_set_code(shader RID, code String) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_set_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) shader_set_path_hint(shader RID, path String) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_set_path_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) shader_get_code(shader RID) String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_get_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) get_shader_parameter_list(shader RID) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_shader_parameter_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) shader_get_parameter_default(shader RID, name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_get_parameter_default")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) shader_set_default_texture_parameter(shader RID, name StringName, texture RID, index i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_set_default_texture_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3864903085)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) shader_get_default_texture_parameter(shader RID, name StringName, index i32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("shader_get_default_texture_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2523186822)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) material_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("material_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) material_set_shader(shader_material RID, shader RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("material_set_shader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader_material)}
    args[1] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) material_set_param(material RID, parameter StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("material_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3477296213)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&parameter)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) material_get_param(material RID, parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("material_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) material_set_render_priority(material RID, priority i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("material_set_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) material_set_next_pass(material RID, next_material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("material_set_next_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&next_material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) mesh_create_from_surfaces(surfaces Array, blend_shape_count i32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_create_from_surfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4007581507)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surfaces)}
    args[1] = unsafe{voidptr(&blend_shape_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_offset(format RenderingServerArrayFormat, vertex_count i32, array_index i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_format_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981368685)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    args[2] = unsafe{voidptr(&array_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_vertex_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_format_vertex_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_attribute_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_format_attribute_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_skin_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_format_skin_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_add_surface(mesh RID, surface Dictionary) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_add_surface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) mesh_add_surface_from_arrays(mesh RID, primitive RenderingServerPrimitiveType, arrays Array, blend_shapes Array, lods Dictionary, compress_format RenderingServerArrayFormat) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_add_surface_from_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1247008646)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&primitive)}
    args[2] = unsafe{voidptr(&arrays)}
    args[3] = unsafe{voidptr(&blend_shapes)}
    args[4] = unsafe{voidptr(&lods)}
    args[5] = unsafe{voidptr(&compress_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) mesh_get_blend_shape_count(mesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_get_blend_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_set_blend_shape_mode(mesh RID, mode RenderingServerBlendShapeMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_set_blend_shape_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1294662092)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) mesh_get_blend_shape_mode(mesh RID) RenderingServerBlendShapeMode {
    mut object_out := RenderingServerBlendShapeMode.blend_shape_mode_normalized
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_get_blend_shape_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4282291819)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_surface_set_material(mesh RID, surface i32, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) mesh_surface_get_material(mesh RID, surface i32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_get_surface(mesh RID, surface i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_get_surface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 186674697)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_arrays(mesh RID, surface i32) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_blend_shape_arrays(mesh RID, surface i32) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_get_blend_shape_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) mesh_get_surface_count(mesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_get_surface_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_set_custom_aabb(mesh RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_set_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) mesh_get_custom_aabb(mesh RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_get_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) mesh_clear(mesh RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) mesh_surface_update_vertex_region(mesh RID, surface i32, offset i32, data PackedByteArray) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_update_vertex_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900195149)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) mesh_surface_update_attribute_region(mesh RID, surface i32, offset i32, data PackedByteArray) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_update_attribute_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900195149)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) mesh_surface_update_skin_region(mesh RID, surface i32, offset i32, data PackedByteArray) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_surface_update_skin_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900195149)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) mesh_set_shadow_mesh(mesh RID, shadow_mesh RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("mesh_set_shadow_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&shadow_mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) multimesh_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) multimesh_allocate_data(multimesh RID, instances i32, transform_format RenderingServerMultimeshTransformFormat, color_format bool, custom_data_format bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_allocate_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 283685892)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&instances)}
    args[2] = unsafe{voidptr(&transform_format)}
    args[3] = unsafe{voidptr(&color_format)}
    args[4] = unsafe{voidptr(&custom_data_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) multimesh_get_instance_count(multimesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_get_instance_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) multimesh_set_mesh(multimesh RID, mesh RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) multimesh_instance_set_transform(multimesh RID, index i32, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) multimesh_instance_set_transform_2d(multimesh RID, index i32, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_set_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) multimesh_instance_set_color(multimesh RID, index i32, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 176975443)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) multimesh_instance_set_custom_data(multimesh RID, index i32, custom_data Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_set_custom_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 176975443)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&custom_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) multimesh_get_mesh(multimesh RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) multimesh_get_aabb(multimesh RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_transform(multimesh RID, index i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_transform_2d(multimesh RID, index i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_get_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_color(multimesh RID, index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2946315076)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_custom_data(multimesh RID, index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_instance_get_custom_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2946315076)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) multimesh_set_visible_instances(multimesh RID, visible i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_set_visible_instances")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) multimesh_get_visible_instances(multimesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_get_visible_instances")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) multimesh_set_buffer(multimesh RID, buffer PackedFloat32Array) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_set_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2960552364)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) multimesh_get_buffer(multimesh RID) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("multimesh_get_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3964669176)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) skeleton_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) skeleton_allocate_data(skeleton RID, bones i32, is_2d_skeleton bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_allocate_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904426712)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bones)}
    args[2] = unsafe{voidptr(&is_2d_skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) skeleton_get_bone_count(skeleton RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_get_bone_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) skeleton_bone_set_transform(skeleton RID, bone i32, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_bone_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) skeleton_bone_get_transform(skeleton RID, bone i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_bone_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) skeleton_bone_set_transform_2d(skeleton RID, bone i32, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_bone_set_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) skeleton_bone_get_transform_2d(skeleton RID, bone i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_bone_get_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) skeleton_set_base_transform_2d(skeleton RID, base_transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("skeleton_set_base_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&base_transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) directional_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("directional_light_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) omni_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("omni_light_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) spot_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("spot_light_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) light_set_color(light RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_param(light RID, param RenderingServerLightParam, value f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501936875)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_shadow(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_shadow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_projector(light RID, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_projector")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_negative(light RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_negative")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_cull_mask(light RID, mask u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_distance_fade(decal RID, enabled bool, begin f64, shadow f64, length f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_distance_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622292572)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&begin)}
    args[3] = unsafe{voidptr(&shadow)}
    args[4] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_reverse_cull_face_mode(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_reverse_cull_face_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_bake_mode(light RID, bake_mode RenderingServerLightBakeMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_bake_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1048525260)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&bake_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_set_max_sdfgi_cascade(light RID, cascade u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_set_max_sdfgi_cascade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&cascade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_omni_set_shadow_mode(light RID, mode RenderingServerLightOmniShadowMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_omni_set_shadow_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2552677200)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_directional_set_shadow_mode(light RID, mode RenderingServerLightDirectionalShadowMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_directional_set_shadow_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 380462970)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_directional_set_blend_splits(light RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_directional_set_blend_splits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_directional_set_sky_mode(light RID, mode RenderingServerLightDirectionalSkyMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_directional_set_sky_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2559740754)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) light_projectors_set_filter(filter RenderingServerLightProjectorFilter) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("light_projectors_set_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 43944325)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) positional_soft_shadow_filter_set_quality(quality RenderingServerShadowQuality) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("positional_soft_shadow_filter_set_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613045266)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) directional_soft_shadow_filter_set_quality(quality RenderingServerShadowQuality) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("directional_soft_shadow_filter_set_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613045266)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) directional_shadow_atlas_set_size(size i32, is_16bits bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("directional_shadow_atlas_set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&is_16bits)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) reflection_probe_set_update_mode(probe RID, mode RenderingServerReflectionProbeUpdateMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3853670147)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_intensity(probe RID, intensity f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_ambient_mode(probe RID, mode RenderingServerReflectionProbeAmbientMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_ambient_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 184163074)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_ambient_color(probe RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_ambient_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_ambient_energy(probe RID, energy f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_ambient_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_max_distance(probe RID, distance f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_size(probe RID, size Vector3) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_origin_offset(probe RID, offset Vector3) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_origin_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_as_interior(probe RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_as_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_enable_box_projection(probe RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_enable_box_projection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_enable_shadows(probe RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_enable_shadows")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_cull_mask(probe RID, layers u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_resolution(probe RID, resolution i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) reflection_probe_set_mesh_lod_threshold(probe RID, pixels f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("reflection_probe_set_mesh_lod_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&pixels)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) decal_set_size(decal RID, size Vector3) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_texture(decal RID, type_name RenderingServerDecalTexture, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3953344054)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_emission_energy(decal RID, energy f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_emission_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_albedo_mix(decal RID, albedo_mix f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_albedo_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&albedo_mix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_modulate(decal RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_cull_mask(decal RID, mask u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_distance_fade(decal RID, enabled bool, begin f64, length f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_distance_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2972769666)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&begin)}
    args[3] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_fade(decal RID, above f64, below f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&above)}
    args[2] = unsafe{voidptr(&below)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decal_set_normal_fade(decal RID, fade f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decal_set_normal_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&fade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) decals_set_filter(filter RenderingServerDecalFilter) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("decals_set_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3519875702)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) gi_set_use_half_resolution(half_resolution bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("gi_set_use_half_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&half_resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) voxel_gi_allocate_data(voxel_gi RID, to_cell_xform Transform3D, aabb AABB, octree_size Vector3i, octree_cells PackedByteArray, data_cells PackedByteArray, distance_field PackedByteArray, level_counts PackedInt32Array) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_allocate_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108223027)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&to_cell_xform)}
    args[2] = unsafe{voidptr(&aabb)}
    args[3] = unsafe{voidptr(&octree_size)}
    args[4] = unsafe{voidptr(&octree_cells)}
    args[5] = unsafe{voidptr(&data_cells)}
    args[6] = unsafe{voidptr(&distance_field)}
    args[7] = unsafe{voidptr(&level_counts)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) voxel_gi_get_octree_size(voxel_gi RID) Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_get_octree_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2607699645)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_octree_cells(voxel_gi RID) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_get_octree_cells")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3348040486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_data_cells(voxel_gi RID) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_get_data_cells")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3348040486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_distance_field(voxel_gi RID) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_get_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3348040486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_level_counts(voxel_gi RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_get_level_counts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_to_cell_xform(voxel_gi RID) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_get_to_cell_xform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128465797)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) voxel_gi_set_dynamic_range(voxel_gi RID, range f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_dynamic_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_propagation(voxel_gi RID, amount f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_propagation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_energy(voxel_gi RID, energy f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_baked_exposure_normalization(voxel_gi RID, baked_exposure f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_baked_exposure_normalization")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&baked_exposure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_bias(voxel_gi RID, bias f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_normal_bias(voxel_gi RID, bias f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_normal_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_interior(voxel_gi RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_use_two_bounces(voxel_gi RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_use_two_bounces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) voxel_gi_set_quality(quality RenderingServerVoxelGIQuality) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("voxel_gi_set_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1538689978)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) lightmap_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) lightmap_set_textures(lightmap RID, light RID, uses_sh bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_set_textures")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2646464759)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&light)}
    args[2] = unsafe{voidptr(&uses_sh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) lightmap_set_probe_bounds(lightmap RID, bounds AABB) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_set_probe_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&bounds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) lightmap_set_probe_interior(lightmap RID, interior bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_set_probe_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&interior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) lightmap_set_probe_capture_data(lightmap RID, points PackedVector3Array, point_sh PackedColorArray, tetrahedra PackedInt32Array, bsp_tree PackedInt32Array) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_set_probe_capture_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3217845880)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&point_sh)}
    args[3] = unsafe{voidptr(&tetrahedra)}
    args[4] = unsafe{voidptr(&bsp_tree)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_points(lightmap RID) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_get_probe_capture_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 808965560)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_sh(lightmap RID) PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_get_probe_capture_sh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1569415609)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_tetrahedra(lightmap RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_get_probe_capture_tetrahedra")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_bsp_tree(lightmap RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_get_probe_capture_bsp_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) lightmap_set_baked_exposure_normalization(lightmap RID, baked_exposure f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_set_baked_exposure_normalization")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&baked_exposure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) lightmap_set_probe_capture_update_speed(speed f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_set_probe_capture_update_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) particles_set_mode(particles RID, mode RenderingServerParticlesMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3492270028)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_emitting(particles RID, emitting bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&emitting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_get_emitting(particles RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_get_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) particles_set_amount(particles RID, amount i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_lifetime(particles RID, lifetime f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&lifetime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_one_shot(particles RID, one_shot bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&one_shot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_pre_process_time(particles RID, time f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_explosiveness_ratio(particles RID, ratio f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_randomness_ratio(particles RID, ratio f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_custom_aabb(particles RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_speed_scale(particles RID, scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_use_local_coordinates(particles RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_process_material(particles RID, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_process_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_fixed_fps(particles RID, fps i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_interpolate(particles RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_interpolate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_fractional_delta(particles RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_collision_base_size(particles RID, size f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_collision_base_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_transform_align(particles RID, align RenderingServerParticlesTransformAlign) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_transform_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3264971368)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&align)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_trails(particles RID, enable bool, length_sec f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_trails")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2010054925)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&length_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_trail_bind_poses(particles RID, bind_poses Array) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_trail_bind_poses")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&bind_poses)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_is_inactive(particles RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_is_inactive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) particles_request_process(particles RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_request_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_restart(particles RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_restart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_subemitter(particles RID, subemitter_particles RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_subemitter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&subemitter_particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_emit(particles RID, transform Transform3D, velocity Vector3, color Color, custom Color, emit_flags u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_emit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4043136117)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&velocity)}
    args[3] = unsafe{voidptr(&color)}
    args[4] = unsafe{voidptr(&custom)}
    args[5] = unsafe{voidptr(&emit_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_draw_order(particles RID, order RenderingServerParticlesDrawOrder) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 935028487)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_draw_passes(particles RID, count i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_draw_passes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_set_draw_pass_mesh(particles RID, pass i32, mesh RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_draw_pass_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&pass)}
    args[2] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_get_current_aabb(particles RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_get_current_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3952830260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) particles_set_emission_transform(particles RID, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_set_emission_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) particles_collision_set_collision_type(particles_collision RID, type_name RenderingServerParticlesCollisionType) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_collision_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497044930)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_cull_mask(particles_collision RID, mask u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_sphere_radius(particles_collision RID, radius f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_sphere_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_box_extents(particles_collision RID, extents Vector3) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_box_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&extents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_attractor_strength(particles_collision RID, strength f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_attractor_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_attractor_directionality(particles_collision RID, amount f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_attractor_directionality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_attractor_attenuation(particles_collision RID, curve f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_attractor_attenuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&curve)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_field_texture(particles_collision RID, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_field_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_height_field_update(particles_collision RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_height_field_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) particles_collision_set_height_field_resolution(particles_collision RID, resolution RenderingServerParticlesCollisionHeightfieldResolution) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("particles_collision_set_height_field_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 962977297)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) fog_volume_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("fog_volume_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) fog_volume_set_shape(fog_volume RID, shape RenderingServerFogVolumeShape) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("fog_volume_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3818703106)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&fog_volume)}
    args[1] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) fog_volume_set_size(fog_volume RID, size Vector3) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("fog_volume_set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&fog_volume)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) fog_volume_set_material(fog_volume RID, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("fog_volume_set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&fog_volume)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) visibility_notifier_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("visibility_notifier_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) visibility_notifier_set_aabb(notifier RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("visibility_notifier_set_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&notifier)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) visibility_notifier_set_callbacks(notifier RID, enter_callable Callable, exit_callable Callable) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("visibility_notifier_set_callbacks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2689735388)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&notifier)}
    args[1] = unsafe{voidptr(&enter_callable)}
    args[2] = unsafe{voidptr(&exit_callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) occluder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("occluder_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) occluder_set_mesh(occluder RID, vertices PackedVector3Array, indices PackedInt32Array) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("occluder_set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3854404263)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&vertices)}
    args[2] = unsafe{voidptr(&indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) camera_set_perspective(camera RID, fovy_degrees f64, z_near f64, z_far f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_perspective")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 157498339)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&fovy_degrees)}
    args[2] = unsafe{voidptr(&z_near)}
    args[3] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_orthogonal(camera RID, size f64, z_near f64, z_far f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_orthogonal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 157498339)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&z_near)}
    args[3] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_frustum(camera RID, size f64, offset Vector2, z_near f64, z_far f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1889878953)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&z_near)}
    args[4] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_transform(camera RID, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_cull_mask(camera RID, layers u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_environment(camera RID, env RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&env)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_camera_attributes(camera RID, effects RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&effects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_set_use_vertical_aspect(camera RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_set_use_vertical_aspect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_use_xr(viewport RID, use_xr bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_use_xr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&use_xr)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_size(viewport RID, width i32, height i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_active(viewport RID, active bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_parent_viewport(viewport RID, parent_viewport RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_parent_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&parent_viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_attach_to_screen(viewport RID, rect Rect2, screen i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_attach_to_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1278520651)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_render_direct_to_screen(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_render_direct_to_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_canvas_cull_mask(viewport RID, canvas_cull_mask u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_canvas_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas_cull_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_scaling_3d_mode(viewport RID, scaling_3d_mode RenderingServerViewportScaling3DMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_scaling_3d_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2386524376)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&scaling_3d_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_scaling_3d_scale(viewport RID, scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_scaling_3d_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_fsr_sharpness(viewport RID, sharpness f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_fsr_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&sharpness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_texture_mipmap_bias(viewport RID, mipmap_bias f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_texture_mipmap_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&mipmap_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_update_mode(viewport RID, update_mode RenderingServerViewportUpdateMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161116010)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&update_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_clear_mode(viewport RID, clear_mode RenderingServerViewportClearMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_clear_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3628367896)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&clear_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) viewport_get_render_target(viewport RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_get_render_target")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) viewport_get_texture(viewport RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_disable_3d(viewport RID, disable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_disable_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_disable_2d(viewport RID, disable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_disable_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_environment_mode(viewport RID, mode RenderingServerViewportEnvironmentMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_environment_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2196892182)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_attach_camera(viewport RID, camera RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_attach_camera")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&camera)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_scenario(viewport RID, scenario RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_scenario")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_attach_canvas(viewport RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_attach_canvas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_remove_canvas(viewport RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_remove_canvas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_snap_2d_transforms_to_pixel(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_snap_2d_transforms_to_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_snap_2d_vertices_to_pixel(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_snap_2d_vertices_to_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_default_canvas_item_texture_filter(viewport RID, filter RenderingServerCanvasItemTextureFilter) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_default_canvas_item_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155129294)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_default_canvas_item_texture_repeat(viewport RID, repeat RenderingServerCanvasItemTextureRepeat) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_default_canvas_item_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1652956681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_canvas_transform(viewport RID, canvas RID, offset Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_canvas_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3608606053)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_canvas_stacking(viewport RID, canvas RID, layer i32, sublayer i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_canvas_stacking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3713930247)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&sublayer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_transparent_background(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_transparent_background")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_global_canvas_transform(viewport RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_global_canvas_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_sdf_oversize_and_scale(viewport RID, oversize RenderingServerViewportSDFOversize, scale RenderingServerViewportSDFScale) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_sdf_oversize_and_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1329198632)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&oversize)}
    args[2] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_positional_shadow_atlas_size(viewport RID, size i32, use_16_bits bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_positional_shadow_atlas_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904426712)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&use_16_bits)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_positional_shadow_atlas_quadrant_subdivision(viewport RID, quadrant i32, subdivision i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_positional_shadow_atlas_quadrant_subdivision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&quadrant)}
    args[2] = unsafe{voidptr(&subdivision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_msaa_3d(viewport RID, msaa RenderingServerViewportMSAA) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_msaa_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3764433340)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&msaa)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_msaa_2d(viewport RID, msaa RenderingServerViewportMSAA) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_msaa_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3764433340)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&msaa)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_screen_space_aa(viewport RID, mode RenderingServerViewportScreenSpaceAA) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_screen_space_aa")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1447279591)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_use_taa(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_use_taa")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_use_debanding(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_use_occlusion_culling(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_use_occlusion_culling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_occlusion_rays_per_thread(rays_per_thread i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_occlusion_rays_per_thread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rays_per_thread)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_occlusion_culling_build_quality(quality RenderingServerViewportOcclusionCullingBuildQuality) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_occlusion_culling_build_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2069725696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_get_render_info(viewport RID, type_name RenderingServerViewportRenderInfoType, info RenderingServerViewportRenderInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_get_render_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041262392)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_debug_draw(viewport RID, draw RenderingServerViewportDebugDraw) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_debug_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2089420930)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&draw)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_measure_render_time(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_measure_render_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) viewport_get_measured_render_time_cpu(viewport RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_get_measured_render_time_cpu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) viewport_get_measured_render_time_gpu(viewport RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_get_measured_render_time_gpu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_vrs_mode(viewport RID, mode RenderingServerViewportVRSMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_vrs_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 398809874)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) viewport_set_vrs_texture(viewport RID, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("viewport_set_vrs_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) sky_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sky_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) sky_set_radiance_size(sky RID, radiance_size i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sky_set_radiance_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&radiance_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) sky_set_mode(sky RID, mode RenderingServerSkyMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sky_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3279019937)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) sky_set_material(sky RID, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sky_set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) sky_bake_panorama(sky RID, energy f64, bake_irradiance bool, size Vector2i) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sky_bake_panorama")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3875285818)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&energy)}
    args[2] = unsafe{voidptr(&bake_irradiance)}
    args[3] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) environment_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) environment_set_background(env RID, bg RenderingServerEnvironmentBG) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_background")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937328877)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&bg)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sky(env RID, sky RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&sky)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sky_custom_fov(env RID, scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sky_custom_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sky_orientation(env RID, orientation Basis) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sky_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1735850857)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_bg_color(env RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_bg_energy(env RID, multiplier f64, exposure_value f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_bg_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&multiplier)}
    args[2] = unsafe{voidptr(&exposure_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_canvas_max_layer(env RID, max_layer i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_canvas_max_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&max_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_ambient_light(env RID, color Color, ambient RenderingServerEnvironmentAmbientSource, energy f64, sky_contibution f64, reflection_source RenderingServerEnvironmentReflectionSource) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_ambient_light")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 491659071)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&ambient)}
    args[3] = unsafe{voidptr(&energy)}
    args[4] = unsafe{voidptr(&sky_contibution)}
    args[5] = unsafe{voidptr(&reflection_source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_glow(env RID, enable bool, levels PackedFloat32Array, intensity f64, strength f64, mix f64, bloom_threshold f64, blend_mode RenderingServerEnvironmentGlowBlendMode, hdr_bleed_threshold f64, hdr_bleed_scale f64, hdr_luminance_cap f64, glow_map_strength f64, glow_map RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_glow")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2421724940)
    mut args := unsafe { [13]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&levels)}
    args[3] = unsafe{voidptr(&intensity)}
    args[4] = unsafe{voidptr(&strength)}
    args[5] = unsafe{voidptr(&mix)}
    args[6] = unsafe{voidptr(&bloom_threshold)}
    args[7] = unsafe{voidptr(&blend_mode)}
    args[8] = unsafe{voidptr(&hdr_bleed_threshold)}
    args[9] = unsafe{voidptr(&hdr_bleed_scale)}
    args[10] = unsafe{voidptr(&hdr_luminance_cap)}
    args[11] = unsafe{voidptr(&glow_map_strength)}
    args[12] = unsafe{voidptr(&glow_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_tonemap(env RID, tone_mapper RenderingServerEnvironmentToneMapper, exposure f64, white f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_tonemap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2914312638)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&tone_mapper)}
    args[2] = unsafe{voidptr(&exposure)}
    args[3] = unsafe{voidptr(&white)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_adjustment(env RID, enable bool, brightness f64, contrast f64, saturation f64, use_1d_color_correction bool, color_correction RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_adjustment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 876799838)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&brightness)}
    args[3] = unsafe{voidptr(&contrast)}
    args[4] = unsafe{voidptr(&saturation)}
    args[5] = unsafe{voidptr(&use_1d_color_correction)}
    args[6] = unsafe{voidptr(&color_correction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_ssr(env RID, enable bool, max_steps i32, fade_in f64, fade_out f64, depth_tolerance f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_ssr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3607294374)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&max_steps)}
    args[3] = unsafe{voidptr(&fade_in)}
    args[4] = unsafe{voidptr(&fade_out)}
    args[5] = unsafe{voidptr(&depth_tolerance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_ssao(env RID, enable bool, radius f64, intensity f64, power f64, detail f64, horizon f64, sharpness f64, light_affect f64, ao_channel_affect f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_ssao")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3994732740)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&radius)}
    args[3] = unsafe{voidptr(&intensity)}
    args[4] = unsafe{voidptr(&power)}
    args[5] = unsafe{voidptr(&detail)}
    args[6] = unsafe{voidptr(&horizon)}
    args[7] = unsafe{voidptr(&sharpness)}
    args[8] = unsafe{voidptr(&light_affect)}
    args[9] = unsafe{voidptr(&ao_channel_affect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_fog(env RID, enable bool, light_color Color, light_energy f64, sun_scatter f64, density f64, height f64, height_density f64, aerial_perspective f64, sky_affect f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_fog")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2793577733)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&light_color)}
    args[3] = unsafe{voidptr(&light_energy)}
    args[4] = unsafe{voidptr(&sun_scatter)}
    args[5] = unsafe{voidptr(&density)}
    args[6] = unsafe{voidptr(&height)}
    args[7] = unsafe{voidptr(&height_density)}
    args[8] = unsafe{voidptr(&aerial_perspective)}
    args[9] = unsafe{voidptr(&sky_affect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sdfgi(env RID, enable bool, cascades i32, min_cell_size f64, y_scale RenderingServerEnvironmentSDFGIYScale, use_occlusion bool, bounce_feedback f64, read_sky bool, energy f64, normal_bias f64, probe_bias f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sdfgi")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3519144388)
    mut args := unsafe { [11]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&cascades)}
    args[3] = unsafe{voidptr(&min_cell_size)}
    args[4] = unsafe{voidptr(&y_scale)}
    args[5] = unsafe{voidptr(&use_occlusion)}
    args[6] = unsafe{voidptr(&bounce_feedback)}
    args[7] = unsafe{voidptr(&read_sky)}
    args[8] = unsafe{voidptr(&energy)}
    args[9] = unsafe{voidptr(&normal_bias)}
    args[10] = unsafe{voidptr(&probe_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_volumetric_fog(env RID, enable bool, density f64, albedo Color, emission Color, emission_energy f64, anisotropy f64, length f64, p_detail_spread f64, gi_inject f64, temporal_reprojection bool, temporal_reprojection_amount f64, ambient_inject f64, sky_affect f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_volumetric_fog")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1553633833)
    mut args := unsafe { [14]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&density)}
    args[3] = unsafe{voidptr(&albedo)}
    args[4] = unsafe{voidptr(&emission)}
    args[5] = unsafe{voidptr(&emission_energy)}
    args[6] = unsafe{voidptr(&anisotropy)}
    args[7] = unsafe{voidptr(&length)}
    args[8] = unsafe{voidptr(&p_detail_spread)}
    args[9] = unsafe{voidptr(&gi_inject)}
    args[10] = unsafe{voidptr(&temporal_reprojection)}
    args[11] = unsafe{voidptr(&temporal_reprojection_amount)}
    args[12] = unsafe{voidptr(&ambient_inject)}
    args[13] = unsafe{voidptr(&sky_affect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_glow_set_use_bicubic_upscale(enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_glow_set_use_bicubic_upscale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_ssr_roughness_quality(quality RenderingServerEnvironmentSSRRoughnessQuality) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_ssr_roughness_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1190026788)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_ssao_quality(quality RenderingServerEnvironmentSSAOQuality, half_size bool, adaptive_target f64, blur_passes i32, fadeout_from f64, fadeout_to f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_ssao_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 189753569)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    args[1] = unsafe{voidptr(&half_size)}
    args[2] = unsafe{voidptr(&adaptive_target)}
    args[3] = unsafe{voidptr(&blur_passes)}
    args[4] = unsafe{voidptr(&fadeout_from)}
    args[5] = unsafe{voidptr(&fadeout_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_ssil_quality(quality RenderingServerEnvironmentSSILQuality, half_size bool, adaptive_target f64, blur_passes i32, fadeout_from f64, fadeout_to f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_ssil_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1713836683)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    args[1] = unsafe{voidptr(&half_size)}
    args[2] = unsafe{voidptr(&adaptive_target)}
    args[3] = unsafe{voidptr(&blur_passes)}
    args[4] = unsafe{voidptr(&fadeout_from)}
    args[5] = unsafe{voidptr(&fadeout_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sdfgi_ray_count(ray_count RenderingServerEnvironmentSDFGIRayCount) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sdfgi_ray_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 340137951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ray_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sdfgi_frames_to_converge(frames RenderingServerEnvironmentSDFGIFramesToConverge) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sdfgi_frames_to_converge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2182444374)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_sdfgi_frames_to_update_light(frames RenderingServerEnvironmentSDFGIFramesToUpdateLight) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_sdfgi_frames_to_update_light")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1251144068)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_volumetric_fog_volume_size(size i32, depth i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_volumetric_fog_volume_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_set_volumetric_fog_filter_active(active bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_set_volumetric_fog_filter_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) environment_bake_panorama(environment RID, bake_irradiance bool, size Vector2i) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("environment_bake_panorama")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2452908646)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&environment)}
    args[1] = unsafe{voidptr(&bake_irradiance)}
    args[2] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) screen_space_roughness_limiter_set_active(enable bool, amount f64, limit f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_space_roughness_limiter_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 916716790)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    args[1] = unsafe{voidptr(&amount)}
    args[2] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) sub_surface_scattering_set_quality(quality RenderingServerSubSurfaceScatteringQuality) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sub_surface_scattering_set_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 64571803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) sub_surface_scattering_set_scale(scale f64, depth_scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("sub_surface_scattering_set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017552074)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    args[1] = unsafe{voidptr(&depth_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_attributes_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_attributes_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) camera_attributes_set_dof_blur_quality(quality RenderingServerDOFBlurQuality, use_jitter bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_attributes_set_dof_blur_quality")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2220136795)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    args[1] = unsafe{voidptr(&use_jitter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_attributes_set_dof_blur_bokeh_shape(shape RenderingServerDOFBokehShape) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_attributes_set_dof_blur_bokeh_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1205058394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_attributes_set_dof_blur(camera_attributes RID, far_enable bool, far_distance f64, far_transition f64, near_enable bool, near_distance f64, near_transition f64, amount f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_attributes_set_dof_blur")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 316272616)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&camera_attributes)}
    args[1] = unsafe{voidptr(&far_enable)}
    args[2] = unsafe{voidptr(&far_distance)}
    args[3] = unsafe{voidptr(&far_transition)}
    args[4] = unsafe{voidptr(&near_enable)}
    args[5] = unsafe{voidptr(&near_distance)}
    args[6] = unsafe{voidptr(&near_transition)}
    args[7] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_attributes_set_exposure(camera_attributes RID, multiplier f64, normalization f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_attributes_set_exposure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&camera_attributes)}
    args[1] = unsafe{voidptr(&multiplier)}
    args[2] = unsafe{voidptr(&normalization)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) camera_attributes_set_auto_exposure(camera_attributes RID, enable bool, min_sensitivity f64, max_sensitivity f64, speed f64, scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("camera_attributes_set_auto_exposure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4266986332)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&camera_attributes)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&min_sensitivity)}
    args[3] = unsafe{voidptr(&max_sensitivity)}
    args[4] = unsafe{voidptr(&speed)}
    args[5] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) scenario_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("scenario_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) scenario_set_environment(scenario RID, environment RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("scenario_set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scenario)}
    args[1] = unsafe{voidptr(&environment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) scenario_set_fallback_environment(scenario RID, environment RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("scenario_set_fallback_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scenario)}
    args[1] = unsafe{voidptr(&environment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) scenario_set_camera_attributes(scenario RID, effects RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("scenario_set_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scenario)}
    args[1] = unsafe{voidptr(&effects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_create2(base RID, scenario RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_create2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 746547085)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) instance_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) instance_set_base(instance RID, base RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_base")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&base)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_scenario(instance RID, scenario RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_scenario")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_layer_mask(instance RID, mask u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_layer_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_pivot_data(instance RID, sorting_offset f64, use_aabb_center bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_pivot_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1280615259)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&sorting_offset)}
    args[2] = unsafe{voidptr(&use_aabb_center)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_transform(instance RID, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_attach_object_instance_id(instance RID, id u64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_blend_shape_weight(instance RID, shape i32, weight f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_blend_shape_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_surface_override_material(instance RID, surface i32, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_surface_override_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_visible(instance RID, visible bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_transparency(instance RID, transparency f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_transparency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&transparency)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_custom_aabb(instance RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_attach_skeleton(instance RID, skeleton RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_attach_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_extra_visibility_margin(instance RID, margin f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_extra_visibility_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_visibility_parent(instance RID, parent RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_visibility_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_set_ignore_culling(instance RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_set_ignore_culling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_flag(instance RID, flag RenderingServerInstanceFlags, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1014989537)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&flag)}
    args[2] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_cast_shadows_setting(instance RID, shadow_casting_setting RenderingServerShadowCastingSetting) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_cast_shadows_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3768836020)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&shadow_casting_setting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_material_override(instance RID, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_material_overlay(instance RID, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_material_overlay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_visibility_range(instance RID, min f64, max f64, min_margin f64, max_margin f64, fade_mode RenderingServerVisibilityRangeFadeMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_visibility_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4263925858)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&min)}
    args[2] = unsafe{voidptr(&max)}
    args[3] = unsafe{voidptr(&min_margin)}
    args[4] = unsafe{voidptr(&max_margin)}
    args[5] = unsafe{voidptr(&fade_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_lightmap(instance RID, lightmap RID, lightmap_uv_scale Rect2, lightmap_slice i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_lightmap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 536974962)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&lightmap)}
    args[2] = unsafe{voidptr(&lightmap_uv_scale)}
    args[3] = unsafe{voidptr(&lightmap_slice)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_lod_bias(instance RID, lod_bias f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_lod_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&lod_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) instance_geometry_set_shader_parameter(instance RID, parameter StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_set_shader_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3477296213)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parameter)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) instance_geometry_get_shader_parameter(instance RID, parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_get_shader_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) instance_geometry_get_shader_parameter_default_value(instance RID, parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_get_shader_parameter_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) instance_geometry_get_shader_parameter_list(instance RID) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instance_geometry_get_shader_parameter_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) instances_cull_aabb(aabb AABB, scenario RID) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instances_cull_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2031554939)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) instances_cull_ray(from Vector3, to Vector3, scenario RID) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instances_cull_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3388524336)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) instances_cull_convex(convex Array, scenario RID) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("instances_cull_convex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690700105)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&convex)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) bake_render_uv2(base RID, material_overrides Array, image_size Vector2i) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("bake_render_uv2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904608558)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    args[1] = unsafe{voidptr(&material_overrides)}
    args[2] = unsafe{voidptr(&image_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_set_item_mirroring(canvas RID, item RID, mirroring Vector2) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_set_item_mirroring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2343975398)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&item)}
    args[2] = unsafe{voidptr(&mirroring)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_set_modulate(canvas RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_set_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_set_disable_scale(disable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_set_disable_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_texture_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_texture_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_texture_set_channel(canvas_texture RID, channel RenderingServerCanvasTextureChannel, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_texture_set_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3822119138)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    args[1] = unsafe{voidptr(&channel)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_texture_set_shading_parameters(canvas_texture RID, base_color Color, shininess f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_texture_set_shading_parameters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124967469)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    args[1] = unsafe{voidptr(&base_color)}
    args[2] = unsafe{voidptr(&shininess)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_texture_set_texture_filter(canvas_texture RID, filter RenderingServerCanvasItemTextureFilter) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_texture_set_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155129294)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    args[1] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_texture_set_texture_repeat(canvas_texture RID, repeat RenderingServerCanvasItemTextureRepeat) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_texture_set_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1652956681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    args[1] = unsafe{voidptr(&repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_item_set_parent(item RID, parent RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&parent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_default_texture_filter(item RID, filter RenderingServerCanvasItemTextureFilter) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_default_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155129294)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_default_texture_repeat(item RID, repeat RenderingServerCanvasItemTextureRepeat) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_default_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1652956681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_visible(item RID, visible bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_light_mask(item RID, mask i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_light_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_visibility_layer(item RID, visibility_layer u32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_visibility_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&visibility_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_transform(item RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_clip(item RID, clip bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_clip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&clip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_distance_field_mode(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_distance_field_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_custom_rect(item RID, use_custom_rect bool, rect Rect2) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_custom_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2180266943)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&use_custom_rect)}
    args[2] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_modulate(item RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_self_modulate(item RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_self_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_draw_behind_parent(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_draw_behind_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_line(item RID, from Vector2, to Vector2, color Color, width f64, antialiased bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2843922985)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&from)}
    args[2] = unsafe{voidptr(&to)}
    args[3] = unsafe{voidptr(&color)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_polyline(item RID, points PackedVector2Array, colors PackedColorArray, width f64, antialiased bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_polyline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3438017257)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&width)}
    args[4] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_multiline(item RID, points PackedVector2Array, colors PackedColorArray, width f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_multiline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3176074788)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_rect(item RID, rect Rect2, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 934531857)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_circle(item RID, pos Vector2, radius f64, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_circle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2439351960)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&radius)}
    args[3] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_texture_rect(item RID, rect Rect2, texture RID, tile bool, modulate Color, transpose bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_texture_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3205360868)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&tile)}
    args[4] = unsafe{voidptr(&modulate)}
    args[5] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_msdf_texture_rect_region(item RID, rect Rect2, texture RID, src_rect Rect2, modulate Color, outline_size i32, px_range f64, scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_msdf_texture_rect_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349157222)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&src_rect)}
    args[4] = unsafe{voidptr(&modulate)}
    args[5] = unsafe{voidptr(&outline_size)}
    args[6] = unsafe{voidptr(&px_range)}
    args[7] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_lcd_texture_rect_region(item RID, rect Rect2, texture RID, src_rect Rect2, modulate Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_lcd_texture_rect_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 359793297)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&src_rect)}
    args[4] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_texture_rect_region(item RID, rect Rect2, texture RID, src_rect Rect2, modulate Color, transpose bool, clip_uv bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_texture_rect_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2782979504)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&src_rect)}
    args[4] = unsafe{voidptr(&modulate)}
    args[5] = unsafe{voidptr(&transpose)}
    args[6] = unsafe{voidptr(&clip_uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_nine_patch(item RID, rect Rect2, source Rect2, texture RID, topleft Vector2, bottomright Vector2, x_axis_mode RenderingServerNinePatchAxisMode, y_axis_mode RenderingServerNinePatchAxisMode, draw_center bool, modulate Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_nine_patch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 904428547)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&source)}
    args[3] = unsafe{voidptr(&texture)}
    args[4] = unsafe{voidptr(&topleft)}
    args[5] = unsafe{voidptr(&bottomright)}
    args[6] = unsafe{voidptr(&x_axis_mode)}
    args[7] = unsafe{voidptr(&y_axis_mode)}
    args[8] = unsafe{voidptr(&draw_center)}
    args[9] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_primitive(item RID, points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_primitive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3731601077)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&uvs)}
    args[4] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_polygon(item RID, points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2907936855)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&uvs)}
    args[4] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_triangle_array(item RID, indices PackedInt32Array, points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, bones PackedInt32Array, weights PackedFloat32Array, texture RID, count i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_triangle_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 749685193)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&indices)}
    args[2] = unsafe{voidptr(&points)}
    args[3] = unsafe{voidptr(&colors)}
    args[4] = unsafe{voidptr(&uvs)}
    args[5] = unsafe{voidptr(&bones)}
    args[6] = unsafe{voidptr(&weights)}
    args[7] = unsafe{voidptr(&texture)}
    args[8] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_mesh(item RID, mesh RID, transform Transform2D, modulate Color, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3548053052)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mesh)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_multimesh(item RID, mesh RID, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1541595251)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mesh)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_particles(item RID, particles RID, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_particles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2575754278)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&particles)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_set_transform(item RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_clip_ignore(item RID, ignore bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_clip_ignore")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&ignore)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_add_animation_slice(item RID, animation_length f64, slice_begin f64, slice_end f64, offset f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_add_animation_slice")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4107531031)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&animation_length)}
    args[2] = unsafe{voidptr(&slice_begin)}
    args[3] = unsafe{voidptr(&slice_end)}
    args[4] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_sort_children_by_y(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_sort_children_by_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_z_index(item RID, z_index i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_z_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&z_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_z_as_relative_to_parent(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_z_as_relative_to_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_copy_to_backbuffer(item RID, enabled bool, rect Rect2) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_copy_to_backbuffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2429202503)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_clear(item RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_draw_index(item RID, index i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_draw_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_material(item RID, material RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_use_parent_material(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_use_parent_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_visibility_notifier(item RID, enable bool, area Rect2, enter_callable Callable, exit_callable Callable) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_visibility_notifier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3568945579)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&area)}
    args[3] = unsafe{voidptr(&enter_callable)}
    args[4] = unsafe{voidptr(&exit_callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_item_set_canvas_group_mode(item RID, mode RenderingServerCanvasGroupMode, clear_margin f64, fit_empty bool, fit_margin f64, blur_mipmaps bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_item_set_canvas_group_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 41973386)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mode)}
    args[2] = unsafe{voidptr(&clear_margin)}
    args[3] = unsafe{voidptr(&fit_empty)}
    args[4] = unsafe{voidptr(&fit_margin)}
    args[5] = unsafe{voidptr(&blur_mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_light_attach_to_canvas(light RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_attach_to_canvas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_enabled(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_texture_scale(light RID, scale f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_texture_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_transform(light RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_texture(light RID, texture RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_texture_offset(light RID, offset Vector2) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_texture_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_color(light RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_height(light RID, height f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_energy(light RID, energy f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_z_range(light RID, min_z i32, max_z i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_z_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&min_z)}
    args[2] = unsafe{voidptr(&max_z)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_layer_range(light RID, min_layer i32, max_layer i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_layer_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&min_layer)}
    args[2] = unsafe{voidptr(&max_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_item_cull_mask(light RID, mask i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_item_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_item_shadow_cull_mask(light RID, mask i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_item_shadow_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_mode(light RID, mode RenderingServerCanvasLightMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2957564891)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_enabled(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_shadow_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_filter(light RID, filter RenderingServerCanvasLightShadowFilter) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_shadow_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 393119659)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_color(light RID, color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_shadow_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_smooth(light RID, smooth f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_shadow_smooth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&smooth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_set_blend_mode(light RID, mode RenderingServerCanvasLightBlendMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_set_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 804895945)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_occluder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_light_occluder_attach_to_canvas(occluder RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_attach_to_canvas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_enabled(occluder RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_polygon(occluder RID, polygon RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_set_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_as_sdf_collision(occluder RID, enable bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_set_as_sdf_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_transform(occluder RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_light_mask(occluder RID, mask i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_light_occluder_set_light_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_occluder_polygon_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_occluder_polygon_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) canvas_occluder_polygon_set_shape(occluder_polygon RID, shape PackedVector2Array, closed bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_occluder_polygon_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2103882027)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&occluder_polygon)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&closed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_occluder_polygon_set_cull_mode(occluder_polygon RID, mode RenderingServerCanvasOccluderPolygonCullMode) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_occluder_polygon_set_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1839404663)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder_polygon)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) canvas_set_shadow_texture_size(size i32) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("canvas_set_shadow_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) global_shader_parameter_add(name StringName, type_name RenderingServerGlobalShaderParameterType, default_value Variant) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_add")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 463390080)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&default_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) global_shader_parameter_remove(name StringName) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_remove")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) global_shader_parameter_get_list() Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_get_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) global_shader_parameter_set(name StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) global_shader_parameter_set_override(name StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_set_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) global_shader_parameter_get(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) global_shader_parameter_get_type(name StringName) RenderingServerGlobalShaderParameterType {
    mut object_out := RenderingServerGlobalShaderParameterType.global_var_type_bool
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_shader_parameter_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601414142)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) free_rid(rid RID) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) request_frame_drawn_callback(callable Callable) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("request_frame_drawn_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) has_changed() bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("has_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) get_rendering_info(info RenderingServerRenderingInfo) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_rendering_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3763192241)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_name() String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_video_adapter_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_vendor() String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_video_adapter_vendor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_type() RenderingDeviceDeviceType {
    mut object_out := RenderingDeviceDeviceType.device_type_other
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_video_adapter_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3099547011)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_api_version() String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_video_adapter_api_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) make_sphere_mesh(latitudes i32, longitudes i32, radius f64) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("make_sphere_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251015897)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&latitudes)}
    args[1] = unsafe{voidptr(&longitudes)}
    args[2] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) get_test_cube() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_test_cube")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) get_test_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_test_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) get_white_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_white_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) set_boot_image(image Image, color Color, scale bool, use_filter bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_boot_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2244367877)
    mut args := unsafe { [4]voidptr{} }
    args[0] = image.ptr
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&scale)}
    args[3] = unsafe{voidptr(&use_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RenderingServer) get_default_clear_color() Color {
    mut object_out := Color{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_clear_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) set_default_clear_color(color Color) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_clear_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) has_feature(feature RenderingServerFeatures) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("has_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 598462696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) has_os_feature(feature String) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("has_os_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) set_debug_generate_wireframes(generate bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_generate_wireframes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&generate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) is_render_loop_enabled() bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_render_loop_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) set_render_loop_enabled(enabled bool) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_render_loop_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) get_frame_setup_time_cpu() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_setup_time_cpu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RenderingServer) force_sync() {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("force_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r RenderingServer) force_draw(swap_buffers bool, frame_step f64) {
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("force_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1076185472)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&swap_buffers)}
    args[1] = unsafe{voidptr(&frame_step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RenderingServer) get_rendering_device() RenderingDevice {
    mut object_out := RenderingDevice{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_rendering_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1405107940)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RenderingServer) create_local_rendering_device() RenderingDevice {
    mut object_out := RenderingDevice{}
    classname := StringName.new("RenderingServer")
    defer { classname.deinit() }
    fnname := StringName.new("create_local_rendering_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1405107940)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

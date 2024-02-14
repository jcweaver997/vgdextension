module vgdextension

pub enum RenderingServerTextureLayeredType as i64 {
    texture_layered_2d_array = 0
    texture_layered_cubemap = 1
    texture_layered_cubemap_array = 2
}

pub enum RenderingServerCubeMapLayer as i64 {
    cubemap_layer_left = 0
    cubemap_layer_right = 1
    cubemap_layer_bottom = 2
    cubemap_layer_top = 3
    cubemap_layer_front = 4
    cubemap_layer_back = 5
}

pub enum RenderingServerShaderMode as i64 {
    shader_spatial = 0
    shader_canvas_item = 1
    shader_particles = 2
    shader_sky = 3
    shader_fog = 4
    shader_max = 5
}

pub enum RenderingServerArrayType as i64 {
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

pub enum RenderingServerArrayCustomFormat as i64 {
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

pub enum RenderingServerArrayFormat as i64 {
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
    array_flag_compress_attributes = 536870912
    array_flag_format_version_base = 35
    array_flag_format_version_1 = 0
    array_flag_format_version_2 = 34359738368
    array_flag_format_version_mask = 255
}

pub enum RenderingServerPrimitiveType as i64 {
    primitive_points = 0
    primitive_lines = 1
    primitive_line_strip = 2
    primitive_triangles = 3
    primitive_triangle_strip = 4
    primitive_max = 5
}

pub enum RenderingServerBlendShapeMode as i64 {
    blend_shape_mode_normalized = 0
    blend_shape_mode_relative = 1
}

pub enum RenderingServerMultimeshTransformFormat as i64 {
    multimesh_transform_2d = 0
    multimesh_transform_3d = 1
}

pub enum RenderingServerLightProjectorFilter as i64 {
    light_projector_filter_nearest = 0
    light_projector_filter_linear = 1
    light_projector_filter_nearest_mipmaps = 2
    light_projector_filter_linear_mipmaps = 3
    light_projector_filter_nearest_mipmaps_anisotropic = 4
    light_projector_filter_linear_mipmaps_anisotropic = 5
}

pub enum RenderingServerLightType as i64 {
    light_directional = 0
    light_omni = 1
    light_spot = 2
}

pub enum RenderingServerLightParam as i64 {
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

pub enum RenderingServerLightBakeMode as i64 {
    light_bake_disabled = 0
    light_bake_static = 1
    light_bake_dynamic = 2
}

pub enum RenderingServerLightOmniShadowMode as i64 {
    light_omni_shadow_dual_paraboloid = 0
    light_omni_shadow_cube = 1
}

pub enum RenderingServerLightDirectionalShadowMode as i64 {
    light_directional_shadow_orthogonal = 0
    light_directional_shadow_parallel_2_splits = 1
    light_directional_shadow_parallel_4_splits = 2
}

pub enum RenderingServerLightDirectionalSkyMode as i64 {
    light_directional_sky_mode_light_and_sky = 0
    light_directional_sky_mode_light_only = 1
    light_directional_sky_mode_sky_only = 2
}

pub enum RenderingServerShadowQuality as i64 {
    shadow_quality_hard = 0
    shadow_quality_soft_very_low = 1
    shadow_quality_soft_low = 2
    shadow_quality_soft_medium = 3
    shadow_quality_soft_high = 4
    shadow_quality_soft_ultra = 5
    shadow_quality_max = 6
}

pub enum RenderingServerReflectionProbeUpdateMode as i64 {
    reflection_probe_update_once = 0
    reflection_probe_update_always = 1
}

pub enum RenderingServerReflectionProbeAmbientMode as i64 {
    reflection_probe_ambient_disabled = 0
    reflection_probe_ambient_environment = 1
    reflection_probe_ambient_color = 2
}

pub enum RenderingServerDecalTexture as i64 {
    decal_texture_albedo = 0
    decal_texture_normal = 1
    decal_texture_orm = 2
    decal_texture_emission = 3
    decal_texture_max = 4
}

pub enum RenderingServerDecalFilter as i64 {
    decal_filter_nearest = 0
    decal_filter_linear = 1
    decal_filter_nearest_mipmaps = 2
    decal_filter_linear_mipmaps = 3
    decal_filter_nearest_mipmaps_anisotropic = 4
    decal_filter_linear_mipmaps_anisotropic = 5
}

pub enum RenderingServerVoxelGIQuality as i64 {
    voxel_gi_quality_low = 0
    voxel_gi_quality_high = 1
}

pub enum RenderingServerParticlesMode as i64 {
    particles_mode_2d = 0
    particles_mode_3d = 1
}

pub enum RenderingServerParticlesTransformAlign as i64 {
    particles_transform_align_disabled = 0
    particles_transform_align_z_billboard = 1
    particles_transform_align_y_to_velocity = 2
    particles_transform_align_z_billboard_y_to_velocity = 3
}

pub enum RenderingServerParticlesDrawOrder as i64 {
    particles_draw_order_index = 0
    particles_draw_order_lifetime = 1
    particles_draw_order_reverse_lifetime = 2
    particles_draw_order_view_depth = 3
}

pub enum RenderingServerParticlesCollisionType as i64 {
    particles_collision_type_sphere_attract = 0
    particles_collision_type_box_attract = 1
    particles_collision_type_vector_field_attract = 2
    particles_collision_type_sphere_collide = 3
    particles_collision_type_box_collide = 4
    particles_collision_type_sdf_collide = 5
    particles_collision_type_heightfield_collide = 6
}

pub enum RenderingServerParticlesCollisionHeightfieldResolution as i64 {
    particles_collision_heightfield_resolution_256 = 0
    particles_collision_heightfield_resolution_512 = 1
    particles_collision_heightfield_resolution_1024 = 2
    particles_collision_heightfield_resolution_2048 = 3
    particles_collision_heightfield_resolution_4096 = 4
    particles_collision_heightfield_resolution_8192 = 5
    particles_collision_heightfield_resolution_max = 6
}

pub enum RenderingServerFogVolumeShape as i64 {
    fog_volume_shape_ellipsoid = 0
    fog_volume_shape_cone = 1
    fog_volume_shape_cylinder = 2
    fog_volume_shape_box = 3
    fog_volume_shape_world = 4
    fog_volume_shape_max = 5
}

pub enum RenderingServerViewportScaling3DMode as i64 {
    viewport_scaling_3d_mode_bilinear = 0
    viewport_scaling_3d_mode_fsr = 1
    viewport_scaling_3d_mode_fsr2 = 2
    viewport_scaling_3d_mode_max = 3
}

pub enum RenderingServerViewportUpdateMode as i64 {
    viewport_update_disabled = 0
    viewport_update_once = 1
    viewport_update_when_visible = 2
    viewport_update_when_parent_visible = 3
    viewport_update_always = 4
}

pub enum RenderingServerViewportClearMode as i64 {
    viewport_clear_always = 0
    viewport_clear_never = 1
    viewport_clear_only_next_frame = 2
}

pub enum RenderingServerViewportEnvironmentMode as i64 {
    viewport_environment_disabled = 0
    viewport_environment_enabled = 1
    viewport_environment_inherit = 2
    viewport_environment_max = 3
}

pub enum RenderingServerViewportSDFOversize as i64 {
    viewport_sdf_oversize_100_percent = 0
    viewport_sdf_oversize_120_percent = 1
    viewport_sdf_oversize_150_percent = 2
    viewport_sdf_oversize_200_percent = 3
    viewport_sdf_oversize_max = 4
}

pub enum RenderingServerViewportSDFScale as i64 {
    viewport_sdf_scale_100_percent = 0
    viewport_sdf_scale_50_percent = 1
    viewport_sdf_scale_25_percent = 2
    viewport_sdf_scale_max = 3
}

pub enum RenderingServerViewportMSAA as i64 {
    viewport_msaa_disabled = 0
    viewport_msaa_2x = 1
    viewport_msaa_4x = 2
    viewport_msaa_8x = 3
    viewport_msaa_max = 4
}

pub enum RenderingServerViewportScreenSpaceAA as i64 {
    viewport_screen_space_aa_disabled = 0
    viewport_screen_space_aa_fxaa = 1
    viewport_screen_space_aa_max = 2
}

pub enum RenderingServerViewportOcclusionCullingBuildQuality as i64 {
    viewport_occlusion_build_quality_low = 0
    viewport_occlusion_build_quality_medium = 1
    viewport_occlusion_build_quality_high = 2
}

pub enum RenderingServerViewportRenderInfo as i64 {
    viewport_render_info_objects_in_frame = 0
    viewport_render_info_primitives_in_frame = 1
    viewport_render_info_draw_calls_in_frame = 2
    viewport_render_info_max = 3
}

pub enum RenderingServerViewportRenderInfoType as i64 {
    viewport_render_info_type_visible = 0
    viewport_render_info_type_shadow = 1
    viewport_render_info_type_max = 2
}

pub enum RenderingServerViewportDebugDraw as i64 {
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
    viewport_debug_draw_internal_buffer = 26
}

pub enum RenderingServerViewportVRSMode as i64 {
    viewport_vrs_disabled = 0
    viewport_vrs_texture = 1
    viewport_vrs_xr = 2
    viewport_vrs_max = 3
}

pub enum RenderingServerSkyMode as i64 {
    sky_mode_automatic = 0
    sky_mode_quality = 1
    sky_mode_incremental = 2
    sky_mode_realtime = 3
}

pub enum RenderingServerEnvironmentBG as i64 {
    env_bg_clear_color = 0
    env_bg_color = 1
    env_bg_sky = 2
    env_bg_canvas = 3
    env_bg_keep = 4
    env_bg_camera_feed = 5
    env_bg_max = 6
}

pub enum RenderingServerEnvironmentAmbientSource as i64 {
    env_ambient_source_bg = 0
    env_ambient_source_disabled = 1
    env_ambient_source_color = 2
    env_ambient_source_sky = 3
}

pub enum RenderingServerEnvironmentReflectionSource as i64 {
    env_reflection_source_bg = 0
    env_reflection_source_disabled = 1
    env_reflection_source_sky = 2
}

pub enum RenderingServerEnvironmentGlowBlendMode as i64 {
    env_glow_blend_mode_additive = 0
    env_glow_blend_mode_screen = 1
    env_glow_blend_mode_softlight = 2
    env_glow_blend_mode_replace = 3
    env_glow_blend_mode_mix = 4
}

pub enum RenderingServerEnvironmentToneMapper as i64 {
    env_tone_mapper_linear = 0
    env_tone_mapper_reinhard = 1
    env_tone_mapper_filmic = 2
    env_tone_mapper_aces = 3
}

pub enum RenderingServerEnvironmentSSRRoughnessQuality as i64 {
    env_ssr_roughness_quality_disabled = 0
    env_ssr_roughness_quality_low = 1
    env_ssr_roughness_quality_medium = 2
    env_ssr_roughness_quality_high = 3
}

pub enum RenderingServerEnvironmentSSAOQuality as i64 {
    env_ssao_quality_very_low = 0
    env_ssao_quality_low = 1
    env_ssao_quality_medium = 2
    env_ssao_quality_high = 3
    env_ssao_quality_ultra = 4
}

pub enum RenderingServerEnvironmentSSILQuality as i64 {
    env_ssil_quality_very_low = 0
    env_ssil_quality_low = 1
    env_ssil_quality_medium = 2
    env_ssil_quality_high = 3
    env_ssil_quality_ultra = 4
}

pub enum RenderingServerEnvironmentSDFGIYScale as i64 {
    env_sdfgi_y_scale_50_percent = 0
    env_sdfgi_y_scale_75_percent = 1
    env_sdfgi_y_scale_100_percent = 2
}

pub enum RenderingServerEnvironmentSDFGIRayCount as i64 {
    env_sdfgi_ray_count_4 = 0
    env_sdfgi_ray_count_8 = 1
    env_sdfgi_ray_count_16 = 2
    env_sdfgi_ray_count_32 = 3
    env_sdfgi_ray_count_64 = 4
    env_sdfgi_ray_count_96 = 5
    env_sdfgi_ray_count_128 = 6
    env_sdfgi_ray_count_max = 7
}

pub enum RenderingServerEnvironmentSDFGIFramesToConverge as i64 {
    env_sdfgi_converge_in_5_frames = 0
    env_sdfgi_converge_in_10_frames = 1
    env_sdfgi_converge_in_15_frames = 2
    env_sdfgi_converge_in_20_frames = 3
    env_sdfgi_converge_in_25_frames = 4
    env_sdfgi_converge_in_30_frames = 5
    env_sdfgi_converge_max = 6
}

pub enum RenderingServerEnvironmentSDFGIFramesToUpdateLight as i64 {
    env_sdfgi_update_light_in_1_frame = 0
    env_sdfgi_update_light_in_2_frames = 1
    env_sdfgi_update_light_in_4_frames = 2
    env_sdfgi_update_light_in_8_frames = 3
    env_sdfgi_update_light_in_16_frames = 4
    env_sdfgi_update_light_max = 5
}

pub enum RenderingServerSubSurfaceScatteringQuality as i64 {
    sub_surface_scattering_quality_disabled = 0
    sub_surface_scattering_quality_low = 1
    sub_surface_scattering_quality_medium = 2
    sub_surface_scattering_quality_high = 3
}

pub enum RenderingServerDOFBokehShape as i64 {
    dof_bokeh_box = 0
    dof_bokeh_hexagon = 1
    dof_bokeh_circle = 2
}

pub enum RenderingServerDOFBlurQuality as i64 {
    dof_blur_quality_very_low = 0
    dof_blur_quality_low = 1
    dof_blur_quality_medium = 2
    dof_blur_quality_high = 3
}

pub enum RenderingServerInstanceType as i64 {
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

pub enum RenderingServerInstanceFlags as i64 {
    instance_flag_use_baked_light = 0
    instance_flag_use_dynamic_gi = 1
    instance_flag_draw_next_frame_if_visible = 2
    instance_flag_ignore_occlusion_culling = 3
    instance_flag_max = 4
}

pub enum RenderingServerShadowCastingSetting as i64 {
    shadow_casting_setting_off = 0
    shadow_casting_setting_on = 1
    shadow_casting_setting_double_sided = 2
    shadow_casting_setting_shadows_only = 3
}

pub enum RenderingServerVisibilityRangeFadeMode as i64 {
    visibility_range_fade_disabled = 0
    visibility_range_fade_self = 1
    visibility_range_fade_dependencies = 2
}

pub enum RenderingServerBakeChannels as i64 {
    bake_channel_albedo_alpha = 0
    bake_channel_normal = 1
    bake_channel_orm = 2
    bake_channel_emission = 3
}

pub enum RenderingServerCanvasTextureChannel as i64 {
    canvas_texture_channel_diffuse = 0
    canvas_texture_channel_normal = 1
    canvas_texture_channel_specular = 2
}

pub enum RenderingServerNinePatchAxisMode as i64 {
    nine_patch_stretch = 0
    nine_patch_tile = 1
    nine_patch_tile_fit = 2
}

pub enum RenderingServerCanvasItemTextureFilter as i64 {
    canvas_item_texture_filter_default = 0
    canvas_item_texture_filter_nearest = 1
    canvas_item_texture_filter_linear = 2
    canvas_item_texture_filter_nearest_with_mipmaps = 3
    canvas_item_texture_filter_linear_with_mipmaps = 4
    canvas_item_texture_filter_nearest_with_mipmaps_anisotropic = 5
    canvas_item_texture_filter_linear_with_mipmaps_anisotropic = 6
    canvas_item_texture_filter_max = 7
}

pub enum RenderingServerCanvasItemTextureRepeat as i64 {
    canvas_item_texture_repeat_default = 0
    canvas_item_texture_repeat_disabled = 1
    canvas_item_texture_repeat_enabled = 2
    canvas_item_texture_repeat_mirror = 3
    canvas_item_texture_repeat_max = 4
}

pub enum RenderingServerCanvasGroupMode as i64 {
    canvas_group_mode_disabled = 0
    canvas_group_mode_clip_only = 1
    canvas_group_mode_clip_and_draw = 2
    canvas_group_mode_transparent = 3
}

pub enum RenderingServerCanvasLightMode as i64 {
    canvas_light_mode_point = 0
    canvas_light_mode_directional = 1
}

pub enum RenderingServerCanvasLightBlendMode as i64 {
    canvas_light_blend_mode_add = 0
    canvas_light_blend_mode_sub = 1
    canvas_light_blend_mode_mix = 2
}

pub enum RenderingServerCanvasLightShadowFilter as i64 {
    canvas_light_filter_none = 0
    canvas_light_filter_pcf5 = 1
    canvas_light_filter_pcf13 = 2
    canvas_light_filter_max = 3
}

pub enum RenderingServerCanvasOccluderPolygonCullMode as i64 {
    canvas_occluder_polygon_cull_disabled = 0
    canvas_occluder_polygon_cull_clockwise = 1
    canvas_occluder_polygon_cull_counter_clockwise = 2
}

pub enum RenderingServerGlobalShaderParameterType as i64 {
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

pub enum RenderingServerRenderingInfo as i64 {
    rendering_info_total_objects_in_frame = 0
    rendering_info_total_primitives_in_frame = 1
    rendering_info_total_draw_calls_in_frame = 2
    rendering_info_texture_mem_used = 3
    rendering_info_buffer_mem_used = 4
    rendering_info_video_mem_used = 5
}

pub enum RenderingServerFeatures as i64 {
    feature_shaders = 0
    feature_multithreaded = 1
}

@[noinit]
pub struct RenderingServer {
    Object
}

pub fn RenderingServer.get_singleton() RenderingServer {
    sn := StringName.new("RenderingServer")
    o := RenderingServer{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r RenderingServer) texture_2d_create(image Image) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2010018390)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_2d_layered_create(layers Array, layered_type RenderingServerTextureLayeredType) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_layered_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 913689023)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    i64_layered_type := i64(layered_type)
    args[1] = unsafe{voidptr(&i64_layered_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_3d_create(format ImageFormat, width i32, height i32, depth i32, mipmaps bool, data Array) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_3d_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4036838706)
    mut args := unsafe { [6]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    args[3] = unsafe{voidptr(&depth)}
    args[4] = unsafe{voidptr(&mipmaps)}
    args[5] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_proxy_create(base RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_proxy_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 41030802)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_2d_update(texture RID, image Image, layer i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 999539803)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = image.ptr
    args[2] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) texture_3d_update(texture RID, data Array) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_3d_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) texture_proxy_update(texture RID, proxy_to RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_proxy_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&proxy_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) texture_2d_placeholder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_placeholder_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_2d_layered_placeholder_create(layered_type RenderingServerTextureLayeredType) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_layered_placeholder_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1394585590)
    mut args := unsafe { [1]voidptr{} }
    i64_layered_type := i64(layered_type)
    args[0] = unsafe{voidptr(&i64_layered_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_3d_placeholder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_3d_placeholder_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) texture_2d_get(texture RID) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4206205781)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) texture_2d_layer_get(texture RID, layer i32) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_2d_layer_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2705440895)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) texture_3d_get(texture RID) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_3d_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) texture_replace(texture RID, by_texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_replace")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&by_texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) texture_set_size_override(texture RID, width i32, height i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_set_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) texture_set_path(texture RID, path String) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_set_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) texture_get_path(texture RID) String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_get_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) texture_get_format(texture RID) ImageFormat {
    mut object_out := i64(ImageFormat.format_l8)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1932918979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageFormat(object_out)}
}
pub fn (mut r RenderingServer) texture_set_force_redraw_if_visible(texture RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_set_force_redraw_if_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) texture_rd_create(rd_texture RID, layer_type RenderingServerTextureLayeredType) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_rd_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1434128712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&rd_texture)}
    i64_layer_type := i64(layer_type)
    args[1] = unsafe{voidptr(&i64_layer_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) texture_get_rd_texture(texture RID, srgb bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_get_rd_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2790148051)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&srgb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) texture_get_native_handle(texture RID, srgb bool) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("texture_get_native_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1834114100)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&srgb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) shader_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) shader_set_code(shader RID, code String) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_set_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) shader_set_path_hint(shader RID, path String) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_set_path_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) shader_get_code(shader RID) String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_get_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) get_shader_parameter_list(shader RID) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_shader_parameter_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) shader_get_parameter_default(shader RID, name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_get_parameter_default")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) shader_set_default_texture_parameter(shader RID, name StringName, texture RID, index i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_set_default_texture_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4094001817)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) shader_get_default_texture_parameter(shader RID, name StringName, index i32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("shader_get_default_texture_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1464608890)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) material_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("material_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) material_set_shader(shader_material RID, shader RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("material_set_shader")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader_material)}
    args[1] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) material_set_param(material RID, parameter StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("material_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3477296213)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&parameter)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) material_get_param(material RID, parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("material_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) material_set_render_priority(material RID, priority i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("material_set_render_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) material_set_next_pass(material RID, next_material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("material_set_next_pass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&material)}
    args[1] = unsafe{voidptr(&next_material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) mesh_create_from_surfaces(surfaces Array, blend_shape_count i32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_create_from_surfaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291747531)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surfaces)}
    args[1] = unsafe{voidptr(&blend_shape_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) mesh_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_offset(format RenderingServerArrayFormat, vertex_count i32, array_index i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_format_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981368685)
    mut args := unsafe { [3]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    args[2] = unsafe{voidptr(&array_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_vertex_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_format_vertex_stride")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_normal_tangent_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_format_normal_tangent_stride")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_attribute_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_format_attribute_stride")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_format_skin_stride(format RenderingServerArrayFormat, vertex_count i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_format_skin_stride")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188363337)
    mut args := unsafe { [2]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) mesh_add_surface(mesh RID, surface Dictionary) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_add_surface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) mesh_add_surface_from_arrays(mesh RID, primitive RenderingServerPrimitiveType, arrays Array, blend_shapes Array, lods Dictionary, compress_format RenderingServerArrayFormat) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_add_surface_from_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2342446560)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    i64_primitive := i64(primitive)
    args[1] = unsafe{voidptr(&i64_primitive)}
    args[2] = unsafe{voidptr(&arrays)}
    args[3] = unsafe{voidptr(&blend_shapes)}
    args[4] = unsafe{voidptr(&lods)}
    i64_compress_format := i64(compress_format)
    args[5] = unsafe{voidptr(&i64_compress_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) mesh_get_blend_shape_count(mesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_get_blend_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) mesh_set_blend_shape_mode(mesh RID, mode RenderingServerBlendShapeMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_set_blend_shape_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1294662092)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) mesh_get_blend_shape_mode(mesh RID) RenderingServerBlendShapeMode {
    mut object_out := i64(RenderingServerBlendShapeMode.blend_shape_mode_normalized)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_get_blend_shape_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4282291819)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingServerBlendShapeMode(object_out)}
}
pub fn (mut r RenderingServer) mesh_surface_set_material(mesh RID, surface i32, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) mesh_surface_get_material(mesh RID, surface i32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) mesh_get_surface(mesh RID, surface i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_get_surface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 186674697)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_arrays(mesh RID, surface i32) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_surface_get_blend_shape_arrays(mesh RID, surface i32) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_get_blend_shape_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) mesh_get_surface_count(mesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_get_surface_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) mesh_set_custom_aabb(mesh RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_set_custom_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) mesh_get_custom_aabb(mesh RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_get_custom_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) mesh_clear(mesh RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) mesh_surface_update_vertex_region(mesh RID, surface i32, offset i32, data PackedByteArray) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_update_vertex_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900195149)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) mesh_surface_update_attribute_region(mesh RID, surface i32, offset i32, data PackedByteArray) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_update_attribute_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900195149)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) mesh_surface_update_skin_region(mesh RID, surface i32, offset i32, data PackedByteArray) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_surface_update_skin_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900195149)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) mesh_set_shadow_mesh(mesh RID, shadow_mesh RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("mesh_set_shadow_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    args[1] = unsafe{voidptr(&shadow_mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) multimesh_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) multimesh_allocate_data(multimesh RID, instances i32, transform_format RenderingServerMultimeshTransformFormat, color_format bool, custom_data_format bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_allocate_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 283685892)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&instances)}
    i64_transform_format := i64(transform_format)
    args[2] = unsafe{voidptr(&i64_transform_format)}
    args[3] = unsafe{voidptr(&color_format)}
    args[4] = unsafe{voidptr(&custom_data_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) multimesh_get_instance_count(multimesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_get_instance_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) multimesh_set_mesh(multimesh RID, mesh RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) multimesh_instance_set_transform(multimesh RID, index i32, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) multimesh_instance_set_transform_2d(multimesh RID, index i32, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_set_transform_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) multimesh_instance_set_color(multimesh RID, index i32, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 176975443)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) multimesh_instance_set_custom_data(multimesh RID, index i32, custom_data Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_set_custom_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 176975443)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&custom_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) multimesh_get_mesh(multimesh RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) multimesh_get_aabb(multimesh RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_get_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_transform(multimesh RID, index i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_transform_2d(multimesh RID, index i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_get_transform_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_color(multimesh RID, index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2946315076)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) multimesh_instance_get_custom_data(multimesh RID, index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_instance_get_custom_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2946315076)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) multimesh_set_visible_instances(multimesh RID, visible i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_set_visible_instances")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) multimesh_get_visible_instances(multimesh RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_get_visible_instances")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) multimesh_set_buffer(multimesh RID, buffer PackedFloat32Array) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_set_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2960552364)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    args[1] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) multimesh_get_buffer(multimesh RID) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("multimesh_get_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3964669176)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multimesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) skeleton_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) skeleton_allocate_data(skeleton RID, bones i32, is_2d_skeleton bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_allocate_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904426712)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bones)}
    args[2] = unsafe{voidptr(&is_2d_skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) skeleton_get_bone_count(skeleton RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_get_bone_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) skeleton_bone_set_transform(skeleton RID, bone i32, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_bone_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) skeleton_bone_get_transform(skeleton RID, bone i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_bone_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) skeleton_bone_set_transform_2d(skeleton RID, bone i32, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_bone_set_transform_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) skeleton_bone_get_transform_2d(skeleton RID, bone i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_bone_get_transform_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) skeleton_set_base_transform_2d(skeleton RID, base_transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("skeleton_set_base_transform_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    args[1] = unsafe{voidptr(&base_transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) directional_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("directional_light_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) omni_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("omni_light_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) spot_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("spot_light_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) light_set_color(light RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_param(light RID, param RenderingServerLightParam, value f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501936875)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_shadow(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_shadow")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_projector(light RID, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_projector")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_negative(light RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_negative")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_cull_mask(light RID, mask u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_distance_fade(decal RID, enabled bool, begin f64, shadow f64, length f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_distance_fade")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622292572)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&begin)}
    args[3] = unsafe{voidptr(&shadow)}
    args[4] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_reverse_cull_face_mode(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_reverse_cull_face_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_bake_mode(light RID, bake_mode RenderingServerLightBakeMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_bake_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1048525260)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_bake_mode := i64(bake_mode)
    args[1] = unsafe{voidptr(&i64_bake_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_set_max_sdfgi_cascade(light RID, cascade u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_set_max_sdfgi_cascade")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&cascade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_omni_set_shadow_mode(light RID, mode RenderingServerLightOmniShadowMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_omni_set_shadow_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2552677200)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_directional_set_shadow_mode(light RID, mode RenderingServerLightDirectionalShadowMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_directional_set_shadow_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 380462970)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_directional_set_blend_splits(light RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_directional_set_blend_splits")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_directional_set_sky_mode(light RID, mode RenderingServerLightDirectionalSkyMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_directional_set_sky_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2559740754)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) light_projectors_set_filter(filter RenderingServerLightProjectorFilter) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("light_projectors_set_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 43944325)
    mut args := unsafe { [1]voidptr{} }
    i64_filter := i64(filter)
    args[0] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) positional_soft_shadow_filter_set_quality(quality RenderingServerShadowQuality) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("positional_soft_shadow_filter_set_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613045266)
    mut args := unsafe { [1]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) directional_soft_shadow_filter_set_quality(quality RenderingServerShadowQuality) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("directional_soft_shadow_filter_set_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613045266)
    mut args := unsafe { [1]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) directional_shadow_atlas_set_size(size i32, is_16bits bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("directional_shadow_atlas_set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&is_16bits)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) reflection_probe_set_update_mode(probe RID, mode RenderingServerReflectionProbeUpdateMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3853670147)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_intensity(probe RID, intensity f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_intensity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&intensity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_ambient_mode(probe RID, mode RenderingServerReflectionProbeAmbientMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_ambient_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 184163074)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_ambient_color(probe RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_ambient_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_ambient_energy(probe RID, energy f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_ambient_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_max_distance(probe RID, distance f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_size(probe RID, size Vector3) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_origin_offset(probe RID, offset Vector3) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_origin_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_as_interior(probe RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_as_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_enable_box_projection(probe RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_enable_box_projection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_enable_shadows(probe RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_enable_shadows")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_cull_mask(probe RID, layers u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_resolution(probe RID, resolution i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) reflection_probe_set_mesh_lod_threshold(probe RID, pixels f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("reflection_probe_set_mesh_lod_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&probe)}
    args[1] = unsafe{voidptr(&pixels)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) decal_set_size(decal RID, size Vector3) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_texture(decal RID, type_name RenderingServerDecalTexture, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3953344054)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_emission_energy(decal RID, energy f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_emission_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_albedo_mix(decal RID, albedo_mix f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_albedo_mix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&albedo_mix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_modulate(decal RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_cull_mask(decal RID, mask u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_distance_fade(decal RID, enabled bool, begin f64, length f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_distance_fade")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2972769666)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&begin)}
    args[3] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_fade(decal RID, above f64, below f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_fade")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&above)}
    args[2] = unsafe{voidptr(&below)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decal_set_normal_fade(decal RID, fade f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decal_set_normal_fade")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&decal)}
    args[1] = unsafe{voidptr(&fade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) decals_set_filter(filter RenderingServerDecalFilter) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("decals_set_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3519875702)
    mut args := unsafe { [1]voidptr{} }
    i64_filter := i64(filter)
    args[0] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) gi_set_use_half_resolution(half_resolution bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("gi_set_use_half_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&half_resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) voxel_gi_allocate_data(voxel_gi RID, to_cell_xform Transform3D, aabb AABB, octree_size Vector3i, octree_cells PackedByteArray, data_cells PackedByteArray, distance_field PackedByteArray, level_counts PackedInt32Array) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_allocate_data")
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
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) voxel_gi_get_octree_size(voxel_gi RID) Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_get_octree_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2607699645)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_octree_cells(voxel_gi RID) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_get_octree_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3348040486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_data_cells(voxel_gi RID) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_get_data_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3348040486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_distance_field(voxel_gi RID) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_get_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3348040486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_level_counts(voxel_gi RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_get_level_counts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) voxel_gi_get_to_cell_xform(voxel_gi RID) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_get_to_cell_xform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128465797)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) voxel_gi_set_dynamic_range(voxel_gi RID, range f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_dynamic_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_propagation(voxel_gi RID, amount f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_propagation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_energy(voxel_gi RID, energy f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_baked_exposure_normalization(voxel_gi RID, baked_exposure f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_baked_exposure_normalization")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&baked_exposure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_bias(voxel_gi RID, bias f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_normal_bias(voxel_gi RID, bias f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_normal_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_interior(voxel_gi RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_use_two_bounces(voxel_gi RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_use_two_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&voxel_gi)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) voxel_gi_set_quality(quality RenderingServerVoxelGIQuality) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("voxel_gi_set_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1538689978)
    mut args := unsafe { [1]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) lightmap_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) lightmap_set_textures(lightmap RID, light RID, uses_sh bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_set_textures")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2646464759)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&light)}
    args[2] = unsafe{voidptr(&uses_sh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) lightmap_set_probe_bounds(lightmap RID, bounds AABB) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_set_probe_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&bounds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) lightmap_set_probe_interior(lightmap RID, interior bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_set_probe_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&interior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) lightmap_set_probe_capture_data(lightmap RID, points PackedVector3Array, point_sh PackedColorArray, tetrahedra PackedInt32Array, bsp_tree PackedInt32Array) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_set_probe_capture_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3217845880)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&point_sh)}
    args[3] = unsafe{voidptr(&tetrahedra)}
    args[4] = unsafe{voidptr(&bsp_tree)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_points(lightmap RID) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_get_probe_capture_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 808965560)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_sh(lightmap RID) PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_get_probe_capture_sh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1569415609)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_tetrahedra(lightmap RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_get_probe_capture_tetrahedra")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) lightmap_get_probe_capture_bsp_tree(lightmap RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_get_probe_capture_bsp_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) lightmap_set_baked_exposure_normalization(lightmap RID, baked_exposure f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_set_baked_exposure_normalization")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lightmap)}
    args[1] = unsafe{voidptr(&baked_exposure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) lightmap_set_probe_capture_update_speed(speed f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("lightmap_set_probe_capture_update_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) particles_set_mode(particles RID, mode RenderingServerParticlesMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3492270028)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_emitting(particles RID, emitting bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_emitting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&emitting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_get_emitting(particles RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_get_emitting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) particles_set_amount(particles RID, amount i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_amount_ratio(particles RID, ratio f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_amount_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_lifetime(particles RID, lifetime f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_lifetime")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&lifetime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_one_shot(particles RID, one_shot bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&one_shot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_pre_process_time(particles RID, time f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_pre_process_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_explosiveness_ratio(particles RID, ratio f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_explosiveness_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_randomness_ratio(particles RID, ratio f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_randomness_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_interp_to_end(particles RID, factor f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_interp_to_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_emitter_velocity(particles RID, velocity Vector3) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_emitter_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_custom_aabb(particles RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_custom_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_speed_scale(particles RID, scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_use_local_coordinates(particles RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_use_local_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_process_material(particles RID, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_process_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_fixed_fps(particles RID, fps i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_fixed_fps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_interpolate(particles RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_fractional_delta(particles RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_fractional_delta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_collision_base_size(particles RID, size f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_collision_base_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_transform_align(particles RID, align RenderingServerParticlesTransformAlign) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_transform_align")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3264971368)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    i64_align := i64(align)
    args[1] = unsafe{voidptr(&i64_align)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_trails(particles RID, enable bool, length_sec f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_trails")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2010054925)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&length_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_trail_bind_poses(particles RID, bind_poses Array) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_trail_bind_poses")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&bind_poses)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_is_inactive(particles RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_is_inactive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) particles_request_process(particles RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_request_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_restart(particles RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_restart")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_subemitter(particles RID, subemitter_particles RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_subemitter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&subemitter_particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_emit(particles RID, transform Transform3D, velocity Vector3, color Color, custom Color, emit_flags u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_emit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4043136117)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&velocity)}
    args[3] = unsafe{voidptr(&color)}
    args[4] = unsafe{voidptr(&custom)}
    args[5] = unsafe{voidptr(&emit_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_draw_order(particles RID, order RenderingServerParticlesDrawOrder) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_draw_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 935028487)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    i64_order := i64(order)
    args[1] = unsafe{voidptr(&i64_order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_draw_passes(particles RID, count i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_draw_passes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_set_draw_pass_mesh(particles RID, pass i32, mesh RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_draw_pass_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&pass)}
    args[2] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_get_current_aabb(particles RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_get_current_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3952830260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) particles_set_emission_transform(particles RID, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_set_emission_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) particles_collision_set_collision_type(particles_collision RID, type_name RenderingServerParticlesCollisionType) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_collision_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497044930)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_cull_mask(particles_collision RID, mask u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_sphere_radius(particles_collision RID, radius f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_sphere_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_box_extents(particles_collision RID, extents Vector3) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_box_extents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&extents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_attractor_strength(particles_collision RID, strength f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_attractor_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_attractor_directionality(particles_collision RID, amount f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_attractor_directionality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_attractor_attenuation(particles_collision RID, curve f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_attractor_attenuation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&curve)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_field_texture(particles_collision RID, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_field_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_height_field_update(particles_collision RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_height_field_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) particles_collision_set_height_field_resolution(particles_collision RID, resolution RenderingServerParticlesCollisionHeightfieldResolution) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("particles_collision_set_height_field_resolution")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 962977297)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&particles_collision)}
    i64_resolution := i64(resolution)
    args[1] = unsafe{voidptr(&i64_resolution)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) fog_volume_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("fog_volume_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) fog_volume_set_shape(fog_volume RID, shape RenderingServerFogVolumeShape) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("fog_volume_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3818703106)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&fog_volume)}
    i64_shape := i64(shape)
    args[1] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) fog_volume_set_size(fog_volume RID, size Vector3) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("fog_volume_set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&fog_volume)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) fog_volume_set_material(fog_volume RID, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("fog_volume_set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&fog_volume)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) visibility_notifier_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("visibility_notifier_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) visibility_notifier_set_aabb(notifier RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("visibility_notifier_set_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&notifier)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) visibility_notifier_set_callbacks(notifier RID, enter_callable Callable, exit_callable Callable) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("visibility_notifier_set_callbacks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2689735388)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&notifier)}
    args[1] = unsafe{voidptr(&enter_callable)}
    args[2] = unsafe{voidptr(&exit_callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) occluder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("occluder_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) occluder_set_mesh(occluder RID, vertices PackedVector3Array, indices PackedInt32Array) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("occluder_set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3854404263)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&vertices)}
    args[2] = unsafe{voidptr(&indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) camera_set_perspective(camera RID, fovy_degrees f64, z_near f64, z_far f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_perspective")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 157498339)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&fovy_degrees)}
    args[2] = unsafe{voidptr(&z_near)}
    args[3] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_orthogonal(camera RID, size f64, z_near f64, z_far f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_orthogonal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 157498339)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&z_near)}
    args[3] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_frustum(camera RID, size f64, offset Vector2, z_near f64, z_far f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_frustum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1889878953)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&z_near)}
    args[4] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_transform(camera RID, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_cull_mask(camera RID, layers u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_environment(camera RID, env RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&env)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_camera_attributes(camera RID, effects RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_camera_attributes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&effects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_set_use_vertical_aspect(camera RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_set_use_vertical_aspect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_use_xr(viewport RID, use_xr bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_use_xr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&use_xr)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_size(viewport RID, width i32, height i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_active(viewport RID, active bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_parent_viewport(viewport RID, parent_viewport RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_parent_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&parent_viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_attach_to_screen(viewport RID, rect Rect2, screen i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_attach_to_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062245816)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_render_direct_to_screen(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_render_direct_to_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_canvas_cull_mask(viewport RID, canvas_cull_mask u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_canvas_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas_cull_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_scaling_3d_mode(viewport RID, scaling_3d_mode RenderingServerViewportScaling3DMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_scaling_3d_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2386524376)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_scaling_3d_mode := i64(scaling_3d_mode)
    args[1] = unsafe{voidptr(&i64_scaling_3d_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_scaling_3d_scale(viewport RID, scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_scaling_3d_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_fsr_sharpness(viewport RID, sharpness f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_fsr_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&sharpness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_texture_mipmap_bias(viewport RID, mipmap_bias f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_texture_mipmap_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&mipmap_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_update_mode(viewport RID, update_mode RenderingServerViewportUpdateMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161116010)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_update_mode := i64(update_mode)
    args[1] = unsafe{voidptr(&i64_update_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_clear_mode(viewport RID, clear_mode RenderingServerViewportClearMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_clear_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3628367896)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_clear_mode := i64(clear_mode)
    args[1] = unsafe{voidptr(&i64_clear_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) viewport_get_render_target(viewport RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_get_render_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) viewport_get_texture(viewport RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_disable_3d(viewport RID, disable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_disable_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_disable_2d(viewport RID, disable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_disable_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_environment_mode(viewport RID, mode RenderingServerViewportEnvironmentMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_environment_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2196892182)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_attach_camera(viewport RID, camera RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_attach_camera")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&camera)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_scenario(viewport RID, scenario RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_scenario")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_attach_canvas(viewport RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_attach_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_remove_canvas(viewport RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_remove_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_snap_2d_transforms_to_pixel(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_snap_2d_transforms_to_pixel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_snap_2d_vertices_to_pixel(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_snap_2d_vertices_to_pixel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_default_canvas_item_texture_filter(viewport RID, filter RenderingServerCanvasItemTextureFilter) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_default_canvas_item_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155129294)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_filter := i64(filter)
    args[1] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_default_canvas_item_texture_repeat(viewport RID, repeat RenderingServerCanvasItemTextureRepeat) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_default_canvas_item_texture_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1652956681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_repeat := i64(repeat)
    args[1] = unsafe{voidptr(&i64_repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_canvas_transform(viewport RID, canvas RID, offset Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_canvas_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3608606053)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_canvas_stacking(viewport RID, canvas RID, layer i32, sublayer i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_canvas_stacking")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3713930247)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&sublayer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_transparent_background(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_transparent_background")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_global_canvas_transform(viewport RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_global_canvas_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_sdf_oversize_and_scale(viewport RID, oversize RenderingServerViewportSDFOversize, scale RenderingServerViewportSDFScale) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_sdf_oversize_and_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1329198632)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_oversize := i64(oversize)
    args[1] = unsafe{voidptr(&i64_oversize)}
    i64_scale := i64(scale)
    args[2] = unsafe{voidptr(&i64_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_positional_shadow_atlas_size(viewport RID, size i32, use_16_bits bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_positional_shadow_atlas_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904426712)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&use_16_bits)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_positional_shadow_atlas_quadrant_subdivision(viewport RID, quadrant i32, subdivision i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_positional_shadow_atlas_quadrant_subdivision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&quadrant)}
    args[2] = unsafe{voidptr(&subdivision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_msaa_3d(viewport RID, msaa RenderingServerViewportMSAA) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_msaa_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3764433340)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_msaa := i64(msaa)
    args[1] = unsafe{voidptr(&i64_msaa)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_msaa_2d(viewport RID, msaa RenderingServerViewportMSAA) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_msaa_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3764433340)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_msaa := i64(msaa)
    args[1] = unsafe{voidptr(&i64_msaa)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_use_hdr_2d(viewport RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_use_hdr_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_screen_space_aa(viewport RID, mode RenderingServerViewportScreenSpaceAA) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_screen_space_aa")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1447279591)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_use_taa(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_use_taa")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_use_debanding(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_use_debanding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_use_occlusion_culling(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_use_occlusion_culling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_occlusion_rays_per_thread(rays_per_thread i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_occlusion_rays_per_thread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rays_per_thread)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_occlusion_culling_build_quality(quality RenderingServerViewportOcclusionCullingBuildQuality) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_occlusion_culling_build_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2069725696)
    mut args := unsafe { [1]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_get_render_info(viewport RID, type_name RenderingServerViewportRenderInfoType, info RenderingServerViewportRenderInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_get_render_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041262392)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    i64_info := i64(info)
    args[2] = unsafe{voidptr(&i64_info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_debug_draw(viewport RID, draw RenderingServerViewportDebugDraw) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_debug_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2089420930)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_draw := i64(draw)
    args[1] = unsafe{voidptr(&i64_draw)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_measure_render_time(viewport RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_measure_render_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) viewport_get_measured_render_time_cpu(viewport RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_get_measured_render_time_cpu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) viewport_get_measured_render_time_gpu(viewport RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_get_measured_render_time_gpu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) viewport_set_vrs_mode(viewport RID, mode RenderingServerViewportVRSMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_vrs_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 398809874)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) viewport_set_vrs_texture(viewport RID, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("viewport_set_vrs_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&viewport)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) sky_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sky_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) sky_set_radiance_size(sky RID, radiance_size i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sky_set_radiance_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&radiance_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) sky_set_mode(sky RID, mode RenderingServerSkyMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sky_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3279019937)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) sky_set_material(sky RID, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sky_set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) sky_bake_panorama(sky RID, energy f64, bake_irradiance bool, size Vector2i) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sky_bake_panorama")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3875285818)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&sky)}
    args[1] = unsafe{voidptr(&energy)}
    args[2] = unsafe{voidptr(&bake_irradiance)}
    args[3] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) environment_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) environment_set_background(env RID, bg RenderingServerEnvironmentBG) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_background")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937328877)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    i64_bg := i64(bg)
    args[1] = unsafe{voidptr(&i64_bg)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sky(env RID, sky RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sky")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&sky)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sky_custom_fov(env RID, scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sky_custom_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sky_orientation(env RID, orientation Basis) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sky_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1735850857)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_bg_color(env RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_bg_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_bg_energy(env RID, multiplier f64, exposure_value f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_bg_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&multiplier)}
    args[2] = unsafe{voidptr(&exposure_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_canvas_max_layer(env RID, max_layer i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_canvas_max_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&max_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_ambient_light(env RID, color Color, ambient RenderingServerEnvironmentAmbientSource, energy f64, sky_contibution f64, reflection_source RenderingServerEnvironmentReflectionSource) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_ambient_light")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214961493)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&color)}
    i64_ambient := i64(ambient)
    args[2] = unsafe{voidptr(&i64_ambient)}
    args[3] = unsafe{voidptr(&energy)}
    args[4] = unsafe{voidptr(&sky_contibution)}
    i64_reflection_source := i64(reflection_source)
    args[5] = unsafe{voidptr(&i64_reflection_source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_glow(env RID, enable bool, levels PackedFloat32Array, intensity f64, strength f64, mix f64, bloom_threshold f64, blend_mode RenderingServerEnvironmentGlowBlendMode, hdr_bleed_threshold f64, hdr_bleed_scale f64, hdr_luminance_cap f64, glow_map_strength f64, glow_map RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_glow")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2421724940)
    mut args := unsafe { [13]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&levels)}
    args[3] = unsafe{voidptr(&intensity)}
    args[4] = unsafe{voidptr(&strength)}
    args[5] = unsafe{voidptr(&mix)}
    args[6] = unsafe{voidptr(&bloom_threshold)}
    i64_blend_mode := i64(blend_mode)
    args[7] = unsafe{voidptr(&i64_blend_mode)}
    args[8] = unsafe{voidptr(&hdr_bleed_threshold)}
    args[9] = unsafe{voidptr(&hdr_bleed_scale)}
    args[10] = unsafe{voidptr(&hdr_luminance_cap)}
    args[11] = unsafe{voidptr(&glow_map_strength)}
    args[12] = unsafe{voidptr(&glow_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_tonemap(env RID, tone_mapper RenderingServerEnvironmentToneMapper, exposure f64, white f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_tonemap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2914312638)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    i64_tone_mapper := i64(tone_mapper)
    args[1] = unsafe{voidptr(&i64_tone_mapper)}
    args[2] = unsafe{voidptr(&exposure)}
    args[3] = unsafe{voidptr(&white)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_adjustment(env RID, enable bool, brightness f64, contrast f64, saturation f64, use_1d_color_correction bool, color_correction RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_adjustment")
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_ssr(env RID, enable bool, max_steps i32, fade_in f64, fade_out f64, depth_tolerance f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_ssr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3607294374)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&max_steps)}
    args[3] = unsafe{voidptr(&fade_in)}
    args[4] = unsafe{voidptr(&fade_out)}
    args[5] = unsafe{voidptr(&depth_tolerance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_ssao(env RID, enable bool, radius f64, intensity f64, power f64, detail f64, horizon f64, sharpness f64, light_affect f64, ao_channel_affect f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_ssao")
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_fog(env RID, enable bool, light_color Color, light_energy f64, sun_scatter f64, density f64, height f64, height_density f64, aerial_perspective f64, sky_affect f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_fog")
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sdfgi(env RID, enable bool, cascades i32, min_cell_size f64, y_scale RenderingServerEnvironmentSDFGIYScale, use_occlusion bool, bounce_feedback f64, read_sky bool, energy f64, normal_bias f64, probe_bias f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sdfgi")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3519144388)
    mut args := unsafe { [11]voidptr{} }
    args[0] = unsafe{voidptr(&env)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&cascades)}
    args[3] = unsafe{voidptr(&min_cell_size)}
    i64_y_scale := i64(y_scale)
    args[4] = unsafe{voidptr(&i64_y_scale)}
    args[5] = unsafe{voidptr(&use_occlusion)}
    args[6] = unsafe{voidptr(&bounce_feedback)}
    args[7] = unsafe{voidptr(&read_sky)}
    args[8] = unsafe{voidptr(&energy)}
    args[9] = unsafe{voidptr(&normal_bias)}
    args[10] = unsafe{voidptr(&probe_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_volumetric_fog(env RID, enable bool, density f64, albedo Color, emission Color, emission_energy f64, anisotropy f64, length f64, p_detail_spread f64, gi_inject f64, temporal_reprojection bool, temporal_reprojection_amount f64, ambient_inject f64, sky_affect f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_volumetric_fog")
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_glow_set_use_bicubic_upscale(enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_glow_set_use_bicubic_upscale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_ssr_roughness_quality(quality RenderingServerEnvironmentSSRRoughnessQuality) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_ssr_roughness_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1190026788)
    mut args := unsafe { [1]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_ssao_quality(quality RenderingServerEnvironmentSSAOQuality, half_size bool, adaptive_target f64, blur_passes i32, fadeout_from f64, fadeout_to f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_ssao_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 189753569)
    mut args := unsafe { [6]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    args[1] = unsafe{voidptr(&half_size)}
    args[2] = unsafe{voidptr(&adaptive_target)}
    args[3] = unsafe{voidptr(&blur_passes)}
    args[4] = unsafe{voidptr(&fadeout_from)}
    args[5] = unsafe{voidptr(&fadeout_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_ssil_quality(quality RenderingServerEnvironmentSSILQuality, half_size bool, adaptive_target f64, blur_passes i32, fadeout_from f64, fadeout_to f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_ssil_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1713836683)
    mut args := unsafe { [6]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    args[1] = unsafe{voidptr(&half_size)}
    args[2] = unsafe{voidptr(&adaptive_target)}
    args[3] = unsafe{voidptr(&blur_passes)}
    args[4] = unsafe{voidptr(&fadeout_from)}
    args[5] = unsafe{voidptr(&fadeout_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sdfgi_ray_count(ray_count RenderingServerEnvironmentSDFGIRayCount) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sdfgi_ray_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 340137951)
    mut args := unsafe { [1]voidptr{} }
    i64_ray_count := i64(ray_count)
    args[0] = unsafe{voidptr(&i64_ray_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sdfgi_frames_to_converge(frames RenderingServerEnvironmentSDFGIFramesToConverge) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sdfgi_frames_to_converge")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2182444374)
    mut args := unsafe { [1]voidptr{} }
    i64_frames := i64(frames)
    args[0] = unsafe{voidptr(&i64_frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_sdfgi_frames_to_update_light(frames RenderingServerEnvironmentSDFGIFramesToUpdateLight) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_sdfgi_frames_to_update_light")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1251144068)
    mut args := unsafe { [1]voidptr{} }
    i64_frames := i64(frames)
    args[0] = unsafe{voidptr(&i64_frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_volumetric_fog_volume_size(size i32, depth i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_volumetric_fog_volume_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_set_volumetric_fog_filter_active(active bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_set_volumetric_fog_filter_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) environment_bake_panorama(environment RID, bake_irradiance bool, size Vector2i) Image {
    mut object_out := Image{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("environment_bake_panorama")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2452908646)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&environment)}
    args[1] = unsafe{voidptr(&bake_irradiance)}
    args[2] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) screen_space_roughness_limiter_set_active(enable bool, amount f64, limit f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("screen_space_roughness_limiter_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 916716790)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    args[1] = unsafe{voidptr(&amount)}
    args[2] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) sub_surface_scattering_set_quality(quality RenderingServerSubSurfaceScatteringQuality) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sub_surface_scattering_set_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 64571803)
    mut args := unsafe { [1]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) sub_surface_scattering_set_scale(scale f64, depth_scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("sub_surface_scattering_set_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017552074)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    args[1] = unsafe{voidptr(&depth_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_attributes_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_attributes_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) camera_attributes_set_dof_blur_quality(quality RenderingServerDOFBlurQuality, use_jitter bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_attributes_set_dof_blur_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2220136795)
    mut args := unsafe { [2]voidptr{} }
    i64_quality := i64(quality)
    args[0] = unsafe{voidptr(&i64_quality)}
    args[1] = unsafe{voidptr(&use_jitter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_attributes_set_dof_blur_bokeh_shape(shape RenderingServerDOFBokehShape) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_attributes_set_dof_blur_bokeh_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1205058394)
    mut args := unsafe { [1]voidptr{} }
    i64_shape := i64(shape)
    args[0] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_attributes_set_dof_blur(camera_attributes RID, far_enable bool, far_distance f64, far_transition f64, near_enable bool, near_distance f64, near_transition f64, amount f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_attributes_set_dof_blur")
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_attributes_set_exposure(camera_attributes RID, multiplier f64, normalization f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_attributes_set_exposure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2513314492)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&camera_attributes)}
    args[1] = unsafe{voidptr(&multiplier)}
    args[2] = unsafe{voidptr(&normalization)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) camera_attributes_set_auto_exposure(camera_attributes RID, enable bool, min_sensitivity f64, max_sensitivity f64, speed f64, scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("camera_attributes_set_auto_exposure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4266986332)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&camera_attributes)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&min_sensitivity)}
    args[3] = unsafe{voidptr(&max_sensitivity)}
    args[4] = unsafe{voidptr(&speed)}
    args[5] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) scenario_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("scenario_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) scenario_set_environment(scenario RID, environment RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("scenario_set_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scenario)}
    args[1] = unsafe{voidptr(&environment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) scenario_set_fallback_environment(scenario RID, environment RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("scenario_set_fallback_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scenario)}
    args[1] = unsafe{voidptr(&environment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) scenario_set_camera_attributes(scenario RID, effects RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("scenario_set_camera_attributes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scenario)}
    args[1] = unsafe{voidptr(&effects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_create2(base RID, scenario RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_create2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 746547085)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) instance_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) instance_set_base(instance RID, base RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_base")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&base)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_scenario(instance RID, scenario RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_scenario")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_layer_mask(instance RID, mask u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_layer_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_pivot_data(instance RID, sorting_offset f64, use_aabb_center bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_pivot_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1280615259)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&sorting_offset)}
    args[2] = unsafe{voidptr(&use_aabb_center)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_transform(instance RID, transform Transform3D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_attach_object_instance_id(instance RID, id u64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_blend_shape_weight(instance RID, shape i32, weight f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_blend_shape_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_surface_override_material(instance RID, surface i32, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_surface_override_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_visible(instance RID, visible bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_transparency(instance RID, transparency f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_transparency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&transparency)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_custom_aabb(instance RID, aabb AABB) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_custom_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3696536120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_attach_skeleton(instance RID, skeleton RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_attach_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_extra_visibility_margin(instance RID, margin f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_extra_visibility_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_visibility_parent(instance RID, parent RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_visibility_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_set_ignore_culling(instance RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_set_ignore_culling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_flag(instance RID, flag RenderingServerInstanceFlags, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1014989537)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    args[2] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_cast_shadows_setting(instance RID, shadow_casting_setting RenderingServerShadowCastingSetting) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_cast_shadows_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3768836020)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    i64_shadow_casting_setting := i64(shadow_casting_setting)
    args[1] = unsafe{voidptr(&i64_shadow_casting_setting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_material_override(instance RID, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_material_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_material_overlay(instance RID, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_material_overlay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_visibility_range(instance RID, min f64, max f64, min_margin f64, max_margin f64, fade_mode RenderingServerVisibilityRangeFadeMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_visibility_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4263925858)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&min)}
    args[2] = unsafe{voidptr(&max)}
    args[3] = unsafe{voidptr(&min_margin)}
    args[4] = unsafe{voidptr(&max_margin)}
    i64_fade_mode := i64(fade_mode)
    args[5] = unsafe{voidptr(&i64_fade_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_lightmap(instance RID, lightmap RID, lightmap_uv_scale Rect2, lightmap_slice i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_lightmap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 536974962)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&lightmap)}
    args[2] = unsafe{voidptr(&lightmap_uv_scale)}
    args[3] = unsafe{voidptr(&lightmap_slice)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_lod_bias(instance RID, lod_bias f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_lod_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&lod_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) instance_geometry_set_shader_parameter(instance RID, parameter StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_set_shader_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3477296213)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parameter)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) instance_geometry_get_shader_parameter(instance RID, parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_get_shader_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) instance_geometry_get_shader_parameter_default_value(instance RID, parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_get_shader_parameter_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621281810)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    args[1] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) instance_geometry_get_shader_parameter_list(instance RID) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instance_geometry_get_shader_parameter_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) instances_cull_aabb(aabb AABB, scenario RID) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instances_cull_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570105777)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) instances_cull_ray(from Vector3, to Vector3, scenario RID) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instances_cull_ray")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2208759584)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) instances_cull_convex(convex Array, scenario RID) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("instances_cull_convex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488539944)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&convex)}
    args[1] = unsafe{voidptr(&scenario)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) bake_render_uv2(base RID, material_overrides Array, image_size Vector2i) Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("bake_render_uv2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1904608558)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    args[1] = unsafe{voidptr(&material_overrides)}
    args[2] = unsafe{voidptr(&image_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_set_item_mirroring(canvas RID, item RID, mirroring Vector2) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_set_item_mirroring")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2343975398)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&item)}
    args[2] = unsafe{voidptr(&mirroring)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_set_modulate(canvas RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_set_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_set_disable_scale(disable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_set_disable_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_texture_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_texture_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_texture_set_channel(canvas_texture RID, channel RenderingServerCanvasTextureChannel, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_texture_set_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3822119138)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    i64_channel := i64(channel)
    args[1] = unsafe{voidptr(&i64_channel)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_texture_set_shading_parameters(canvas_texture RID, base_color Color, shininess f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_texture_set_shading_parameters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124967469)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    args[1] = unsafe{voidptr(&base_color)}
    args[2] = unsafe{voidptr(&shininess)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_texture_set_texture_filter(canvas_texture RID, filter RenderingServerCanvasItemTextureFilter) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_texture_set_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155129294)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    i64_filter := i64(filter)
    args[1] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_texture_set_texture_repeat(canvas_texture RID, repeat RenderingServerCanvasItemTextureRepeat) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_texture_set_texture_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1652956681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_texture)}
    i64_repeat := i64(repeat)
    args[1] = unsafe{voidptr(&i64_repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_item_set_parent(item RID, parent RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&parent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_default_texture_filter(item RID, filter RenderingServerCanvasItemTextureFilter) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_default_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1155129294)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    i64_filter := i64(filter)
    args[1] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_default_texture_repeat(item RID, repeat RenderingServerCanvasItemTextureRepeat) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_default_texture_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1652956681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    i64_repeat := i64(repeat)
    args[1] = unsafe{voidptr(&i64_repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_visible(item RID, visible bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_light_mask(item RID, mask i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_light_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_visibility_layer(item RID, visibility_layer u32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_visibility_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&visibility_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_transform(item RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_clip(item RID, clip bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_clip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&clip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_distance_field_mode(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_distance_field_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_custom_rect(item RID, use_custom_rect bool, rect Rect2) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_custom_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1333997032)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&use_custom_rect)}
    args[2] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_modulate(item RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_self_modulate(item RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_self_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_draw_behind_parent(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_draw_behind_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_line(item RID, from Vector2, to Vector2, color Color, width f64, antialiased bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819681853)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&from)}
    args[2] = unsafe{voidptr(&to)}
    args[3] = unsafe{voidptr(&color)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_polyline(item RID, points PackedVector2Array, colors PackedColorArray, width f64, antialiased bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_polyline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3098767073)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&width)}
    args[4] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_multiline(item RID, points PackedVector2Array, colors PackedColorArray, width f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_multiline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2088642721)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_rect(item RID, rect Rect2, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 934531857)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_circle(item RID, pos Vector2, radius f64, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_circle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2439351960)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&radius)}
    args[3] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_texture_rect(item RID, rect Rect2, texture RID, tile bool, modulate Color, transpose bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_texture_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 324864032)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&tile)}
    args[4] = unsafe{voidptr(&modulate)}
    args[5] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_msdf_texture_rect_region(item RID, rect Rect2, texture RID, src_rect Rect2, modulate Color, outline_size i32, px_range f64, scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_msdf_texture_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 97408773)
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_lcd_texture_rect_region(item RID, rect Rect2, texture RID, src_rect Rect2, modulate Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_lcd_texture_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 359793297)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&src_rect)}
    args[4] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_texture_rect_region(item RID, rect Rect2, texture RID, src_rect Rect2, modulate Color, transpose bool, clip_uv bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_texture_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 485157892)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&texture)}
    args[3] = unsafe{voidptr(&src_rect)}
    args[4] = unsafe{voidptr(&modulate)}
    args[5] = unsafe{voidptr(&transpose)}
    args[6] = unsafe{voidptr(&clip_uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_nine_patch(item RID, rect Rect2, source Rect2, texture RID, topleft Vector2, bottomright Vector2, x_axis_mode RenderingServerNinePatchAxisMode, y_axis_mode RenderingServerNinePatchAxisMode, draw_center bool, modulate Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_nine_patch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 389957886)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&source)}
    args[3] = unsafe{voidptr(&texture)}
    args[4] = unsafe{voidptr(&topleft)}
    args[5] = unsafe{voidptr(&bottomright)}
    i64_x_axis_mode := i64(x_axis_mode)
    args[6] = unsafe{voidptr(&i64_x_axis_mode)}
    i64_y_axis_mode := i64(y_axis_mode)
    args[7] = unsafe{voidptr(&i64_y_axis_mode)}
    args[8] = unsafe{voidptr(&draw_center)}
    args[9] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_primitive(item RID, points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_primitive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3731601077)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&uvs)}
    args[4] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_polygon(item RID, points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3580000528)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&points)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&uvs)}
    args[4] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_triangle_array(item RID, indices PackedInt32Array, points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, bones PackedInt32Array, weights PackedFloat32Array, texture RID, count i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_triangle_array")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 660261329)
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
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_mesh(item RID, mesh RID, transform Transform2D, modulate Color, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 316450961)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mesh)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_multimesh(item RID, mesh RID, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_multimesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2131855138)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&mesh)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_particles(item RID, particles RID, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_particles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2575754278)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&particles)}
    args[2] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_set_transform(item RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_clip_ignore(item RID, ignore bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_clip_ignore")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&ignore)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_add_animation_slice(item RID, animation_length f64, slice_begin f64, slice_end f64, offset f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_add_animation_slice")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2646834499)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&animation_length)}
    args[2] = unsafe{voidptr(&slice_begin)}
    args[3] = unsafe{voidptr(&slice_end)}
    args[4] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_sort_children_by_y(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_sort_children_by_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_z_index(item RID, z_index i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&z_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_z_as_relative_to_parent(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_z_as_relative_to_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_copy_to_backbuffer(item RID, enabled bool, rect Rect2) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_copy_to_backbuffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2429202503)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_clear(item RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_draw_index(item RID, index i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_draw_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_material(item RID, material RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&material)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_use_parent_material(item RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_use_parent_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_visibility_notifier(item RID, enable bool, area Rect2, enter_callable Callable, exit_callable Callable) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_visibility_notifier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3568945579)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&area)}
    args[3] = unsafe{voidptr(&enter_callable)}
    args[4] = unsafe{voidptr(&exit_callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_item_set_canvas_group_mode(item RID, mode RenderingServerCanvasGroupMode, clear_margin f64, fit_empty bool, fit_margin f64, blur_mipmaps bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_item_set_canvas_group_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3973586316)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    args[2] = unsafe{voidptr(&clear_margin)}
    args[3] = unsafe{voidptr(&fit_empty)}
    args[4] = unsafe{voidptr(&fit_margin)}
    args[5] = unsafe{voidptr(&blur_mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_light_attach_to_canvas(light RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_attach_to_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_enabled(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_texture_scale(light RID, scale f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_texture_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_transform(light RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_texture(light RID, texture RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_texture_offset(light RID, offset Vector2) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_texture_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_color(light RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_height(light RID, height f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_energy(light RID, energy f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_z_range(light RID, min_z i32, max_z i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_z_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&min_z)}
    args[2] = unsafe{voidptr(&max_z)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_layer_range(light RID, min_layer i32, max_layer i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_layer_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288446313)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&min_layer)}
    args[2] = unsafe{voidptr(&max_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_item_cull_mask(light RID, mask i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_item_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_item_shadow_cull_mask(light RID, mask i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_item_shadow_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_mode(light RID, mode RenderingServerCanvasLightMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2957564891)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_enabled(light RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_shadow_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_filter(light RID, filter RenderingServerCanvasLightShadowFilter) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_shadow_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 393119659)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_filter := i64(filter)
    args[1] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_color(light RID, color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_shadow_smooth(light RID, smooth f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_shadow_smooth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    args[1] = unsafe{voidptr(&smooth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_set_blend_mode(light RID, mode RenderingServerCanvasLightBlendMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_set_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 804895945)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_occluder_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_light_occluder_attach_to_canvas(occluder RID, canvas RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_attach_to_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&canvas)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_enabled(occluder RID, enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_polygon(occluder RID, polygon RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_set_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_as_sdf_collision(occluder RID, enable bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_set_as_sdf_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_transform(occluder RID, transform Transform2D) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_light_occluder_set_light_mask(occluder RID, mask i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_light_occluder_set_light_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_occluder_polygon_create() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_occluder_polygon_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) canvas_occluder_polygon_set_shape(occluder_polygon RID, shape PackedVector2Array, closed bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_occluder_polygon_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2103882027)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&occluder_polygon)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&closed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_occluder_polygon_set_cull_mode(occluder_polygon RID, mode RenderingServerCanvasOccluderPolygonCullMode) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_occluder_polygon_set_cull_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1839404663)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&occluder_polygon)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) canvas_set_shadow_texture_size(size i32) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("canvas_set_shadow_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) global_shader_parameter_add(name StringName, type_name RenderingServerGlobalShaderParameterType, default_value Variant) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_add")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 463390080)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    args[2] = unsafe{voidptr(&default_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) global_shader_parameter_remove(name StringName) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_remove")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) global_shader_parameter_get_list() Array {
    mut object_out := Array{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_get_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) global_shader_parameter_set(name StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) global_shader_parameter_set_override(name StringName, value Variant) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_set_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) global_shader_parameter_get(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) global_shader_parameter_get_type(name StringName) RenderingServerGlobalShaderParameterType {
    mut object_out := i64(RenderingServerGlobalShaderParameterType.global_var_type_bool)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("global_shader_parameter_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601414142)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingServerGlobalShaderParameterType(object_out)}
}
pub fn (mut r RenderingServer) free_rid(rid RID) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) request_frame_drawn_callback(callable Callable) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("request_frame_drawn_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) has_changed() bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("has_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) get_rendering_info(info RenderingServerRenderingInfo) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_rendering_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3763192241)
    mut args := unsafe { [1]voidptr{} }
    i64_info := i64(info)
    args[0] = unsafe{voidptr(&i64_info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_name() String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_video_adapter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_vendor() String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_video_adapter_vendor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) get_video_adapter_type() RenderingDeviceDeviceType {
    mut object_out := i64(RenderingDeviceDeviceType.device_type_other)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_video_adapter_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3099547011)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceDeviceType(object_out)}
}
pub fn (r &RenderingServer) get_video_adapter_api_version() String {
    mut object_out := String{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_video_adapter_api_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) make_sphere_mesh(latitudes i32, longitudes i32, radius f64) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("make_sphere_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2251015897)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&latitudes)}
    args[1] = unsafe{voidptr(&longitudes)}
    args[2] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) get_test_cube() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_test_cube")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) get_test_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_test_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) get_white_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_white_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) set_boot_image(image Image, color Color, scale bool, use_filter bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("set_boot_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3759744527)
    mut args := unsafe { [4]voidptr{} }
    args[0] = image.ptr
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&scale)}
    args[3] = unsafe{voidptr(&use_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) get_default_clear_color() Color {
    mut object_out := Color{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_default_clear_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) set_default_clear_color(color Color) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("set_default_clear_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) has_feature(feature RenderingServerFeatures) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("has_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 598462696)
    mut args := unsafe { [1]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) has_os_feature(feature String) bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("has_os_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) set_debug_generate_wireframes(generate bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("set_debug_generate_wireframes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&generate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) is_render_loop_enabled() bool {
    mut object_out := false
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("is_render_loop_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) set_render_loop_enabled(enabled bool) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("set_render_loop_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) get_frame_setup_time_cpu() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_frame_setup_time_cpu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) force_sync() {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("force_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingServer) force_draw(swap_buffers bool, frame_step f64) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("force_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1076185472)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&swap_buffers)}
    args[1] = unsafe{voidptr(&frame_step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingServer) get_rendering_device() RenderingDevice {
    mut object_out := RenderingDevice{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("get_rendering_device")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1405107940)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingServer) create_local_rendering_device() RenderingDevice {
    mut object_out := RenderingDevice{}
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("create_local_rendering_device")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1405107940)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingServer) call_on_render_thread(callable Callable) {
    classname := StringName.new("RenderingServer")
    fnname := StringName.new("call_on_render_thread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

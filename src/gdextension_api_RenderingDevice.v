module vgdextension

pub enum RenderingDeviceDeviceType as i64 {
    device_type_other = 0
    device_type_integrated_gpu = 1
    device_type_discrete_gpu = 2
    device_type_virtual_gpu = 3
    device_type_cpu = 4
    device_type_max = 5
}

pub enum RenderingDeviceDriverResource as i64 {
    driver_resource_vulkan_device = 0
    driver_resource_vulkan_physical_device = 1
    driver_resource_vulkan_instance = 2
    driver_resource_vulkan_queue = 3
    driver_resource_vulkan_queue_family_index = 4
    driver_resource_vulkan_image = 5
    driver_resource_vulkan_image_view = 6
    driver_resource_vulkan_image_native_texture_format = 7
    driver_resource_vulkan_sampler = 8
    driver_resource_vulkan_descriptor_set = 9
    driver_resource_vulkan_buffer = 10
    driver_resource_vulkan_compute_pipeline = 11
    driver_resource_vulkan_render_pipeline = 12
}

pub enum RenderingDeviceDataFormat as i64 {
    data_format_r4g4_unorm_pack8 = 0
    data_format_r4g4b4a4_unorm_pack16 = 1
    data_format_b4g4r4a4_unorm_pack16 = 2
    data_format_r5g6b5_unorm_pack16 = 3
    data_format_b5g6r5_unorm_pack16 = 4
    data_format_r5g5b5a1_unorm_pack16 = 5
    data_format_b5g5r5a1_unorm_pack16 = 6
    data_format_a1r5g5b5_unorm_pack16 = 7
    data_format_r8_unorm = 8
    data_format_r8_snorm = 9
    data_format_r8_uscaled = 10
    data_format_r8_sscaled = 11
    data_format_r8_uint = 12
    data_format_r8_sint = 13
    data_format_r8_srgb = 14
    data_format_r8g8_unorm = 15
    data_format_r8g8_snorm = 16
    data_format_r8g8_uscaled = 17
    data_format_r8g8_sscaled = 18
    data_format_r8g8_uint = 19
    data_format_r8g8_sint = 20
    data_format_r8g8_srgb = 21
    data_format_r8g8b8_unorm = 22
    data_format_r8g8b8_snorm = 23
    data_format_r8g8b8_uscaled = 24
    data_format_r8g8b8_sscaled = 25
    data_format_r8g8b8_uint = 26
    data_format_r8g8b8_sint = 27
    data_format_r8g8b8_srgb = 28
    data_format_b8g8r8_unorm = 29
    data_format_b8g8r8_snorm = 30
    data_format_b8g8r8_uscaled = 31
    data_format_b8g8r8_sscaled = 32
    data_format_b8g8r8_uint = 33
    data_format_b8g8r8_sint = 34
    data_format_b8g8r8_srgb = 35
    data_format_r8g8b8a8_unorm = 36
    data_format_r8g8b8a8_snorm = 37
    data_format_r8g8b8a8_uscaled = 38
    data_format_r8g8b8a8_sscaled = 39
    data_format_r8g8b8a8_uint = 40
    data_format_r8g8b8a8_sint = 41
    data_format_r8g8b8a8_srgb = 42
    data_format_b8g8r8a8_unorm = 43
    data_format_b8g8r8a8_snorm = 44
    data_format_b8g8r8a8_uscaled = 45
    data_format_b8g8r8a8_sscaled = 46
    data_format_b8g8r8a8_uint = 47
    data_format_b8g8r8a8_sint = 48
    data_format_b8g8r8a8_srgb = 49
    data_format_a8b8g8r8_unorm_pack32 = 50
    data_format_a8b8g8r8_snorm_pack32 = 51
    data_format_a8b8g8r8_uscaled_pack32 = 52
    data_format_a8b8g8r8_sscaled_pack32 = 53
    data_format_a8b8g8r8_uint_pack32 = 54
    data_format_a8b8g8r8_sint_pack32 = 55
    data_format_a8b8g8r8_srgb_pack32 = 56
    data_format_a2r10g10b10_unorm_pack32 = 57
    data_format_a2r10g10b10_snorm_pack32 = 58
    data_format_a2r10g10b10_uscaled_pack32 = 59
    data_format_a2r10g10b10_sscaled_pack32 = 60
    data_format_a2r10g10b10_uint_pack32 = 61
    data_format_a2r10g10b10_sint_pack32 = 62
    data_format_a2b10g10r10_unorm_pack32 = 63
    data_format_a2b10g10r10_snorm_pack32 = 64
    data_format_a2b10g10r10_uscaled_pack32 = 65
    data_format_a2b10g10r10_sscaled_pack32 = 66
    data_format_a2b10g10r10_uint_pack32 = 67
    data_format_a2b10g10r10_sint_pack32 = 68
    data_format_r16_unorm = 69
    data_format_r16_snorm = 70
    data_format_r16_uscaled = 71
    data_format_r16_sscaled = 72
    data_format_r16_uint = 73
    data_format_r16_sint = 74
    data_format_r16_sfloat = 75
    data_format_r16g16_unorm = 76
    data_format_r16g16_snorm = 77
    data_format_r16g16_uscaled = 78
    data_format_r16g16_sscaled = 79
    data_format_r16g16_uint = 80
    data_format_r16g16_sint = 81
    data_format_r16g16_sfloat = 82
    data_format_r16g16b16_unorm = 83
    data_format_r16g16b16_snorm = 84
    data_format_r16g16b16_uscaled = 85
    data_format_r16g16b16_sscaled = 86
    data_format_r16g16b16_uint = 87
    data_format_r16g16b16_sint = 88
    data_format_r16g16b16_sfloat = 89
    data_format_r16g16b16a16_unorm = 90
    data_format_r16g16b16a16_snorm = 91
    data_format_r16g16b16a16_uscaled = 92
    data_format_r16g16b16a16_sscaled = 93
    data_format_r16g16b16a16_uint = 94
    data_format_r16g16b16a16_sint = 95
    data_format_r16g16b16a16_sfloat = 96
    data_format_r32_uint = 97
    data_format_r32_sint = 98
    data_format_r32_sfloat = 99
    data_format_r32g32_uint = 100
    data_format_r32g32_sint = 101
    data_format_r32g32_sfloat = 102
    data_format_r32g32b32_uint = 103
    data_format_r32g32b32_sint = 104
    data_format_r32g32b32_sfloat = 105
    data_format_r32g32b32a32_uint = 106
    data_format_r32g32b32a32_sint = 107
    data_format_r32g32b32a32_sfloat = 108
    data_format_r64_uint = 109
    data_format_r64_sint = 110
    data_format_r64_sfloat = 111
    data_format_r64g64_uint = 112
    data_format_r64g64_sint = 113
    data_format_r64g64_sfloat = 114
    data_format_r64g64b64_uint = 115
    data_format_r64g64b64_sint = 116
    data_format_r64g64b64_sfloat = 117
    data_format_r64g64b64a64_uint = 118
    data_format_r64g64b64a64_sint = 119
    data_format_r64g64b64a64_sfloat = 120
    data_format_b10g11r11_ufloat_pack32 = 121
    data_format_e5b9g9r9_ufloat_pack32 = 122
    data_format_d16_unorm = 123
    data_format_x8_d24_unorm_pack32 = 124
    data_format_d32_sfloat = 125
    data_format_s8_uint = 126
    data_format_d16_unorm_s8_uint = 127
    data_format_d24_unorm_s8_uint = 128
    data_format_d32_sfloat_s8_uint = 129
    data_format_bc1_rgb_unorm_block = 130
    data_format_bc1_rgb_srgb_block = 131
    data_format_bc1_rgba_unorm_block = 132
    data_format_bc1_rgba_srgb_block = 133
    data_format_bc2_unorm_block = 134
    data_format_bc2_srgb_block = 135
    data_format_bc3_unorm_block = 136
    data_format_bc3_srgb_block = 137
    data_format_bc4_unorm_block = 138
    data_format_bc4_snorm_block = 139
    data_format_bc5_unorm_block = 140
    data_format_bc5_snorm_block = 141
    data_format_bc6h_ufloat_block = 142
    data_format_bc6h_sfloat_block = 143
    data_format_bc7_unorm_block = 144
    data_format_bc7_srgb_block = 145
    data_format_etc2_r8g8b8_unorm_block = 146
    data_format_etc2_r8g8b8_srgb_block = 147
    data_format_etc2_r8g8b8a1_unorm_block = 148
    data_format_etc2_r8g8b8a1_srgb_block = 149
    data_format_etc2_r8g8b8a8_unorm_block = 150
    data_format_etc2_r8g8b8a8_srgb_block = 151
    data_format_eac_r11_unorm_block = 152
    data_format_eac_r11_snorm_block = 153
    data_format_eac_r11g11_unorm_block = 154
    data_format_eac_r11g11_snorm_block = 155
    data_format_astc_4x4_unorm_block = 156
    data_format_astc_4x4_srgb_block = 157
    data_format_astc_5x4_unorm_block = 158
    data_format_astc_5x4_srgb_block = 159
    data_format_astc_5x5_unorm_block = 160
    data_format_astc_5x5_srgb_block = 161
    data_format_astc_6x5_unorm_block = 162
    data_format_astc_6x5_srgb_block = 163
    data_format_astc_6x6_unorm_block = 164
    data_format_astc_6x6_srgb_block = 165
    data_format_astc_8x5_unorm_block = 166
    data_format_astc_8x5_srgb_block = 167
    data_format_astc_8x6_unorm_block = 168
    data_format_astc_8x6_srgb_block = 169
    data_format_astc_8x8_unorm_block = 170
    data_format_astc_8x8_srgb_block = 171
    data_format_astc_10x5_unorm_block = 172
    data_format_astc_10x5_srgb_block = 173
    data_format_astc_10x6_unorm_block = 174
    data_format_astc_10x6_srgb_block = 175
    data_format_astc_10x8_unorm_block = 176
    data_format_astc_10x8_srgb_block = 177
    data_format_astc_10x10_unorm_block = 178
    data_format_astc_10x10_srgb_block = 179
    data_format_astc_12x10_unorm_block = 180
    data_format_astc_12x10_srgb_block = 181
    data_format_astc_12x12_unorm_block = 182
    data_format_astc_12x12_srgb_block = 183
    data_format_g8b8g8r8_422_unorm = 184
    data_format_b8g8r8g8_422_unorm = 185
    data_format_g8_b8_r8_3plane_420_unorm = 186
    data_format_g8_b8r8_2plane_420_unorm = 187
    data_format_g8_b8_r8_3plane_422_unorm = 188
    data_format_g8_b8r8_2plane_422_unorm = 189
    data_format_g8_b8_r8_3plane_444_unorm = 190
    data_format_r10x6_unorm_pack16 = 191
    data_format_r10x6g10x6_unorm_2pack16 = 192
    data_format_r10x6g10x6b10x6a10x6_unorm_4pack16 = 193
    data_format_g10x6b10x6g10x6r10x6_422_unorm_4pack16 = 194
    data_format_b10x6g10x6r10x6g10x6_422_unorm_4pack16 = 195
    data_format_g10x6_b10x6_r10x6_3plane_420_unorm_3pack16 = 196
    data_format_g10x6_b10x6r10x6_2plane_420_unorm_3pack16 = 197
    data_format_g10x6_b10x6_r10x6_3plane_422_unorm_3pack16 = 198
    data_format_g10x6_b10x6r10x6_2plane_422_unorm_3pack16 = 199
    data_format_g10x6_b10x6_r10x6_3plane_444_unorm_3pack16 = 200
    data_format_r12x4_unorm_pack16 = 201
    data_format_r12x4g12x4_unorm_2pack16 = 202
    data_format_r12x4g12x4b12x4a12x4_unorm_4pack16 = 203
    data_format_g12x4b12x4g12x4r12x4_422_unorm_4pack16 = 204
    data_format_b12x4g12x4r12x4g12x4_422_unorm_4pack16 = 205
    data_format_g12x4_b12x4_r12x4_3plane_420_unorm_3pack16 = 206
    data_format_g12x4_b12x4r12x4_2plane_420_unorm_3pack16 = 207
    data_format_g12x4_b12x4_r12x4_3plane_422_unorm_3pack16 = 208
    data_format_g12x4_b12x4r12x4_2plane_422_unorm_3pack16 = 209
    data_format_g12x4_b12x4_r12x4_3plane_444_unorm_3pack16 = 210
    data_format_g16b16g16r16_422_unorm = 211
    data_format_b16g16r16g16_422_unorm = 212
    data_format_g16_b16_r16_3plane_420_unorm = 213
    data_format_g16_b16r16_2plane_420_unorm = 214
    data_format_g16_b16_r16_3plane_422_unorm = 215
    data_format_g16_b16r16_2plane_422_unorm = 216
    data_format_g16_b16_r16_3plane_444_unorm = 217
    data_format_max = 218
}

pub enum RenderingDeviceBarrierMask as i64 {
    barrier_mask_vertex = 1
    barrier_mask_fragment = 8
    barrier_mask_compute = 2
    barrier_mask_transfer = 4
    barrier_mask_raster = 9
    barrier_mask_all_barriers = 32767
    barrier_mask_no_barrier = 32768
}

pub enum RenderingDeviceTextureType as i64 {
    texture_type_1d = 0
    texture_type_2d = 1
    texture_type_3d = 2
    texture_type_cube = 3
    texture_type_1d_array = 4
    texture_type_2d_array = 5
    texture_type_cube_array = 6
    texture_type_max = 7
}

pub enum RenderingDeviceTextureSamples as i64 {
    texture_samples_1 = 0
    texture_samples_2 = 1
    texture_samples_4 = 2
    texture_samples_8 = 3
    texture_samples_16 = 4
    texture_samples_32 = 5
    texture_samples_64 = 6
    texture_samples_max = 7
}

pub enum RenderingDeviceTextureUsageBits as i64 {
    texture_usage_sampling_bit = 1
    texture_usage_color_attachment_bit = 2
    texture_usage_depth_stencil_attachment_bit = 4
    texture_usage_storage_bit = 8
    texture_usage_storage_atomic_bit = 16
    texture_usage_cpu_read_bit = 32
    texture_usage_can_update_bit = 64
    texture_usage_can_copy_from_bit = 128
    texture_usage_can_copy_to_bit = 256
    texture_usage_input_attachment_bit = 512
}

pub enum RenderingDeviceTextureSwizzle as i64 {
    texture_swizzle_identity = 0
    texture_swizzle_zero = 1
    texture_swizzle_one = 2
    texture_swizzle_r = 3
    texture_swizzle_g = 4
    texture_swizzle_b = 5
    texture_swizzle_a = 6
    texture_swizzle_max = 7
}

pub enum RenderingDeviceTextureSliceType as i64 {
    texture_slice_2d = 0
    texture_slice_cubemap = 1
    texture_slice_3d = 2
}

pub enum RenderingDeviceSamplerFilter as i64 {
    sampler_filter_nearest = 0
    sampler_filter_linear = 1
}

pub enum RenderingDeviceSamplerRepeatMode as i64 {
    sampler_repeat_mode_repeat = 0
    sampler_repeat_mode_mirrored_repeat = 1
    sampler_repeat_mode_clamp_to_edge = 2
    sampler_repeat_mode_clamp_to_border = 3
    sampler_repeat_mode_mirror_clamp_to_edge = 4
    sampler_repeat_mode_max = 5
}

pub enum RenderingDeviceSamplerBorderColor as i64 {
    sampler_border_color_float_transparent_black = 0
    sampler_border_color_int_transparent_black = 1
    sampler_border_color_float_opaque_black = 2
    sampler_border_color_int_opaque_black = 3
    sampler_border_color_float_opaque_white = 4
    sampler_border_color_int_opaque_white = 5
    sampler_border_color_max = 6
}

pub enum RenderingDeviceVertexFrequency as i64 {
    vertex_frequency_vertex = 0
    vertex_frequency_instance = 1
}

pub enum RenderingDeviceIndexBufferFormat as i64 {
    index_buffer_format_uint16 = 0
    index_buffer_format_uint32 = 1
}

pub enum RenderingDeviceStorageBufferUsage as i64 {
    storage_buffer_usage_dispatch_indirect = 1
}

pub enum RenderingDeviceUniformType as i64 {
    uniform_type_sampler = 0
    uniform_type_sampler_with_texture = 1
    uniform_type_texture = 2
    uniform_type_image = 3
    uniform_type_texture_buffer = 4
    uniform_type_sampler_with_texture_buffer = 5
    uniform_type_image_buffer = 6
    uniform_type_uniform_buffer = 7
    uniform_type_storage_buffer = 8
    uniform_type_input_attachment = 9
    uniform_type_max = 10
}

pub enum RenderingDeviceRenderPrimitive as i64 {
    render_primitive_points = 0
    render_primitive_lines = 1
    render_primitive_lines_with_adjacency = 2
    render_primitive_linestrips = 3
    render_primitive_linestrips_with_adjacency = 4
    render_primitive_triangles = 5
    render_primitive_triangles_with_adjacency = 6
    render_primitive_triangle_strips = 7
    render_primitive_triangle_strips_with_ajacency = 8
    render_primitive_triangle_strips_with_restart_index = 9
    render_primitive_tesselation_patch = 10
    render_primitive_max = 11
}

pub enum RenderingDevicePolygonCullMode as i64 {
    polygon_cull_disabled = 0
    polygon_cull_front = 1
    polygon_cull_back = 2
}

pub enum RenderingDevicePolygonFrontFace as i64 {
    polygon_front_face_clockwise = 0
    polygon_front_face_counter_clockwise = 1
}

pub enum RenderingDeviceStencilOperation as i64 {
    stencil_op_keep = 0
    stencil_op_zero = 1
    stencil_op_replace = 2
    stencil_op_increment_and_clamp = 3
    stencil_op_decrement_and_clamp = 4
    stencil_op_invert = 5
    stencil_op_increment_and_wrap = 6
    stencil_op_decrement_and_wrap = 7
    stencil_op_max = 8
}

pub enum RenderingDeviceCompareOperator as i64 {
    compare_op_never = 0
    compare_op_less = 1
    compare_op_equal = 2
    compare_op_less_or_equal = 3
    compare_op_greater = 4
    compare_op_not_equal = 5
    compare_op_greater_or_equal = 6
    compare_op_always = 7
    compare_op_max = 8
}

pub enum RenderingDeviceLogicOperation as i64 {
    logic_op_clear = 0
    logic_op_and = 1
    logic_op_and_reverse = 2
    logic_op_copy = 3
    logic_op_and_inverted = 4
    logic_op_no_op = 5
    logic_op_xor = 6
    logic_op_or = 7
    logic_op_nor = 8
    logic_op_equivalent = 9
    logic_op_invert = 10
    logic_op_or_reverse = 11
    logic_op_copy_inverted = 12
    logic_op_or_inverted = 13
    logic_op_nand = 14
    logic_op_set = 15
    logic_op_max = 16
}

pub enum RenderingDeviceBlendFactor as i64 {
    blend_factor_zero = 0
    blend_factor_one = 1
    blend_factor_src_color = 2
    blend_factor_one_minus_src_color = 3
    blend_factor_dst_color = 4
    blend_factor_one_minus_dst_color = 5
    blend_factor_src_alpha = 6
    blend_factor_one_minus_src_alpha = 7
    blend_factor_dst_alpha = 8
    blend_factor_one_minus_dst_alpha = 9
    blend_factor_constant_color = 10
    blend_factor_one_minus_constant_color = 11
    blend_factor_constant_alpha = 12
    blend_factor_one_minus_constant_alpha = 13
    blend_factor_src_alpha_saturate = 14
    blend_factor_src1_color = 15
    blend_factor_one_minus_src1_color = 16
    blend_factor_src1_alpha = 17
    blend_factor_one_minus_src1_alpha = 18
    blend_factor_max = 19
}

pub enum RenderingDeviceBlendOperation as i64 {
    blend_op_add = 0
    blend_op_subtract = 1
    blend_op_reverse_subtract = 2
    blend_op_minimum = 3
    blend_op_maximum = 4
    blend_op_max = 5
}

pub enum RenderingDevicePipelineDynamicStateFlags as i64 {
    dynamic_state_line_width = 1
    dynamic_state_depth_bias = 2
    dynamic_state_blend_constants = 4
    dynamic_state_depth_bounds = 8
    dynamic_state_stencil_compare_mask = 16
    dynamic_state_stencil_write_mask = 32
    dynamic_state_stencil_reference = 64
}

pub enum RenderingDeviceInitialAction as i64 {
    initial_action_clear = 0
    initial_action_clear_region = 1
    initial_action_clear_region_continue = 2
    initial_action_keep = 3
    initial_action_drop = 4
    initial_action_continue = 5
    initial_action_max = 6
}

pub enum RenderingDeviceFinalAction as i64 {
    final_action_read = 0
    final_action_discard = 1
    final_action_continue = 2
    final_action_max = 3
}

pub enum RenderingDeviceShaderStage as i64 {
    shader_stage_vertex = 0
    shader_stage_fragment = 1
    shader_stage_tesselation_control = 2
    shader_stage_tesselation_evaluation = 3
    shader_stage_compute = 4
    shader_stage_max = 5
    shader_stage_tesselation_evaluation_bit = 8
    shader_stage_compute_bit = 16
}

pub enum RenderingDeviceShaderLanguage as i64 {
    shader_language_glsl = 0
    shader_language_hlsl = 1
}

pub enum RenderingDevicePipelineSpecializationConstantType as i64 {
    pipeline_specialization_constant_type_bool = 0
    pipeline_specialization_constant_type_int = 1
    pipeline_specialization_constant_type_float = 2
}

pub enum RenderingDeviceLimit as i64 {
    limit_max_bound_uniform_sets = 0
    limit_max_framebuffer_color_attachments = 1
    limit_max_textures_per_uniform_set = 2
    limit_max_samplers_per_uniform_set = 3
    limit_max_storage_buffers_per_uniform_set = 4
    limit_max_storage_images_per_uniform_set = 5
    limit_max_uniform_buffers_per_uniform_set = 6
    limit_max_draw_indexed_index = 7
    limit_max_framebuffer_height = 8
    limit_max_framebuffer_width = 9
    limit_max_texture_array_layers = 10
    limit_max_texture_size_1d = 11
    limit_max_texture_size_2d = 12
    limit_max_texture_size_3d = 13
    limit_max_texture_size_cube = 14
    limit_max_textures_per_shader_stage = 15
    limit_max_samplers_per_shader_stage = 16
    limit_max_storage_buffers_per_shader_stage = 17
    limit_max_storage_images_per_shader_stage = 18
    limit_max_uniform_buffers_per_shader_stage = 19
    limit_max_push_constant_size = 20
    limit_max_uniform_buffer_size = 21
    limit_max_vertex_input_attribute_offset = 22
    limit_max_vertex_input_attributes = 23
    limit_max_vertex_input_bindings = 24
    limit_max_vertex_input_binding_stride = 25
    limit_min_uniform_buffer_offset_alignment = 26
    limit_max_compute_shared_memory_size = 27
    limit_max_compute_workgroup_count_x = 28
    limit_max_compute_workgroup_count_y = 29
    limit_max_compute_workgroup_count_z = 30
    limit_max_compute_workgroup_invocations = 31
    limit_max_compute_workgroup_size_x = 32
    limit_max_compute_workgroup_size_y = 33
    limit_max_compute_workgroup_size_z = 34
    limit_max_viewport_dimensions_x = 35
    limit_max_viewport_dimensions_y = 36
}

pub enum RenderingDeviceMemoryType as i64 {
    memory_textures = 0
    memory_buffers = 1
    memory_total = 2
}

@[noinit]
pub struct RenderingDevice {
    Object
}

pub fn (mut r RenderingDevice) texture_create(format RDTextureFormat, view RDTextureView, data Array) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709173589)
    mut args := unsafe { [3]voidptr{} }
    args[0] = format.ptr
    args[1] = view.ptr
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_create_shared(view RDTextureView, with_texture RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_create_shared")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3178156134)
    mut args := unsafe { [2]voidptr{} }
    args[0] = view.ptr
    args[1] = unsafe{voidptr(&with_texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_create_shared_from_slice(view RDTextureView, with_texture RID, layer u32, mipmap u32, mipmaps u32, slice_type RenderingDeviceTextureSliceType) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_create_shared_from_slice")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808971279)
    mut args := unsafe { [6]voidptr{} }
    args[0] = view.ptr
    args[1] = unsafe{voidptr(&with_texture)}
    args[2] = unsafe{voidptr(&layer)}
    args[3] = unsafe{voidptr(&mipmap)}
    args[4] = unsafe{voidptr(&mipmaps)}
    i64_slice_type := i64(slice_type)
    args[5] = unsafe{voidptr(&i64_slice_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_create_from_extension(type_name RenderingDeviceTextureType, format RenderingDeviceDataFormat, samples RenderingDeviceTextureSamples, usage_flags RenderingDeviceTextureUsageBits, image u64, width u64, height u64, depth u64, layers u64) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_create_from_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1397171480)
    mut args := unsafe { [9]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    i64_format := i64(format)
    args[1] = unsafe{voidptr(&i64_format)}
    i64_samples := i64(samples)
    args[2] = unsafe{voidptr(&i64_samples)}
    i64_usage_flags := i64(usage_flags)
    args[3] = unsafe{voidptr(&i64_usage_flags)}
    args[4] = unsafe{voidptr(&image)}
    args[5] = unsafe{voidptr(&width)}
    args[6] = unsafe{voidptr(&height)}
    args[7] = unsafe{voidptr(&depth)}
    args[8] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_update(texture RID, layer u32, data PackedByteArray, post_barrier RenderingDeviceBarrierMask) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2096463824)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&layer)}
    args[2] = unsafe{voidptr(&data)}
    i64_post_barrier := i64(post_barrier)
    args[3] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r RenderingDevice) texture_get_data(texture RID, layer u32) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1859412099)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) texture_is_format_supported_for_usage(format RenderingDeviceDataFormat, usage_flags RenderingDeviceTextureUsageBits) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_is_format_supported_for_usage")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2592520478)
    mut args := unsafe { [2]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    i64_usage_flags := i64(usage_flags)
    args[1] = unsafe{voidptr(&i64_usage_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_is_shared(texture RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_is_shared")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_is_valid(texture RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_is_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_copy(from_texture RID, to_texture RID, from_pos Vector3, to_pos Vector3, size Vector3, src_mipmap u32, dst_mipmap u32, src_layer u32, dst_layer u32, post_barrier RenderingDeviceBarrierMask) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_copy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339493201)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&from_texture)}
    args[1] = unsafe{voidptr(&to_texture)}
    args[2] = unsafe{voidptr(&from_pos)}
    args[3] = unsafe{voidptr(&to_pos)}
    args[4] = unsafe{voidptr(&size)}
    args[5] = unsafe{voidptr(&src_mipmap)}
    args[6] = unsafe{voidptr(&dst_mipmap)}
    args[7] = unsafe{voidptr(&src_layer)}
    args[8] = unsafe{voidptr(&dst_layer)}
    i64_post_barrier := i64(post_barrier)
    args[9] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r RenderingDevice) texture_clear(texture RID, color Color, base_mipmap u32, mipmap_count u32, base_layer u32, layer_count u32, post_barrier RenderingDeviceBarrierMask) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3396867530)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&base_mipmap)}
    args[3] = unsafe{voidptr(&mipmap_count)}
    args[4] = unsafe{voidptr(&base_layer)}
    args[5] = unsafe{voidptr(&layer_count)}
    i64_post_barrier := i64(post_barrier)
    args[6] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r RenderingDevice) texture_resolve_multisample(from_texture RID, to_texture RID, post_barrier RenderingDeviceBarrierMask) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_resolve_multisample")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 594679454)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from_texture)}
    args[1] = unsafe{voidptr(&to_texture)}
    i64_post_barrier := i64(post_barrier)
    args[2] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r RenderingDevice) texture_get_format(texture RID) RDTextureFormat {
    mut object_out := RDTextureFormat{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1374471690)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_get_native_handle(texture RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_get_native_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_format_create(attachments Array, view_count u32) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_format_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 697032759)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&attachments)}
    args[1] = unsafe{voidptr(&view_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_format_create_multipass(attachments Array, passes Array, view_count u32) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_format_create_multipass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2647479094)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&attachments)}
    args[1] = unsafe{voidptr(&passes)}
    args[2] = unsafe{voidptr(&view_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_format_create_empty(samples RenderingDeviceTextureSamples) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_format_create_empty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 555930169)
    mut args := unsafe { [1]voidptr{} }
    i64_samples := i64(samples)
    args[0] = unsafe{voidptr(&i64_samples)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_format_get_texture_samples(format i64, render_pass u32) RenderingDeviceTextureSamples {
    mut object_out := i64(RenderingDeviceTextureSamples.texture_samples_1)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_format_get_texture_samples")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223391010)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&render_pass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureSamples(object_out)}
}
pub fn (mut r RenderingDevice) framebuffer_create(textures Array, validate_with_format i64, view_count u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3284231055)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&textures)}
    args[1] = unsafe{voidptr(&validate_with_format)}
    args[2] = unsafe{voidptr(&view_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_create_multipass(textures Array, passes Array, validate_with_format i64, view_count u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_create_multipass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1750306695)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&textures)}
    args[1] = unsafe{voidptr(&passes)}
    args[2] = unsafe{voidptr(&validate_with_format)}
    args[3] = unsafe{voidptr(&view_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_create_empty(size Vector2i, samples RenderingDeviceTextureSamples, validate_with_format i64) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_create_empty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3058360618)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    i64_samples := i64(samples)
    args[1] = unsafe{voidptr(&i64_samples)}
    args[2] = unsafe{voidptr(&validate_with_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) framebuffer_get_format(framebuffer RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&framebuffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) framebuffer_is_valid(framebuffer RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("framebuffer_is_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&framebuffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) sampler_create(state RDSamplerState) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("sampler_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2327892535)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) sampler_is_format_supported_for_filter(format RenderingDeviceDataFormat, sampler_filter RenderingDeviceSamplerFilter) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("sampler_is_format_supported_for_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2247922238)
    mut args := unsafe { [2]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    i64_sampler_filter := i64(sampler_filter)
    args[1] = unsafe{voidptr(&i64_sampler_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) vertex_buffer_create(size_bytes u32, data PackedByteArray, use_as_storage bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("vertex_buffer_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3410049843)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size_bytes)}
    args[1] = unsafe{voidptr(&data)}
    args[2] = unsafe{voidptr(&use_as_storage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) vertex_format_create(vertex_descriptions Array) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("vertex_format_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1242678479)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_descriptions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) vertex_array_create(vertex_count u32, vertex_format i64, src_buffers Array, offsets PackedInt64Array) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("vertex_array_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3799816279)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_count)}
    args[1] = unsafe{voidptr(&vertex_format)}
    args[2] = unsafe{voidptr(&src_buffers)}
    args[3] = unsafe{voidptr(&offsets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) index_buffer_create(size_indices u32, format RenderingDeviceIndexBufferFormat, data PackedByteArray, use_restart_indices bool) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("index_buffer_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935920523)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&size_indices)}
    i64_format := i64(format)
    args[1] = unsafe{voidptr(&i64_format)}
    args[2] = unsafe{voidptr(&data)}
    args[3] = unsafe{voidptr(&use_restart_indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) index_array_create(index_buffer RID, index_offset u32, index_count u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("index_array_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2256026069)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&index_buffer)}
    args[1] = unsafe{voidptr(&index_offset)}
    args[2] = unsafe{voidptr(&index_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) shader_compile_spirv_from_source(shader_source RDShaderSource, allow_cache bool) RDShaderSPIRV {
    mut object_out := RDShaderSPIRV{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("shader_compile_spirv_from_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1178973306)
    mut args := unsafe { [2]voidptr{} }
    args[0] = shader_source.ptr
    args[1] = unsafe{voidptr(&allow_cache)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) shader_compile_binary_from_spirv(spirv_data RDShaderSPIRV, name String) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("shader_compile_binary_from_spirv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 134910450)
    mut args := unsafe { [2]voidptr{} }
    args[0] = spirv_data.ptr
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) shader_create_from_spirv(spirv_data RDShaderSPIRV, name String) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("shader_create_from_spirv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 342949005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = spirv_data.ptr
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) shader_create_from_bytecode(binary_data PackedByteArray, placeholder_rid RID) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("shader_create_from_bytecode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1687031350)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&binary_data)}
    args[1] = unsafe{voidptr(&placeholder_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) shader_create_placeholder() RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("shader_create_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) shader_get_vertex_input_attribute_mask(shader RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("shader_get_vertex_input_attribute_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) uniform_buffer_create(size_bytes u32, data PackedByteArray) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("uniform_buffer_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 34556762)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size_bytes)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) storage_buffer_create(size_bytes u32, data PackedByteArray, usage RenderingDeviceStorageBufferUsage) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("storage_buffer_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2316365934)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size_bytes)}
    args[1] = unsafe{voidptr(&data)}
    i64_usage := i64(usage)
    args[2] = unsafe{voidptr(&i64_usage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) texture_buffer_create(size_bytes u32, format RenderingDeviceDataFormat, data PackedByteArray) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("texture_buffer_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1470338698)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size_bytes)}
    i64_format := i64(format)
    args[1] = unsafe{voidptr(&i64_format)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) uniform_set_create(uniforms Array, shader RID, shader_set u32) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("uniform_set_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2280795797)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&uniforms)}
    args[1] = unsafe{voidptr(&shader)}
    args[2] = unsafe{voidptr(&shader_set)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) uniform_set_is_valid(uniform_set RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("uniform_set_is_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uniform_set)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) buffer_update(buffer RID, offset u32, size_bytes u32, data PackedByteArray, post_barrier RenderingDeviceBarrierMask) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("buffer_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3793150683)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&size_bytes)}
    args[3] = unsafe{voidptr(&data)}
    i64_post_barrier := i64(post_barrier)
    args[4] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r RenderingDevice) buffer_clear(buffer RID, offset u32, size_bytes u32, post_barrier RenderingDeviceBarrierMask) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("buffer_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2797041220)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&size_bytes)}
    i64_post_barrier := i64(post_barrier)
    args[3] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r RenderingDevice) buffer_get_data(buffer RID, offset_bytes u32, size_bytes u32) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("buffer_get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3101830688)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&offset_bytes)}
    args[2] = unsafe{voidptr(&size_bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) render_pipeline_create(shader RID, framebuffer_format i64, vertex_format i64, primitive RenderingDeviceRenderPrimitive, rasterization_state RDPipelineRasterizationState, multisample_state RDPipelineMultisampleState, stencil_state RDPipelineDepthStencilState, color_blend_state RDPipelineColorBlendState, dynamic_state_flags RenderingDevicePipelineDynamicStateFlags, for_render_pass u32, specialization_constants Array) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("render_pipeline_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385451958)
    mut args := unsafe { [11]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&framebuffer_format)}
    args[2] = unsafe{voidptr(&vertex_format)}
    i64_primitive := i64(primitive)
    args[3] = unsafe{voidptr(&i64_primitive)}
    args[4] = rasterization_state.ptr
    args[5] = multisample_state.ptr
    args[6] = stencil_state.ptr
    args[7] = color_blend_state.ptr
    i64_dynamic_state_flags := i64(dynamic_state_flags)
    args[8] = unsafe{voidptr(&i64_dynamic_state_flags)}
    args[9] = unsafe{voidptr(&for_render_pass)}
    args[10] = unsafe{voidptr(&specialization_constants)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) render_pipeline_is_valid(render_pipeline RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("render_pipeline_is_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&render_pipeline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) compute_pipeline_create(shader RID, specialization_constants Array) RID {
    mut object_out := RID{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_pipeline_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1448838280)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shader)}
    args[1] = unsafe{voidptr(&specialization_constants)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) compute_pipeline_is_valid(compute_pipeline RID) bool {
    mut object_out := false
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_pipeline_is_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&compute_pipeline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) screen_get_width(screen i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("screen_get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) screen_get_height(screen i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("screen_get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) screen_get_framebuffer_format() i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("screen_get_framebuffer_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) draw_list_begin_for_screen(screen i32, clear_color Color) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_begin_for_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3988079995)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    args[1] = unsafe{voidptr(&clear_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) draw_list_begin(framebuffer RID, initial_color_action RenderingDeviceInitialAction, final_color_action RenderingDeviceFinalAction, initial_depth_action RenderingDeviceInitialAction, final_depth_action RenderingDeviceFinalAction, clear_color_values PackedColorArray, clear_depth f64, clear_stencil u32, region Rect2, storage_textures Array) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2468082605)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&framebuffer)}
    i64_initial_color_action := i64(initial_color_action)
    args[1] = unsafe{voidptr(&i64_initial_color_action)}
    i64_final_color_action := i64(final_color_action)
    args[2] = unsafe{voidptr(&i64_final_color_action)}
    i64_initial_depth_action := i64(initial_depth_action)
    args[3] = unsafe{voidptr(&i64_initial_depth_action)}
    i64_final_depth_action := i64(final_depth_action)
    args[4] = unsafe{voidptr(&i64_final_depth_action)}
    args[5] = unsafe{voidptr(&clear_color_values)}
    args[6] = unsafe{voidptr(&clear_depth)}
    args[7] = unsafe{voidptr(&clear_stencil)}
    args[8] = unsafe{voidptr(&region)}
    args[9] = unsafe{voidptr(&storage_textures)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) draw_list_begin_split(framebuffer RID, splits u32, initial_color_action RenderingDeviceInitialAction, final_color_action RenderingDeviceFinalAction, initial_depth_action RenderingDeviceInitialAction, final_depth_action RenderingDeviceFinalAction, clear_color_values PackedColorArray, clear_depth f64, clear_stencil u32, region Rect2, storage_textures Array) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_begin_split")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2406300660)
    mut args := unsafe { [11]voidptr{} }
    args[0] = unsafe{voidptr(&framebuffer)}
    args[1] = unsafe{voidptr(&splits)}
    i64_initial_color_action := i64(initial_color_action)
    args[2] = unsafe{voidptr(&i64_initial_color_action)}
    i64_final_color_action := i64(final_color_action)
    args[3] = unsafe{voidptr(&i64_final_color_action)}
    i64_initial_depth_action := i64(initial_depth_action)
    args[4] = unsafe{voidptr(&i64_initial_depth_action)}
    i64_final_depth_action := i64(final_depth_action)
    args[5] = unsafe{voidptr(&i64_final_depth_action)}
    args[6] = unsafe{voidptr(&clear_color_values)}
    args[7] = unsafe{voidptr(&clear_depth)}
    args[8] = unsafe{voidptr(&clear_stencil)}
    args[9] = unsafe{voidptr(&region)}
    args[10] = unsafe{voidptr(&storage_textures)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) draw_list_set_blend_constants(draw_list i64, color Color) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_set_blend_constants")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_bind_render_pipeline(draw_list i64, render_pipeline RID) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_bind_render_pipeline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&render_pipeline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_bind_uniform_set(draw_list i64, uniform_set RID, set_index u32) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_bind_uniform_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 749655778)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&uniform_set)}
    args[2] = unsafe{voidptr(&set_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_bind_vertex_array(draw_list i64, vertex_array RID) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_bind_vertex_array")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&vertex_array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_bind_index_array(draw_list i64, index_array RID) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_bind_index_array")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&index_array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_set_push_constant(draw_list i64, buffer PackedByteArray, size_bytes u32) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_set_push_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2772371345)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&buffer)}
    args[2] = unsafe{voidptr(&size_bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_draw(draw_list i64, use_indices bool, instances u32, procedural_vertex_count u32) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4230067973)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&use_indices)}
    args[2] = unsafe{voidptr(&instances)}
    args[3] = unsafe{voidptr(&procedural_vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_enable_scissor(draw_list i64, rect Rect2) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_enable_scissor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 244650101)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_disable_scissor(draw_list i64) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_disable_scissor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draw_list)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_list_switch_to_next_pass() i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_switch_to_next_pass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) draw_list_switch_to_next_pass_split(splits u32) PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_switch_to_next_pass_split")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865087369)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&splits)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) draw_list_end(post_barrier RenderingDeviceBarrierMask) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_list_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3920951950)
    mut args := unsafe { [1]voidptr{} }
    i64_post_barrier := i64(post_barrier)
    args[0] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) compute_list_begin(allow_draw_overlap bool) i64 {
    mut object_out := i64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968564752)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_draw_overlap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) compute_list_bind_compute_pipeline(compute_list i64, compute_pipeline RID) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_bind_compute_pipeline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&compute_list)}
    args[1] = unsafe{voidptr(&compute_pipeline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) compute_list_set_push_constant(compute_list i64, buffer PackedByteArray, size_bytes u32) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_set_push_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2772371345)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&compute_list)}
    args[1] = unsafe{voidptr(&buffer)}
    args[2] = unsafe{voidptr(&size_bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) compute_list_bind_uniform_set(compute_list i64, uniform_set RID, set_index u32) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_bind_uniform_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 749655778)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&compute_list)}
    args[1] = unsafe{voidptr(&uniform_set)}
    args[2] = unsafe{voidptr(&set_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) compute_list_dispatch(compute_list i64, x_groups u32, y_groups u32, z_groups u32) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_dispatch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4275841770)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&compute_list)}
    args[1] = unsafe{voidptr(&x_groups)}
    args[2] = unsafe{voidptr(&y_groups)}
    args[3] = unsafe{voidptr(&z_groups)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) compute_list_add_barrier(compute_list i64) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_add_barrier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&compute_list)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) compute_list_end(post_barrier RenderingDeviceBarrierMask) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("compute_list_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3920951950)
    mut args := unsafe { [1]voidptr{} }
    i64_post_barrier := i64(post_barrier)
    args[0] = unsafe{voidptr(&i64_post_barrier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) free_rid(rid RID) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) capture_timestamp(name String) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("capture_timestamp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingDevice) get_captured_timestamps_count() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_captured_timestamps_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_captured_timestamps_frame() u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_captured_timestamps_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_captured_timestamp_gpu_time(index u32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_captured_timestamp_gpu_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_captured_timestamp_cpu_time(index u32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_captured_timestamp_cpu_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_captured_timestamp_name(index u32) String {
    mut object_out := String{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_captured_timestamp_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) limit_get(limit RenderingDeviceLimit) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("limit_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559202131)
    mut args := unsafe { [1]voidptr{} }
    i64_limit := i64(limit)
    args[0] = unsafe{voidptr(&i64_limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_frame_delay() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_frame_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) submit() {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("submit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) sync() {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) barrier(from RenderingDeviceBarrierMask, to RenderingDeviceBarrierMask) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("barrier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3718155691)
    mut args := unsafe { [2]voidptr{} }
    i64_from := i64(from)
    args[0] = unsafe{voidptr(&i64_from)}
    i64_to := i64(to)
    args[1] = unsafe{voidptr(&i64_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) full_barrier() {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("full_barrier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) create_local_device() RenderingDevice {
    mut object_out := RenderingDevice{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("create_local_device")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2846302423)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) set_resource_name(id RID, name String) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("set_resource_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_command_begin_label(name String, color Color) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_command_begin_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1636512886)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_command_insert_label(name String, color Color) {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_command_insert_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1636512886)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RenderingDevice) draw_command_end_label() {
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("draw_command_end_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RenderingDevice) get_device_vendor_name() String {
    mut object_out := String{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_device_vendor_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_device_name() String {
    mut object_out := String{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_device_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_device_pipeline_cache_uuid() String {
    mut object_out := String{}
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_device_pipeline_cache_uuid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RenderingDevice) get_memory_usage(type_name RenderingDeviceMemoryType) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_memory_usage")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 251690689)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RenderingDevice) get_driver_resource(resource RenderingDeviceDriverResource, rid RID, index u64) u64 {
    mut object_out := u64(0)
    classname := StringName.new("RenderingDevice")
    fnname := StringName.new("get_driver_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501815484)
    mut args := unsafe { [3]voidptr{} }
    i64_resource := i64(resource)
    args[0] = unsafe{voidptr(&i64_resource)}
    args[1] = unsafe{voidptr(&rid)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

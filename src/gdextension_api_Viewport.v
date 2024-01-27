pub enum ViewportPositionalShadowAtlasQuadrantSubdiv {
    shadow_atlas_quadrant_subdiv_disabled = 0
    shadow_atlas_quadrant_subdiv_1 = 1
    shadow_atlas_quadrant_subdiv_4 = 2
    shadow_atlas_quadrant_subdiv_16 = 3
    shadow_atlas_quadrant_subdiv_64 = 4
    shadow_atlas_quadrant_subdiv_256 = 5
    shadow_atlas_quadrant_subdiv_1024 = 6
    shadow_atlas_quadrant_subdiv_max = 7
}

pub enum ViewportScaling3DMode {
    scaling_3d_mode_bilinear = 0
    scaling_3d_mode_fsr = 1
    scaling_3d_mode_max = 2
}

pub enum ViewportMSAA {
    msaa_disabled = 0
    msaa_2x = 1
    msaa_4x = 2
    msaa_8x = 3
    msaa_max = 4
}

pub enum ViewportScreenSpaceAA {
    screen_space_aa_disabled = 0
    screen_space_aa_fxaa = 1
    screen_space_aa_max = 2
}

pub enum ViewportRenderInfo {
    render_info_objects_in_frame = 0
    render_info_primitives_in_frame = 1
    render_info_draw_calls_in_frame = 2
    render_info_max = 3
}

pub enum ViewportRenderInfoType {
    render_info_type_visible = 0
    render_info_type_shadow = 1
    render_info_type_max = 2
}

pub enum ViewportDebugDraw {
    debug_draw_disabled = 0
    debug_draw_unshaded = 1
    debug_draw_lighting = 2
    debug_draw_overdraw = 3
    debug_draw_wireframe = 4
    debug_draw_normal_buffer = 5
    debug_draw_voxel_gi_albedo = 6
    debug_draw_voxel_gi_lighting = 7
    debug_draw_voxel_gi_emission = 8
    debug_draw_shadow_atlas = 9
    debug_draw_directional_shadow_atlas = 10
    debug_draw_scene_luminance = 11
    debug_draw_ssao = 12
    debug_draw_ssil = 13
    debug_draw_pssm_splits = 14
    debug_draw_decal_atlas = 15
    debug_draw_sdfgi = 16
    debug_draw_sdfgi_probes = 17
    debug_draw_gi_buffer = 18
    debug_draw_disable_lod = 19
    debug_draw_cluster_omni_lights = 20
    debug_draw_cluster_spot_lights = 21
    debug_draw_cluster_decals = 22
    debug_draw_cluster_reflection_probes = 23
    debug_draw_occluders = 24
    debug_draw_motion_vectors = 25
}

pub enum ViewportDefaultCanvasItemTextureFilter {
    default_canvas_item_texture_filter_nearest = 0
    default_canvas_item_texture_filter_linear = 1
    default_canvas_item_texture_filter_linear_with_mipmaps = 2
    default_canvas_item_texture_filter_nearest_with_mipmaps = 3
    default_canvas_item_texture_filter_max = 4
}

pub enum ViewportDefaultCanvasItemTextureRepeat {
    default_canvas_item_texture_repeat_disabled = 0
    default_canvas_item_texture_repeat_enabled = 1
    default_canvas_item_texture_repeat_mirror = 2
    default_canvas_item_texture_repeat_max = 3
}

pub enum ViewportSDFOversize {
    sdf_oversize_100_percent = 0
    sdf_oversize_120_percent = 1
    sdf_oversize_150_percent = 2
    sdf_oversize_200_percent = 3
    sdf_oversize_max = 4
}

pub enum ViewportSDFScale {
    sdf_scale_100_percent = 0
    sdf_scale_50_percent = 1
    sdf_scale_25_percent = 2
    sdf_scale_max = 3
}

pub enum ViewportVRSMode {
    vrs_disabled = 0
    vrs_texture = 1
    vrs_xr = 2
    vrs_max = 3
}

pub type Viewport = voidptr

pub fn (mut r Viewport) set_world_2d(world_2d World2D) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_world_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2736080068)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_world_2d() World2D {
    mut object_out := World2D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_world_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339128592)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) find_world_2d() World2D {
    mut object_out := World2D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("find_world_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339128592)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_canvas_transform(xform Transform2D) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_canvas_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_canvas_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_canvas_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_global_canvas_transform(xform Transform2D) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_canvas_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_global_canvas_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_canvas_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_final_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_final_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_screen_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_screen_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_visible_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_visible_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_transparent_background(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_transparent_background")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) has_transparent_background() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("has_transparent_background")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_msaa_2d(msaa ViewportMSAA) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_msaa_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3330258708)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_msaa_2d() ViewportMSAA {
    mut object_out := ViewportMSAA.msaa_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_msaa_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2542055527)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_msaa_3d(msaa ViewportMSAA) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_msaa_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3330258708)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_msaa_3d() ViewportMSAA {
    mut object_out := ViewportMSAA.msaa_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_msaa_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2542055527)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_screen_space_aa(screen_space_aa ViewportScreenSpaceAA) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_screen_space_aa")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3544169389)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_screen_space_aa() ViewportScreenSpaceAA {
    mut object_out := ViewportScreenSpaceAA.screen_space_aa_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_screen_space_aa")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1390814124)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_use_taa(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_taa")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_using_taa() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_taa")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_use_debanding(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_using_debanding() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_use_occlusion_culling(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_occlusion_culling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_using_occlusion_culling() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_occlusion_culling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_debug_draw(debug_draw ViewportDebugDraw) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1970246205)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_debug_draw() ViewportDebugDraw {
    mut object_out := ViewportDebugDraw.debug_draw_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 579191299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) get_render_info(type_name ViewportRenderInfoType, info ViewportRenderInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_render_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 481977019)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&info)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_texture() ViewportTexture {
    mut object_out := ViewportTexture(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1746695840)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_physics_object_picking(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_object_picking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Viewport) get_physics_object_picking() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_object_picking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_physics_object_picking_sort(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_object_picking_sort")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Viewport) get_physics_object_picking_sort() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_object_picking_sort")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_viewport_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_viewport_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) push_text_input(text String) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("push_text_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Viewport) push_input(event InputEvent, in_local_coords bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("push_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3644664830)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Viewport) push_unhandled_input(event InputEvent, in_local_coords bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("push_unhandled_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3644664830)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_camera_2d() Camera2D {
    mut object_out := Camera2D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3551466917)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_as_audio_listener_2d(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_audio_listener_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_audio_listener_2d() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_audio_listener_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_mouse_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_mouse_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) warp_mouse(position Vector2) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("warp_mouse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Viewport) update_mouse_cursor_state() {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("update_mouse_cursor_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) gui_get_drag_data() Variant {
    mut object_out := Variant{}
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("gui_get_drag_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) gui_is_dragging() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("gui_is_dragging")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) gui_is_drag_successful() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("gui_is_drag_successful")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) gui_release_focus() {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("gui_release_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) gui_get_focus_owner() Control {
    mut object_out := Control(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("gui_get_focus_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_disable_input(disable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_input_disabled() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_input_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_positional_shadow_atlas_size(size i32) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_positional_shadow_atlas_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_positional_shadow_atlas_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_positional_shadow_atlas_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_positional_shadow_atlas_16_bits(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_positional_shadow_atlas_16_bits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_positional_shadow_atlas_16_bits() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_positional_shadow_atlas_16_bits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_snap_controls_to_pixels(enabled bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_snap_controls_to_pixels")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_snap_controls_to_pixels_enabled() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_snap_controls_to_pixels_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_snap_2d_transforms_to_pixel(enabled bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_snap_2d_transforms_to_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_snap_2d_transforms_to_pixel_enabled() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_snap_2d_transforms_to_pixel_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_snap_2d_vertices_to_pixel(enabled bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_snap_2d_vertices_to_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_snap_2d_vertices_to_pixel_enabled() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_snap_2d_vertices_to_pixel_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_positional_shadow_atlas_quadrant_subdiv(quadrant i32, subdiv ViewportPositionalShadowAtlasQuadrantSubdiv) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_positional_shadow_atlas_quadrant_subdiv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2596956071)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_positional_shadow_atlas_quadrant_subdiv(quadrant i32) ViewportPositionalShadowAtlasQuadrantSubdiv {
    mut object_out := ViewportPositionalShadowAtlasQuadrantSubdiv.shadow_atlas_quadrant_subdiv_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_positional_shadow_atlas_quadrant_subdiv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2676778355)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quadrant)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_input_as_handled() {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_as_handled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_input_handled() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_input_handled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_handle_input_locally(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_handle_input_locally")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_handling_input_locally() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_handling_input_locally")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_default_canvas_item_texture_filter(mode ViewportDefaultCanvasItemTextureFilter) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_canvas_item_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2815160100)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_default_canvas_item_texture_filter() ViewportDefaultCanvasItemTextureFilter {
    mut object_out := ViewportDefaultCanvasItemTextureFilter.default_canvas_item_texture_filter_nearest
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_canvas_item_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 896601198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_embedding_subwindows(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_embedding_subwindows")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_embedding_subwindows() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_embedding_subwindows")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_canvas_cull_mask(mask i32) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_canvas_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_canvas_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_canvas_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_canvas_cull_mask_bit(layer i32, enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_canvas_cull_mask_bit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_canvas_cull_mask_bit(layer i32) bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_canvas_cull_mask_bit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_default_canvas_item_texture_repeat(mode ViewportDefaultCanvasItemTextureRepeat) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_canvas_item_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1658513413)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_default_canvas_item_texture_repeat() ViewportDefaultCanvasItemTextureRepeat {
    mut object_out := ViewportDefaultCanvasItemTextureRepeat.default_canvas_item_texture_repeat_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_canvas_item_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4049774160)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_sdf_oversize(oversize ViewportSDFOversize) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdf_oversize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2574159017)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_sdf_oversize() ViewportSDFOversize {
    mut object_out := ViewportSDFOversize.sdf_oversize_100_percent
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdf_oversize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2631427510)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_sdf_scale(scale ViewportSDFScale) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_sdf_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1402773951)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_sdf_scale() ViewportSDFScale {
    mut object_out := ViewportSDFScale.sdf_scale_100_percent
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_sdf_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3162688184)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_mesh_lod_threshold(pixels f32) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh_lod_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_mesh_lod_threshold() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh_lod_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_world_3d(world_3d World3D) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_world_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1400875337)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_world_3d() World3D {
    mut object_out := World3D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_world_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 317588385)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) find_world_3d() World3D {
    mut object_out := World3D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("find_world_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 317588385)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_use_own_world_3d(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_own_world_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_using_own_world_3d() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_own_world_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Viewport) get_camera_3d() Camera3D {
    mut object_out := Camera3D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285090890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_as_audio_listener_3d(enable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_audio_listener_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_audio_listener_3d() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_audio_listener_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_disable_3d(disable bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) is_3d_disabled() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_3d_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_use_xr(use bool) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_xr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Viewport) is_using_xr() bool {
    mut object_out := false
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_xr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_scaling_3d_mode(scaling_3d_mode ViewportScaling3DMode) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_scaling_3d_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1531597597)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_scaling_3d_mode() ViewportScaling3DMode {
    mut object_out := ViewportScaling3DMode.scaling_3d_mode_bilinear
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_scaling_3d_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2597660574)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_scaling_3d_scale(scale f32) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_scaling_3d_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_scaling_3d_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_scaling_3d_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_fsr_sharpness(fsr_sharpness f32) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_fsr_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_fsr_sharpness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_fsr_sharpness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_texture_mipmap_bias(texture_mipmap_bias f32) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_mipmap_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_texture_mipmap_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_mipmap_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_vrs_mode(mode ViewportVRSMode) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_vrs_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2749867817)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_vrs_mode() ViewportVRSMode {
    mut object_out := ViewportVRSMode.vrs_disabled
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_vrs_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349660525)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Viewport) set_vrs_texture(texture Texture2D) {
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_vrs_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Viewport) get_vrs_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("Viewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_vrs_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

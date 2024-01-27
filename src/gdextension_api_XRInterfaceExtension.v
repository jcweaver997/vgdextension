pub type XRInterfaceExtension = voidptr

pub fn (r &XRInterfaceExtension) uget_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uget_capabilities() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_capabilities")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uis_initialized() bool {
    mut object_out := false
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_initialized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uinitialize() bool {
    mut object_out := false
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uuninitialize() {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_uninitialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRInterfaceExtension) uget_system_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_system_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) usupports_play_area_mode(mode XRInterfacePlayAreaMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_supports_play_area_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uget_play_area_mode() XRInterfacePlayAreaMode {
    mut object_out := XRInterfacePlayAreaMode.xr_play_area_unknown
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_play_area_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uset_play_area_mode(mode XRInterfacePlayAreaMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_play_area_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uget_play_area() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_play_area")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_render_target_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_render_target_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_view_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_view_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_camera_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_camera_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_transform_for_view(view i32, cam_transform Transform3D) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_transform_for_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&view)}
    args[1] = unsafe{voidptr(&cam_transform)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_projection_for_view(view i32, aspect f32, z_near f32, z_far f32) PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_projection_for_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&view)}
    args[1] = unsafe{voidptr(&aspect)}
    args[2] = unsafe{voidptr(&z_near)}
    args[3] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_vrs_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_vrs_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uprocess() {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRInterfaceExtension) upre_render() {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pre_render")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRInterfaceExtension) upre_draw_viewport(render_target RID) bool {
    mut object_out := false
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pre_draw_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&render_target)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) upost_draw_viewport(render_target RID, screen_rect Rect2) {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_post_draw_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRInterfaceExtension) uend_frame() {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_end_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRInterfaceExtension) uget_suggested_tracker_names() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_suggested_tracker_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uget_suggested_pose_names(tracker_name StringName) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_suggested_pose_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tracker_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterfaceExtension) uget_tracking_status() XRInterfaceTrackingStatus {
    mut object_out := XRInterfaceTrackingStatus.xr_normal_tracking
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_tracking_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) utrigger_haptic_pulse(action_name String, tracker_name StringName, frequency f32, amplitude f32, duration_sec f32, delay_sec f32) {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_trigger_haptic_pulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRInterfaceExtension) uget_anchor_detection_is_enabled() bool {
    mut object_out := false
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_anchor_detection_is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uset_anchor_detection_is_enabled(enabled bool) {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_anchor_detection_is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRInterfaceExtension) uget_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_camera_feed_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_color_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_color_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_depth_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_depth_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) uget_velocity_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_velocity_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) get_color_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) get_depth_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) get_velocity_texture() RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("get_velocity_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterfaceExtension) add_blit(render_target RID, src_rect Rect2, dst_rect Rect2i, use_layer bool, layer i32, apply_lens_distortion bool, eye_center Vector2, k1 f32, k2 f32, upscale f32, aspect_ratio f32) {
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("add_blit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 258596971)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRInterfaceExtension) get_render_target_texture(render_target RID) RID {
    mut object_out := RID{}
    classname := StringName.new("XRInterfaceExtension")
    defer { classname.deinit() }
    fnname := StringName.new("get_render_target_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 41030802)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&render_target)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

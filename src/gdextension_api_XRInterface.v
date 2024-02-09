module vgdextension

pub enum XRInterfaceCapabilities {
    xr_none = 0
    xr_mono = 1
    xr_stereo = 2
    xr_quad = 4
    xr_vr = 8
    xr_ar = 16
    xr_external = 32
}

pub enum XRInterfaceTrackingStatus {
    xr_normal_tracking = 0
    xr_excessive_motion = 1
    xr_insufficient_features = 2
    xr_unknown_tracking = 3
    xr_not_tracking = 4
}

pub enum XRInterfacePlayAreaMode {
    xr_play_area_unknown = 0
    xr_play_area_3dof = 1
    xr_play_area_sitting = 2
    xr_play_area_roomscale = 3
    xr_play_area_stage = 4
}

pub enum XRInterfaceEnvironmentBlendMode {
    xr_env_blend_mode_opaque = 0
    xr_env_blend_mode_additive = 1
    xr_env_blend_mode_alpha_blend = 2
}

pub struct XRInterface {
    RefCounted
}

pub fn (r &XRInterface) get_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterface) get_capabilities() u32 {
    mut object_out := u32(0)
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_capabilities")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) is_primary() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_primary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) set_primary(primary bool) {
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_primary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&primary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRInterface) is_initialized() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_initialized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) initialize() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) uninitialize() {
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("uninitialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRInterface) get_system_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_system_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterface) get_tracking_status() XRInterfaceTrackingStatus {
    mut object_out := XRInterfaceTrackingStatus.xr_normal_tracking
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracking_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 167423259)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) get_render_target_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_render_target_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) get_view_count() u32 {
    mut object_out := u32(0)
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_view_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) trigger_haptic_pulse(action_name String, tracker_name StringName, frequency f64, amplitude f64, duration_sec f64, delay_sec f64) {
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("trigger_haptic_pulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3752640163)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&action_name)}
    args[1] = unsafe{voidptr(&tracker_name)}
    args[2] = unsafe{voidptr(&frequency)}
    args[3] = unsafe{voidptr(&amplitude)}
    args[4] = unsafe{voidptr(&duration_sec)}
    args[5] = unsafe{voidptr(&delay_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r XRInterface) supports_play_area_mode(mode XRInterfacePlayAreaMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("supports_play_area_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429955281)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterface) get_play_area_mode() XRInterfacePlayAreaMode {
    mut object_out := XRInterfacePlayAreaMode.xr_play_area_unknown
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_play_area_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1615132885)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) set_play_area_mode(mode XRInterfacePlayAreaMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_play_area_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429955281)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterface) get_play_area() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_play_area")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRInterface) get_anchor_detection_is_enabled() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_anchor_detection_is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) set_anchor_detection_is_enabled(enable bool) {
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_anchor_detection_is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r XRInterface) get_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_feed_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) is_passthrough_supported() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_passthrough_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) is_passthrough_enabled() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_passthrough_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) start_passthrough() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("start_passthrough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) stop_passthrough() {
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("stop_passthrough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRInterface) get_transform_for_view(view u32, cam_transform Transform3D) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform_for_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518934792)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&view)}
    args[1] = unsafe{voidptr(&cam_transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) get_projection_for_view(view u32, aspect f64, near f64, far f64) Projection {
    mut object_out := Projection{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_projection_for_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3766090294)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&view)}
    args[1] = unsafe{voidptr(&aspect)}
    args[2] = unsafe{voidptr(&near)}
    args[3] = unsafe{voidptr(&far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) get_supported_environment_blend_modes() Array {
    mut object_out := Array{}
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_supported_environment_blend_modes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRInterface) set_environment_blend_mode(mode XRInterfaceEnvironmentBlendMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 551152418)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

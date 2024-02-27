module vgdextension

pub enum XRInterfaceCapabilities as i64 {
    xr_none = 0
    xr_mono = 1
    xr_stereo = 2
    xr_quad = 4
    xr_vr = 8
    xr_ar = 16
    xr_external = 32
}

pub enum XRInterfaceTrackingStatus as i64 {
    xr_normal_tracking = 0
    xr_excessive_motion = 1
    xr_insufficient_features = 2
    xr_unknown_tracking = 3
    xr_not_tracking = 4
}

pub enum XRInterfacePlayAreaMode as i64 {
    xr_play_area_unknown = 0
    xr_play_area_3dof = 1
    xr_play_area_sitting = 2
    xr_play_area_roomscale = 3
    xr_play_area_stage = 4
}

pub enum XRInterfaceEnvironmentBlendMode as i64 {
    xr_env_blend_mode_opaque = 0
    xr_env_blend_mode_additive = 1
    xr_env_blend_mode_alpha_blend = 2
}

@[noinit]
pub struct XRInterface {
    RefCounted
}

pub fn (r &XRInterface) get_name() string {
    mut object_out := StringName{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &XRInterface) get_capabilities() u32 {
    mut object_out := u32(0)
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_capabilities")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) is_primary() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("is_primary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) set_primary(primary bool) {
    classname := StringName.new("XRInterface")
    fnname := StringName.new("set_primary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&primary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRInterface) is_initialized() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("is_initialized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) initialize() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("initialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) uninitialize() {
    classname := StringName.new("XRInterface")
    fnname := StringName.new("uninitialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r XRInterface) get_system_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_system_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRInterface) get_tracking_status() XRInterfaceTrackingStatus {
    mut object_out := i64(XRInterfaceTrackingStatus.xr_normal_tracking)
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_tracking_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 167423259)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XRInterfaceTrackingStatus(object_out)}
}
pub fn (mut r XRInterface) get_render_target_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_render_target_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) get_view_count() u32 {
    mut object_out := u32(0)
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_view_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) trigger_haptic_pulse(action_name string, tracker_name string, frequency f64, amplitude f64, duration_sec f64, delay_sec f64) {
    classname := StringName.new("XRInterface")
    fnname := StringName.new("trigger_haptic_pulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3752640163)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := String.new(action_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(tracker_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&frequency)}
    args[3] = unsafe{voidptr(&amplitude)}
    args[4] = unsafe{voidptr(&duration_sec)}
    args[5] = unsafe{voidptr(&delay_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r XRInterface) supports_play_area_mode(mode XRInterfacePlayAreaMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("supports_play_area_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429955281)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRInterface) get_play_area_mode() XRInterfacePlayAreaMode {
    mut object_out := i64(XRInterfacePlayAreaMode.xr_play_area_unknown)
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_play_area_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1615132885)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XRInterfacePlayAreaMode(object_out)}
}
pub fn (mut r XRInterface) set_play_area_mode(mode XRInterfacePlayAreaMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("set_play_area_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429955281)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRInterface) get_play_area() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_play_area")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRInterface) get_anchor_detection_is_enabled() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_anchor_detection_is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) set_anchor_detection_is_enabled(enable bool) {
    classname := StringName.new("XRInterface")
    fnname := StringName.new("set_anchor_detection_is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r XRInterface) get_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_camera_feed_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) is_passthrough_supported() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("is_passthrough_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) is_passthrough_enabled() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("is_passthrough_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) start_passthrough() bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("start_passthrough")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) stop_passthrough() {
    classname := StringName.new("XRInterface")
    fnname := StringName.new("stop_passthrough")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r XRInterface) get_transform_for_view(view u32, cam_transform Transform3D) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_transform_for_view")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518934792)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&view)}
    args[1] = unsafe{voidptr(&cam_transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) get_projection_for_view(view u32, aspect f64, near f64, far f64) Projection {
    mut object_out := Projection{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_projection_for_view")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3766090294)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&view)}
    args[1] = unsafe{voidptr(&aspect)}
    args[2] = unsafe{voidptr(&near)}
    args[3] = unsafe{voidptr(&far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) get_supported_environment_blend_modes() Array {
    mut object_out := Array{}
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_supported_environment_blend_modes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRInterface) set_environment_blend_mode(mode XRInterfaceEnvironmentBlendMode) bool {
    mut object_out := false
    classname := StringName.new("XRInterface")
    fnname := StringName.new("set_environment_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 551152418)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRInterface) get_environment_blend_mode() XRInterfaceEnvironmentBlendMode {
    mut object_out := i64(XRInterfaceEnvironmentBlendMode.xr_env_blend_mode_opaque)
    classname := StringName.new("XRInterface")
    fnname := StringName.new("get_environment_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1984334071)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XRInterfaceEnvironmentBlendMode(object_out)}
}

module vgdextension

pub enum WebXRInterfaceTargetRayMode as i64 {
    target_ray_mode_unknown = 0
    target_ray_mode_gaze = 1
    target_ray_mode_tracked_pointer = 2
    target_ray_mode_screen = 3
}

@[noinit]
pub struct WebXRInterface {
    XRInterface
}

pub fn (mut r WebXRInterface) is_session_supported(session_mode string) {
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("is_session_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(session_mode)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r WebXRInterface) set_session_mode(session_mode string) {
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("set_session_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(session_mode)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebXRInterface) get_session_mode() string {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_session_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r WebXRInterface) set_required_features(required_features string) {
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("set_required_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(required_features)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebXRInterface) get_required_features() string {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_required_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r WebXRInterface) set_optional_features(optional_features string) {
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("set_optional_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(optional_features)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebXRInterface) get_optional_features() string {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_optional_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebXRInterface) get_reference_space_type() string {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_reference_space_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r WebXRInterface) set_requested_reference_space_types(requested_reference_space_types string) {
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("set_requested_reference_space_types")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(requested_reference_space_types)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebXRInterface) get_requested_reference_space_types() string {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_requested_reference_space_types")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebXRInterface) is_input_source_active(input_source_id i32) bool {
    mut object_out := false
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("is_input_source_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_source_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebXRInterface) get_input_source_tracker(input_source_id i32) XRPositionalTracker {
    mut object_out := XRPositionalTracker{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_input_source_tracker")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 636011756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_source_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebXRInterface) get_input_source_target_ray_mode(input_source_id i32) WebXRInterfaceTargetRayMode {
    mut object_out := i64(WebXRInterfaceTargetRayMode.target_ray_mode_unknown)
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_input_source_target_ray_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2852387453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_source_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebXRInterfaceTargetRayMode(object_out)}
}
pub fn (r &WebXRInterface) get_visibility_state() string {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_visibility_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebXRInterface) get_display_refresh_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_display_refresh_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebXRInterface) set_display_refresh_rate(refresh_rate f64) {
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("set_display_refresh_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&refresh_rate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebXRInterface) get_available_display_refresh_rates() Array {
    mut object_out := Array{}
    classname := StringName.new("WebXRInterface")
    fnname := StringName.new("get_available_display_refresh_rates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

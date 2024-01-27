pub enum WebXRInterfaceTargetRayMode {
    target_ray_mode_unknown = 0
    target_ray_mode_gaze = 1
    target_ray_mode_tracked_pointer = 2
    target_ray_mode_screen = 3
}

pub type WebXRInterface = voidptr

pub fn (mut r WebXRInterface) is_session_supported(session_mode String) {
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_session_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r WebXRInterface) set_session_mode(session_mode String) {
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_session_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebXRInterface) get_session_mode() String {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_session_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebXRInterface) set_required_features(required_features String) {
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_required_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebXRInterface) get_required_features() String {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_required_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebXRInterface) set_optional_features(optional_features String) {
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_optional_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebXRInterface) get_optional_features() String {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_optional_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebXRInterface) get_reference_space_type() String {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_reference_space_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebXRInterface) set_requested_reference_space_types(requested_reference_space_types String) {
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_requested_reference_space_types")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebXRInterface) get_requested_reference_space_types() String {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_requested_reference_space_types")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebXRInterface) is_input_source_active(input_source_id i32) bool {
    mut object_out := false
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_input_source_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_source_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebXRInterface) get_input_source_tracker(input_source_id i32) XRPositionalTracker {
    mut object_out := XRPositionalTracker(unsafe{nil})
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_source_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 636011756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_source_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebXRInterface) get_input_source_target_ray_mode(input_source_id i32) WebXRInterfaceTargetRayMode {
    mut object_out := WebXRInterfaceTargetRayMode.target_ray_mode_unknown
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_source_target_ray_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2852387453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input_source_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebXRInterface) get_visibility_state() String {
    mut object_out := String{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebXRInterface) get_display_refresh_rate() f32 {
    mut object_out := f32(0)
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_refresh_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebXRInterface) set_display_refresh_rate(refresh_rate f32) {
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_refresh_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebXRInterface) get_available_display_refresh_rates() Array {
    mut object_out := Array{}
    classname := StringName.new("WebXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_available_display_refresh_rates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

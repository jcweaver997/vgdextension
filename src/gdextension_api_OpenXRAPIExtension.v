module vgdextension

@[noinit]
pub struct OpenXRAPIExtension {
    RefCounted
}

pub fn (mut r OpenXRAPIExtension) get_instance() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) get_system_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_system_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) get_session() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_session")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) transform_from_pose(pose voidptr) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("transform_from_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3255299855)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) xr_result(result u64, format string, gdargs Array) bool {
    mut object_out := false
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("xr_result")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886436197)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&result)}
    arg_sn1 := String.new(format)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn OpenXRAPIExtension.openxr_is_enabled(check_run_in_editor bool) bool {
    mut object_out := false
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("openxr_is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2703660260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&check_run_in_editor)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) get_instance_proc_addr(name string) u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_instance_proc_addr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) get_error_string(result u64) string {
    mut object_out := String{}
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_error_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&result)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r OpenXRAPIExtension) get_swapchain_format_name(swapchain_format i64) string {
    mut object_out := String{}
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_swapchain_format_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&swapchain_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r OpenXRAPIExtension) is_initialized() bool {
    mut object_out := false
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("is_initialized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) is_running() bool {
    mut object_out := false
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("is_running")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) get_play_space() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_play_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) get_next_frame_time() i64 {
    mut object_out := i64(0)
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("get_next_frame_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRAPIExtension) can_render() bool {
    mut object_out := false
    classname := StringName.new("OpenXRAPIExtension")
    fnname := StringName.new("can_render")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

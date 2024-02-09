module vgdextension

pub struct XRNode3D {
    Node3D
}

pub fn (mut r XRNode3D) set_tracker(tracker_name StringName) {
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tracker_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRNode3D) get_tracker() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRNode3D) set_pose_name(pose StringName) {
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pose_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRNode3D) get_pose_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pose_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRNode3D) get_is_active() bool {
    mut object_out := false
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRNode3D) get_has_tracking_data() bool {
    mut object_out := false
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_has_tracking_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRNode3D) get_pose() XRPose {
    mut object_out := XRPose{}
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2806551826)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRNode3D) trigger_haptic_pulse(action_name String, frequency f64, amplitude f64, duration_sec f64, delay_sec f64) {
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("trigger_haptic_pulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 508576839)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&action_name)}
    args[1] = unsafe{voidptr(&frequency)}
    args[2] = unsafe{voidptr(&amplitude)}
    args[3] = unsafe{voidptr(&duration_sec)}
    args[4] = unsafe{voidptr(&delay_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

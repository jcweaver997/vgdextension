pub type XRNode3D = voidptr

pub fn (mut r XRNode3D) set_tracker(tracker_name StringName) {
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRNode3D) get_tracker() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRNode3D) set_pose_name(pose StringName) {
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pose_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRNode3D) get_pose_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pose_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRNode3D) get_is_active() bool {
    mut object_out := false
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRNode3D) get_has_tracking_data() bool {
    mut object_out := false
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_has_tracking_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRNode3D) get_pose() XRPose {
    mut object_out := XRPose(unsafe{nil})
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2806551826)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRNode3D) trigger_haptic_pulse(action_name String, frequency f32, amplitude f32, duration_sec f32, delay_sec f32) {
    classname := StringName.new("XRNode3D")
    defer { classname.deinit() }
    fnname := StringName.new("trigger_haptic_pulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 508576839)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

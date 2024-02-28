module vgdextension

@[noinit]
pub struct XRNode3D {
    Node3D
}

pub fn (r &XRNode3D) set_tracker(tracker_name string) {
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("set_tracker")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(tracker_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRNode3D) get_tracker() string {
    mut object_out := StringName{}
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("get_tracker")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &XRNode3D) set_pose_name(pose string) {
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("set_pose_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(pose)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRNode3D) get_pose_name() string {
    mut object_out := StringName{}
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("get_pose_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &XRNode3D) get_is_active() bool {
    mut object_out := false
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("get_is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRNode3D) get_has_tracking_data() bool {
    mut object_out := false
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("get_has_tracking_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRNode3D) get_pose() XRPose {
    mut object_out := XRPose{}
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("get_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2806551826)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRNode3D) trigger_haptic_pulse(action_name string, frequency f64, amplitude f64, duration_sec f64, delay_sec f64) {
    classname := StringName.new("XRNode3D")
    fnname := StringName.new("trigger_haptic_pulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 508576839)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(action_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&frequency)}
    args[2] = unsafe{voidptr(&amplitude)}
    args[3] = unsafe{voidptr(&duration_sec)}
    args[4] = unsafe{voidptr(&delay_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}

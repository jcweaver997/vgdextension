module vgdextension

pub enum XRPositionalTrackerTrackerHand as i64 {
    tracker_hand_unknown = 0
    tracker_hand_left = 1
    tracker_hand_right = 2
}

@[noinit]
pub struct XRPositionalTracker {
    RefCounted
}

pub fn (r &XRPositionalTracker) get_tracker_type() XRServerTrackerType {
    mut object_out := i64(XRServerTrackerType.tracker_head)
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_tracker_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2784508102)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XRServerTrackerType(object_out)}
}
pub fn (r &XRPositionalTracker) set_tracker_type(type_name XRServerTrackerType) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_tracker_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3055763575)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) get_tracker_name() string {
    mut object_out := StringName{}
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_tracker_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &XRPositionalTracker) set_tracker_name(name string) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_tracker_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) get_tracker_desc() string {
    mut object_out := String{}
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_tracker_desc")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &XRPositionalTracker) set_tracker_desc(description string) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_tracker_desc")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(description)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) get_tracker_profile() string {
    mut object_out := String{}
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_tracker_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &XRPositionalTracker) set_tracker_profile(profile string) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_tracker_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(profile)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) get_tracker_hand() XRPositionalTrackerTrackerHand {
    mut object_out := i64(XRPositionalTrackerTrackerHand.tracker_hand_unknown)
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_tracker_hand")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181770860)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XRPositionalTrackerTrackerHand(object_out)}
}
pub fn (r &XRPositionalTracker) set_tracker_hand(hand XRPositionalTrackerTrackerHand) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_tracker_hand")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3904108980)
    mut args := unsafe { [1]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) has_pose(name string) bool {
    mut object_out := false
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("has_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRPositionalTracker) get_pose(name string) XRPose {
    mut object_out := XRPose{}
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4099720006)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRPositionalTracker) invalidate_pose(name string) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("invalidate_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) set_pose(name string, transform Transform3D, linear_velocity Vector3, angular_velocity Vector3, tracking_confidence XRPoseTrackingConfidence) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3451230163)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&transform)}
    args[2] = unsafe{voidptr(&linear_velocity)}
    args[3] = unsafe{voidptr(&angular_velocity)}
    i64_tracking_confidence := i64(tracking_confidence)
    args[4] = unsafe{voidptr(&i64_tracking_confidence)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPositionalTracker) get_input(name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("get_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRPositionalTracker) set_input(name string, value Variant) {
    classname := StringName.new("XRPositionalTracker")
    fnname := StringName.new("set_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}

pub enum XRPositionalTrackerTrackerHand {
    tracker_hand_unknown = 0
    tracker_hand_left = 1
    tracker_hand_right = 2
}

pub type XRPositionalTracker = voidptr

pub fn (r &XRPositionalTracker) get_tracker_type() XRServerTrackerType {
    mut object_out := XRServerTrackerType.tracker_head
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2784508102)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) set_tracker_type(type_name XRServerTrackerType) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3055763575)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPositionalTracker) get_tracker_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) set_tracker_name(name StringName) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPositionalTracker) get_tracker_desc() String {
    mut object_out := String{}
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker_desc")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) set_tracker_desc(description String) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker_desc")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPositionalTracker) get_tracker_profile() String {
    mut object_out := String{}
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) set_tracker_profile(profile String) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPositionalTracker) get_tracker_hand() XRPositionalTrackerTrackerHand {
    mut object_out := XRPositionalTrackerTrackerHand.tracker_hand_unknown
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker_hand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181770860)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) set_tracker_hand(hand XRPositionalTrackerTrackerHand) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracker_hand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3904108980)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPositionalTracker) has_pose(name StringName) bool {
    mut object_out := false
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("has_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRPositionalTracker) get_pose(name StringName) XRPose {
    mut object_out := XRPose(unsafe{nil})
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4099720006)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) invalidate_pose(name StringName) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("invalidate_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r XRPositionalTracker) set_pose(name StringName, transform Transform3D, linear_velocity Vector3, angular_velocity Vector3, tracking_confidence XRPoseTrackingConfidence) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3451230163)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPositionalTracker) get_input(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("get_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPositionalTracker) set_input(name StringName, value Variant) {
    classname := StringName.new("XRPositionalTracker")
    defer { classname.deinit() }
    fnname := StringName.new("set_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

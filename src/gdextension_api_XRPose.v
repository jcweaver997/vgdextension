pub enum XRPoseTrackingConfidence {
    xr_tracking_confidence_none = 0
    xr_tracking_confidence_low = 1
    xr_tracking_confidence_high = 2
}

pub type XRPose = voidptr

pub fn (mut r XRPose) set_has_tracking_data(has_tracking_data bool) {
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("set_has_tracking_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPose) get_has_tracking_data() bool {
    mut object_out := false
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_has_tracking_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPose) set_name(name StringName) {
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("set_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPose) get_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPose) set_transform(transform Transform3D) {
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPose) get_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRPose) get_adjusted_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_adjusted_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPose) set_linear_velocity(velocity Vector3) {
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPose) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPose) set_angular_velocity(velocity Vector3) {
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPose) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRPose) set_tracking_confidence(tracking_confidence XRPoseTrackingConfidence) {
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("set_tracking_confidence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171656666)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XRPose) get_tracking_confidence() XRPoseTrackingConfidence {
    mut object_out := XRPoseTrackingConfidence.xr_tracking_confidence_none
    classname := StringName.new("XRPose")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracking_confidence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2064923680)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

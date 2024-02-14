module vgdextension

pub enum XRPoseTrackingConfidence as i64 {
    xr_tracking_confidence_none = 0
    xr_tracking_confidence_low = 1
    xr_tracking_confidence_high = 2
}

@[noinit]
pub struct XRPose {
    RefCounted
}

pub fn (mut r XRPose) set_has_tracking_data(has_tracking_data bool) {
    classname := StringName.new("XRPose")
    fnname := StringName.new("set_has_tracking_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&has_tracking_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPose) get_has_tracking_data() bool {
    mut object_out := false
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_has_tracking_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRPose) set_name(name StringName) {
    classname := StringName.new("XRPose")
    fnname := StringName.new("set_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPose) get_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRPose) set_transform(transform Transform3D) {
    classname := StringName.new("XRPose")
    fnname := StringName.new("set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPose) get_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRPose) get_adjusted_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_adjusted_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRPose) set_linear_velocity(velocity Vector3) {
    classname := StringName.new("XRPose")
    fnname := StringName.new("set_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPose) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRPose) set_angular_velocity(velocity Vector3) {
    classname := StringName.new("XRPose")
    fnname := StringName.new("set_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPose) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XRPose) set_tracking_confidence(tracking_confidence XRPoseTrackingConfidence) {
    classname := StringName.new("XRPose")
    fnname := StringName.new("set_tracking_confidence")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171656666)
    mut args := unsafe { [1]voidptr{} }
    i64_tracking_confidence := i64(tracking_confidence)
    args[0] = unsafe{voidptr(&i64_tracking_confidence)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XRPose) get_tracking_confidence() XRPoseTrackingConfidence {
    mut object_out := i64(XRPoseTrackingConfidence.xr_tracking_confidence_none)
    classname := StringName.new("XRPose")
    fnname := StringName.new("get_tracking_confidence")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2064923680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XRPoseTrackingConfidence(object_out)}
}

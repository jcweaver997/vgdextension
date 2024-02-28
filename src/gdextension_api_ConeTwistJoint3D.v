module vgdextension

pub enum ConeTwistJoint3DParam as i64 {
    param_swing_span = 0
    param_twist_span = 1
    param_bias = 2
    param_softness = 3
    param_relaxation = 4
    param_max = 5
}

@[noinit]
pub struct ConeTwistJoint3D {
    Joint3D
}

pub fn (r &ConeTwistJoint3D) set_param(param ConeTwistJoint3DParam, value f64) {
    classname := StringName.new("ConeTwistJoint3D")
    fnname := StringName.new("set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062470226)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConeTwistJoint3D) get_param(param ConeTwistJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ConeTwistJoint3D")
    fnname := StringName.new("get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2928790850)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

pub enum SliderJoint3DParam as i64 {
    param_linear_limit_upper = 0
    param_linear_limit_lower = 1
    param_linear_limit_softness = 2
    param_linear_limit_restitution = 3
    param_linear_limit_damping = 4
    param_linear_motion_softness = 5
    param_linear_motion_restitution = 6
    param_linear_motion_damping = 7
    param_linear_orthogonal_softness = 8
    param_linear_orthogonal_restitution = 9
    param_linear_orthogonal_damping = 10
    param_angular_limit_upper = 11
    param_angular_limit_lower = 12
    param_angular_limit_softness = 13
    param_angular_limit_restitution = 14
    param_angular_limit_damping = 15
    param_angular_motion_softness = 16
    param_angular_motion_restitution = 17
    param_angular_motion_damping = 18
    param_angular_orthogonal_softness = 19
    param_angular_orthogonal_restitution = 20
    param_angular_orthogonal_damping = 21
    param_max = 22
}

@[noinit]
pub struct SliderJoint3D {
    Joint3D
}

pub fn (mut r SliderJoint3D) set_param(param SliderJoint3DParam, value f64) {
    classname := StringName.new("SliderJoint3D")
    fnname := StringName.new("set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 918243683)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SliderJoint3D) get_param(param SliderJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("SliderJoint3D")
    fnname := StringName.new("get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 959925627)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

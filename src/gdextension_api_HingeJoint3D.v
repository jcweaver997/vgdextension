module vgdextension

pub enum HingeJoint3DParam {
    param_bias = 0
    param_limit_upper = 1
    param_limit_lower = 2
    param_limit_bias = 3
    param_limit_softness = 4
    param_limit_relaxation = 5
    param_motor_target_velocity = 6
    param_motor_max_impulse = 7
    param_max = 8
}

pub enum HingeJoint3DFlag {
    flag_use_limit = 0
    flag_enable_motor = 1
    flag_max = 2
}

@[noinit]
pub struct HingeJoint3D {
    Joint3D
}

pub fn (mut r HingeJoint3D) set_param(param HingeJoint3DParam, value f64) {
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082977519)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HingeJoint3D) get_param(param HingeJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4066002676)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HingeJoint3D) set_flag(flag HingeJoint3DFlag, enabled bool) {
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1083494620)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HingeJoint3D) get_flag(flag HingeJoint3DFlag) bool {
    mut object_out := false
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841369610)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

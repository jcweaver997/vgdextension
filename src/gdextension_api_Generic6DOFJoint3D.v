module vgdextension

pub enum Generic6DOFJoint3DParam as i64 {
    param_linear_lower_limit = 0
    param_linear_upper_limit = 1
    param_linear_limit_softness = 2
    param_linear_restitution = 3
    param_linear_damping = 4
    param_linear_motor_target_velocity = 5
    param_linear_motor_force_limit = 6
    param_linear_spring_stiffness = 7
    param_linear_spring_damping = 8
    param_linear_spring_equilibrium_point = 9
    param_angular_lower_limit = 10
    param_angular_upper_limit = 11
    param_angular_limit_softness = 12
    param_angular_damping = 13
    param_angular_restitution = 14
    param_angular_force_limit = 15
    param_angular_erp = 16
    param_angular_motor_target_velocity = 17
    param_angular_motor_force_limit = 18
    param_angular_spring_stiffness = 19
    param_angular_spring_damping = 20
    param_angular_spring_equilibrium_point = 21
    param_max = 22
}

pub enum Generic6DOFJoint3DFlag as i64 {
    flag_enable_linear_limit = 0
    flag_enable_angular_limit = 1
    flag_enable_linear_spring = 3
    flag_enable_angular_spring = 2
    flag_enable_motor = 4
    flag_enable_linear_motor = 5
    flag_max = 6
}

@[noinit]
pub struct Generic6DOFJoint3D {
    Joint3D
}

pub fn (r &Generic6DOFJoint3D) set_param_x(param Generic6DOFJoint3DParam, value f64) {
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("set_param_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2018184242)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Generic6DOFJoint3D) get_param_x(param Generic6DOFJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("get_param_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2599835054)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Generic6DOFJoint3D) set_param_y(param Generic6DOFJoint3DParam, value f64) {
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("set_param_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2018184242)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Generic6DOFJoint3D) get_param_y(param Generic6DOFJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("get_param_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2599835054)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Generic6DOFJoint3D) set_param_z(param Generic6DOFJoint3DParam, value f64) {
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("set_param_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2018184242)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Generic6DOFJoint3D) get_param_z(param Generic6DOFJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("get_param_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2599835054)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Generic6DOFJoint3D) set_flag_x(flag Generic6DOFJoint3DFlag, value bool) {
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("set_flag_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2451594564)
    mut args := unsafe { [2]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Generic6DOFJoint3D) get_flag_x(flag Generic6DOFJoint3DFlag) bool {
    mut object_out := false
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("get_flag_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2122427807)
    mut args := unsafe { [1]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Generic6DOFJoint3D) set_flag_y(flag Generic6DOFJoint3DFlag, value bool) {
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("set_flag_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2451594564)
    mut args := unsafe { [2]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Generic6DOFJoint3D) get_flag_y(flag Generic6DOFJoint3DFlag) bool {
    mut object_out := false
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("get_flag_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2122427807)
    mut args := unsafe { [1]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Generic6DOFJoint3D) set_flag_z(flag Generic6DOFJoint3DFlag, value bool) {
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("set_flag_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2451594564)
    mut args := unsafe { [2]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Generic6DOFJoint3D) get_flag_z(flag Generic6DOFJoint3DFlag) bool {
    mut object_out := false
    classname := StringName.new("Generic6DOFJoint3D")
    fnname := StringName.new("get_flag_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2122427807)
    mut args := unsafe { [1]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

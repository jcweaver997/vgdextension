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

pub type HingeJoint3D = voidptr

pub fn (mut r HingeJoint3D) set_param(param HingeJoint3DParam, value f32) {
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082977519)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &HingeJoint3D) get_param(param HingeJoint3DParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4066002676)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HingeJoint3D) set_flag(flag HingeJoint3DFlag, enabled bool) {
    classname := StringName.new("HingeJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1083494620)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

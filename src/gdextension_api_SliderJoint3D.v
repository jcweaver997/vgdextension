pub enum SliderJoint3DParam {
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

pub type SliderJoint3D = voidptr

pub fn (mut r SliderJoint3D) set_param(param SliderJoint3DParam, value f32) {
    classname := StringName.new("SliderJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 918243683)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SliderJoint3D) get_param(param SliderJoint3DParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SliderJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 959925627)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

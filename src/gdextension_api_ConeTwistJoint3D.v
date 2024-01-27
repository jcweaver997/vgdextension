pub enum ConeTwistJoint3DParam {
    param_swing_span = 0
    param_twist_span = 1
    param_bias = 2
    param_softness = 3
    param_relaxation = 4
    param_max = 5
}

pub type ConeTwistJoint3D = voidptr

pub fn (mut r ConeTwistJoint3D) set_param(param ConeTwistJoint3DParam, value f32) {
    classname := StringName.new("ConeTwistJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062470226)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ConeTwistJoint3D) get_param(param ConeTwistJoint3DParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("ConeTwistJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2928790850)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

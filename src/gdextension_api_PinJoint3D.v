module vgdextension

pub enum PinJoint3DParam as i64 {
    param_bias = 0
    param_damping = 1
    param_impulse_clamp = 2
}

@[noinit]
pub struct PinJoint3D {
    Joint3D
}

pub fn (mut r PinJoint3D) set_param(param PinJoint3DParam, value f64) {
    classname := StringName.new("PinJoint3D")
    fnname := StringName.new("set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2059913726)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PinJoint3D) get_param(param PinJoint3DParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PinJoint3D")
    fnname := StringName.new("get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1758438771)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

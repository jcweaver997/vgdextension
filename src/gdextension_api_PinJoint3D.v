module vgdextension

pub enum PinJoint3DParam {
    param_bias = 0
    param_damping = 1
    param_impulse_clamp = 2
}

pub type PinJoint3D = voidptr

pub fn (mut r PinJoint3D) set_param(param PinJoint3DParam, value f32) {
    classname := StringName.new("PinJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2059913726)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PinJoint3D) get_param(param PinJoint3DParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PinJoint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1758438771)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

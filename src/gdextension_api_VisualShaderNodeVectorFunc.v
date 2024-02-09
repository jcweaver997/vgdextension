module vgdextension

pub enum VisualShaderNodeVectorFuncFunction {
    func_normalize = 0
    func_saturate = 1
    func_negate = 2
    func_reciprocal = 3
    func_abs = 4
    func_acos = 5
    func_acosh = 6
    func_asin = 7
    func_asinh = 8
    func_atan = 9
    func_atanh = 10
    func_ceil = 11
    func_cos = 12
    func_cosh = 13
    func_degrees = 14
    func_exp = 15
    func_exp2 = 16
    func_floor = 17
    func_fract = 18
    func_inverse_sqrt = 19
    func_log = 20
    func_log2 = 21
    func_radians = 22
    func_round = 23
    func_roundeven = 24
    func_sign = 25
    func_sin = 26
    func_sinh = 27
    func_sqrt = 28
    func_tan = 29
    func_tanh = 30
    func_trunc = 31
    func_oneminus = 32
    func_max = 33
}

pub struct VisualShaderNodeVectorFunc {
    VisualShaderNodeVectorBase
}

pub fn (mut r VisualShaderNodeVectorFunc) set_function(func VisualShaderNodeVectorFuncFunction) {
    classname := StringName.new("VisualShaderNodeVectorFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 629964457)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeVectorFunc) get_function() VisualShaderNodeVectorFuncFunction {
    mut object_out := VisualShaderNodeVectorFuncFunction.func_normalize
    classname := StringName.new("VisualShaderNodeVectorFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4047776843)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

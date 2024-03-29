module vgdextension

pub enum VisualShaderNodeFloatFuncFunction as i64 {
    func_sin = 0
    func_cos = 1
    func_tan = 2
    func_asin = 3
    func_acos = 4
    func_atan = 5
    func_sinh = 6
    func_cosh = 7
    func_tanh = 8
    func_log = 9
    func_exp = 10
    func_sqrt = 11
    func_abs = 12
    func_sign = 13
    func_floor = 14
    func_round = 15
    func_ceil = 16
    func_fract = 17
    func_saturate = 18
    func_negate = 19
    func_acosh = 20
    func_asinh = 21
    func_atanh = 22
    func_degrees = 23
    func_exp2 = 24
    func_inverse_sqrt = 25
    func_log2 = 26
    func_radians = 27
    func_reciprocal = 28
    func_roundeven = 29
    func_trunc = 30
    func_oneminus = 31
    func_max = 32
}

@[noinit]
pub struct VisualShaderNodeFloatFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeFloatFunc) set_function(func VisualShaderNodeFloatFuncFunction) {
    classname := StringName.new("VisualShaderNodeFloatFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 536026177)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeFloatFunc) get_function() VisualShaderNodeFloatFuncFunction {
    mut object_out := i64(VisualShaderNodeFloatFuncFunction.func_sin)
    classname := StringName.new("VisualShaderNodeFloatFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2033948868)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeFloatFuncFunction(object_out)}
}

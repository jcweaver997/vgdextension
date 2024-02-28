module vgdextension

pub enum VisualShaderNodeIntFuncFunction as i64 {
    func_abs = 0
    func_negate = 1
    func_sign = 2
    func_bitwise_not = 3
    func_max = 4
}

@[noinit]
pub struct VisualShaderNodeIntFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeIntFunc) set_function(func VisualShaderNodeIntFuncFunction) {
    classname := StringName.new("VisualShaderNodeIntFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 424195284)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntFunc) get_function() VisualShaderNodeIntFuncFunction {
    mut object_out := i64(VisualShaderNodeIntFuncFunction.func_abs)
    classname := StringName.new("VisualShaderNodeIntFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753496911)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeIntFuncFunction(object_out)}
}

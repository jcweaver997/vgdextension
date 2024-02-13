module vgdextension

pub enum VisualShaderNodeIntFuncFunction {
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

pub fn (mut r VisualShaderNodeIntFunc) set_function(func VisualShaderNodeIntFuncFunction) {
    classname := StringName.new("VisualShaderNodeIntFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 424195284)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeIntFunc) get_function() VisualShaderNodeIntFuncFunction {
    mut object_out := VisualShaderNodeIntFuncFunction.func_abs
    classname := StringName.new("VisualShaderNodeIntFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753496911)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

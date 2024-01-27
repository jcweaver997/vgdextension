module vgdextension

pub enum VisualShaderNodeIntFuncFunction {
    func_abs = 0
    func_negate = 1
    func_sign = 2
    func_bitwise_not = 3
    func_max = 4
}

pub type VisualShaderNodeIntFunc = voidptr

pub fn (mut r VisualShaderNodeIntFunc) set_function(func VisualShaderNodeIntFuncFunction) {
    classname := StringName.new("VisualShaderNodeIntFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 424195284)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntFunc) get_function() VisualShaderNodeIntFuncFunction {
    mut object_out := VisualShaderNodeIntFuncFunction.func_abs
    classname := StringName.new("VisualShaderNodeIntFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753496911)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

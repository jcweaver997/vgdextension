module vgdextension

pub enum VisualShaderNodeUIntFuncFunction as i64 {
    func_negate = 0
    func_bitwise_not = 1
    func_max = 2
}

@[noinit]
pub struct VisualShaderNodeUIntFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeUIntFunc) set_function(func VisualShaderNodeUIntFuncFunction) {
    classname := StringName.new("VisualShaderNodeUIntFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2273148961)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeUIntFunc) get_function() VisualShaderNodeUIntFuncFunction {
    mut object_out := i64(VisualShaderNodeUIntFuncFunction.func_negate)
    classname := StringName.new("VisualShaderNodeUIntFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4187123296)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeUIntFuncFunction(object_out)}
}

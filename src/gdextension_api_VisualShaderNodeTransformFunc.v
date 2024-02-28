module vgdextension

pub enum VisualShaderNodeTransformFuncFunction as i64 {
    func_inverse = 0
    func_transpose = 1
    func_max = 2
}

@[noinit]
pub struct VisualShaderNodeTransformFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeTransformFunc) set_function(func VisualShaderNodeTransformFuncFunction) {
    classname := StringName.new("VisualShaderNodeTransformFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900990409)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeTransformFunc) get_function() VisualShaderNodeTransformFuncFunction {
    mut object_out := i64(VisualShaderNodeTransformFuncFunction.func_inverse)
    classname := StringName.new("VisualShaderNodeTransformFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2839926569)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeTransformFuncFunction(object_out)}
}

module vgdextension

pub enum VisualShaderNodeUVFuncFunction as i64 {
    func_panning = 0
    func_scaling = 1
    func_max = 2
}

@[noinit]
pub struct VisualShaderNodeUVFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeUVFunc) set_function(func VisualShaderNodeUVFuncFunction) {
    classname := StringName.new("VisualShaderNodeUVFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 765791915)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeUVFunc) get_function() VisualShaderNodeUVFuncFunction {
    mut object_out := i64(VisualShaderNodeUVFuncFunction.func_panning)
    classname := StringName.new("VisualShaderNodeUVFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3772902164)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeUVFuncFunction(object_out)}
}

module vgdextension

pub enum VisualShaderNodeColorFuncFunction as i64 {
    func_grayscale = 0
    func_hsv2rgb = 1
    func_rgb2hsv = 2
    func_sepia = 3
    func_max = 4
}

@[noinit]
pub struct VisualShaderNodeColorFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeColorFunc) set_function(func VisualShaderNodeColorFuncFunction) {
    classname := StringName.new("VisualShaderNodeColorFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3973396138)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeColorFunc) get_function() VisualShaderNodeColorFuncFunction {
    mut object_out := i64(VisualShaderNodeColorFuncFunction.func_grayscale)
    classname := StringName.new("VisualShaderNodeColorFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 554863321)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeColorFuncFunction(object_out)}
}

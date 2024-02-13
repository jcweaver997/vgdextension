module vgdextension

pub enum VisualShaderNodeColorFuncFunction {
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

pub fn (mut r VisualShaderNodeColorFunc) set_function(func VisualShaderNodeColorFuncFunction) {
    classname := StringName.new("VisualShaderNodeColorFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3973396138)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeColorFunc) get_function() VisualShaderNodeColorFuncFunction {
    mut object_out := VisualShaderNodeColorFuncFunction.func_grayscale
    classname := StringName.new("VisualShaderNodeColorFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 554863321)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

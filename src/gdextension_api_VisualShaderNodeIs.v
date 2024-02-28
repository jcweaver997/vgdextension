module vgdextension

pub enum VisualShaderNodeIsFunction as i64 {
    func_is_inf = 0
    func_is_nan = 1
    func_max = 2
}

@[noinit]
pub struct VisualShaderNodeIs {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeIs) set_function(func VisualShaderNodeIsFunction) {
    classname := StringName.new("VisualShaderNodeIs")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1438374690)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIs) get_function() VisualShaderNodeIsFunction {
    mut object_out := i64(VisualShaderNodeIsFunction.func_is_inf)
    classname := StringName.new("VisualShaderNodeIs")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 580678557)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeIsFunction(object_out)}
}

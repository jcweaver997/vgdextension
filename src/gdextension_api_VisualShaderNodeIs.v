module vgdextension

pub enum VisualShaderNodeIsFunction {
    func_is_inf = 0
    func_is_nan = 1
    func_max = 2
}

pub struct VisualShaderNodeIs {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeIs) set_function(func VisualShaderNodeIsFunction) {
    classname := StringName.new("VisualShaderNodeIs")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1438374690)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeIs) get_function() VisualShaderNodeIsFunction {
    mut object_out := VisualShaderNodeIsFunction.func_is_inf
    classname := StringName.new("VisualShaderNodeIs")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 580678557)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

pub enum VisualShaderNodeUIntFuncFunction {
    func_negate = 0
    func_bitwise_not = 1
    func_max = 2
}

pub type VisualShaderNodeUIntFunc = voidptr

pub fn (mut r VisualShaderNodeUIntFunc) set_function(func VisualShaderNodeUIntFuncFunction) {
    classname := StringName.new("VisualShaderNodeUIntFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2273148961)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeUIntFunc) get_function() VisualShaderNodeUIntFuncFunction {
    mut object_out := VisualShaderNodeUIntFuncFunction.func_negate
    classname := StringName.new("VisualShaderNodeUIntFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4187123296)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

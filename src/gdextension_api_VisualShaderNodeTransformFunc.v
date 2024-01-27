module vgdextension

pub enum VisualShaderNodeTransformFuncFunction {
    func_inverse = 0
    func_transpose = 1
    func_max = 2
}

pub type VisualShaderNodeTransformFunc = voidptr

pub fn (mut r VisualShaderNodeTransformFunc) set_function(func VisualShaderNodeTransformFuncFunction) {
    classname := StringName.new("VisualShaderNodeTransformFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900990409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeTransformFunc) get_function() VisualShaderNodeTransformFuncFunction {
    mut object_out := VisualShaderNodeTransformFuncFunction.func_inverse
    classname := StringName.new("VisualShaderNodeTransformFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2839926569)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

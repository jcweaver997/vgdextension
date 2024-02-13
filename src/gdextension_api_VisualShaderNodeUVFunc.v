module vgdextension

pub enum VisualShaderNodeUVFuncFunction {
    func_panning = 0
    func_scaling = 1
    func_max = 2
}

@[noinit]
pub struct VisualShaderNodeUVFunc {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeUVFunc) set_function(func VisualShaderNodeUVFuncFunction) {
    classname := StringName.new("VisualShaderNodeUVFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 765791915)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeUVFunc) get_function() VisualShaderNodeUVFuncFunction {
    mut object_out := VisualShaderNodeUVFuncFunction.func_panning
    classname := StringName.new("VisualShaderNodeUVFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3772902164)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

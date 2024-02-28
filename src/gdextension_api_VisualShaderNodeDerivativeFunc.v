module vgdextension

pub enum VisualShaderNodeDerivativeFuncOpType as i64 {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_3d = 2
    op_type_vector_4d = 3
    op_type_max = 4
}

pub enum VisualShaderNodeDerivativeFuncFunction as i64 {
    func_sum = 0
    func_x = 1
    func_y = 2
    func_max = 3
}

pub enum VisualShaderNodeDerivativeFuncPrecision as i64 {
    precision_none = 0
    precision_coarse = 1
    precision_fine = 2
    precision_max = 3
}

@[noinit]
pub struct VisualShaderNodeDerivativeFunc {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeDerivativeFunc) set_op_type(type_name VisualShaderNodeDerivativeFuncOpType) {
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    fnname := StringName.new("set_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 377800221)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeDerivativeFunc) get_op_type() VisualShaderNodeDerivativeFuncOpType {
    mut object_out := i64(VisualShaderNodeDerivativeFuncOpType.op_type_scalar)
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    fnname := StringName.new("get_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3997800514)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeDerivativeFuncOpType(object_out)}
}
pub fn (r &VisualShaderNodeDerivativeFunc) set_function(func VisualShaderNodeDerivativeFuncFunction) {
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1944704156)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeDerivativeFunc) get_function() VisualShaderNodeDerivativeFuncFunction {
    mut object_out := i64(VisualShaderNodeDerivativeFuncFunction.func_sum)
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2389093396)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeDerivativeFuncFunction(object_out)}
}
pub fn (r &VisualShaderNodeDerivativeFunc) set_precision(precision VisualShaderNodeDerivativeFuncPrecision) {
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    fnname := StringName.new("set_precision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797270566)
    mut args := unsafe { [1]voidptr{} }
    i64_precision := i64(precision)
    args[0] = unsafe{voidptr(&i64_precision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeDerivativeFunc) get_precision() VisualShaderNodeDerivativeFuncPrecision {
    mut object_out := i64(VisualShaderNodeDerivativeFuncPrecision.precision_none)
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    fnname := StringName.new("get_precision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3822547323)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeDerivativeFuncPrecision(object_out)}
}

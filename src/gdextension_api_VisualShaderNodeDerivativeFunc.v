module vgdextension

pub enum VisualShaderNodeDerivativeFuncOpType {
    op_type_scalar = 0
    op_type_vector_2d = 1
    op_type_vector_3d = 2
    op_type_vector_4d = 3
    op_type_max = 4
}

pub enum VisualShaderNodeDerivativeFuncFunction {
    func_sum = 0
    func_x = 1
    func_y = 2
    func_max = 3
}

pub enum VisualShaderNodeDerivativeFuncPrecision {
    precision_none = 0
    precision_coarse = 1
    precision_fine = 2
    precision_max = 3
}

pub type VisualShaderNodeDerivativeFunc = voidptr

pub fn (mut r VisualShaderNodeDerivativeFunc) set_op_type(type_name VisualShaderNodeDerivativeFuncOpType) {
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 377800221)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeDerivativeFunc) get_op_type() VisualShaderNodeDerivativeFuncOpType {
    mut object_out := VisualShaderNodeDerivativeFuncOpType.op_type_scalar
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3997800514)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeDerivativeFunc) set_function(func VisualShaderNodeDerivativeFuncFunction) {
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1944704156)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeDerivativeFunc) get_function() VisualShaderNodeDerivativeFuncFunction {
    mut object_out := VisualShaderNodeDerivativeFuncFunction.func_sum
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2389093396)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeDerivativeFunc) set_precision(precision VisualShaderNodeDerivativeFuncPrecision) {
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    defer { classname.deinit() }
    fnname := StringName.new("set_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797270566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeDerivativeFunc) get_precision() VisualShaderNodeDerivativeFuncPrecision {
    mut object_out := VisualShaderNodeDerivativeFuncPrecision.precision_none
    classname := StringName.new("VisualShaderNodeDerivativeFunc")
    defer { classname.deinit() }
    fnname := StringName.new("get_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3822547323)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

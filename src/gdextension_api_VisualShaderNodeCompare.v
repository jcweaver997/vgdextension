module vgdextension

pub enum VisualShaderNodeCompareComparisonType as i64 {
    ctype_scalar = 0
    ctype_scalar_int = 1
    ctype_scalar_uint = 2
    ctype_vector_2d = 3
    ctype_vector_3d = 4
    ctype_vector_4d = 5
    ctype_boolean = 6
    ctype_transform = 7
    ctype_max = 8
}

pub enum VisualShaderNodeCompareFunction as i64 {
    func_equal = 0
    func_not_equal = 1
    func_greater_than = 2
    func_greater_than_equal = 3
    func_less_than = 4
    func_less_than_equal = 5
    func_max = 6
}

pub enum VisualShaderNodeCompareCondition as i64 {
    cond_all = 0
    cond_any = 1
    cond_max = 2
}

@[noinit]
pub struct VisualShaderNodeCompare {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeCompare) set_comparison_type(type_name VisualShaderNodeCompareComparisonType) {
    classname := StringName.new("VisualShaderNodeCompare")
    fnname := StringName.new("set_comparison_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 516558320)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeCompare) get_comparison_type() VisualShaderNodeCompareComparisonType {
    mut object_out := i64(VisualShaderNodeCompareComparisonType.ctype_scalar)
    classname := StringName.new("VisualShaderNodeCompare")
    fnname := StringName.new("get_comparison_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3495315961)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeCompareComparisonType(object_out)}
}
pub fn (mut r VisualShaderNodeCompare) set_function(func VisualShaderNodeCompareFunction) {
    classname := StringName.new("VisualShaderNodeCompare")
    fnname := StringName.new("set_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370951349)
    mut args := unsafe { [1]voidptr{} }
    i64_func := i64(func)
    args[0] = unsafe{voidptr(&i64_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeCompare) get_function() VisualShaderNodeCompareFunction {
    mut object_out := i64(VisualShaderNodeCompareFunction.func_equal)
    classname := StringName.new("VisualShaderNodeCompare")
    fnname := StringName.new("get_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4089164265)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeCompareFunction(object_out)}
}
pub fn (mut r VisualShaderNodeCompare) set_condition(condition VisualShaderNodeCompareCondition) {
    classname := StringName.new("VisualShaderNodeCompare")
    fnname := StringName.new("set_condition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 918742392)
    mut args := unsafe { [1]voidptr{} }
    i64_condition := i64(condition)
    args[0] = unsafe{voidptr(&i64_condition)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeCompare) get_condition() VisualShaderNodeCompareCondition {
    mut object_out := i64(VisualShaderNodeCompareCondition.cond_all)
    classname := StringName.new("VisualShaderNodeCompare")
    fnname := StringName.new("get_condition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3281078941)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeCompareCondition(object_out)}
}

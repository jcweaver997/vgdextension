module vgdextension

pub enum VisualShaderNodeCompareComparisonType {
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

pub enum VisualShaderNodeCompareFunction {
    func_equal = 0
    func_not_equal = 1
    func_greater_than = 2
    func_greater_than_equal = 3
    func_less_than = 4
    func_less_than_equal = 5
    func_max = 6
}

pub enum VisualShaderNodeCompareCondition {
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
    defer { classname.deinit() }
    fnname := StringName.new("set_comparison_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 516558320)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeCompare) get_comparison_type() VisualShaderNodeCompareComparisonType {
    mut object_out := VisualShaderNodeCompareComparisonType.ctype_scalar
    classname := StringName.new("VisualShaderNodeCompare")
    defer { classname.deinit() }
    fnname := StringName.new("get_comparison_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3495315961)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeCompare) set_function(func VisualShaderNodeCompareFunction) {
    classname := StringName.new("VisualShaderNodeCompare")
    defer { classname.deinit() }
    fnname := StringName.new("set_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370951349)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeCompare) get_function() VisualShaderNodeCompareFunction {
    mut object_out := VisualShaderNodeCompareFunction.func_equal
    classname := StringName.new("VisualShaderNodeCompare")
    defer { classname.deinit() }
    fnname := StringName.new("get_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4089164265)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeCompare) set_condition(condition VisualShaderNodeCompareCondition) {
    classname := StringName.new("VisualShaderNodeCompare")
    defer { classname.deinit() }
    fnname := StringName.new("set_condition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 918742392)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&condition)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeCompare) get_condition() VisualShaderNodeCompareCondition {
    mut object_out := VisualShaderNodeCompareCondition.cond_all
    classname := StringName.new("VisualShaderNodeCompare")
    defer { classname.deinit() }
    fnname := StringName.new("get_condition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3281078941)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

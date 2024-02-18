module vgdextension

pub enum Vector2iAxis as i64 {
    axis_x = 0
    axis_y = 1
}

@[heap; packed]
pub struct Vector2i {
    pub mut:
        x i32 // offset 0
        y i32 // offset 4
}

pub fn Vector2i.new0 () Vector2i {
    mut object_out := Vector2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Vector2i.new1 (from &Vector2i) Vector2i {
    mut object_out := Vector2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector2i.new2 (from &Vector2) Vector2i {
    mut object_out := Vector2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector2i.new3 (x &i64, y &i64) Vector2i {
    mut object_out := Vector2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = x
    args[1] = y
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector2i) aspect() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("aspect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) max_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("max_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) min_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("min_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) length_squared() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("length_squared")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) sign() Vector2i {
    mut object_out := Vector2i{}
    fnname := StringName.new("sign")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 3444277866)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) abs() Vector2i {
    mut object_out := Vector2i{}
    fnname := StringName.new("abs")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 3444277866)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) clamp(min Vector2i, max Vector2i) Vector2i {
    mut object_out := Vector2i{}
    fnname := StringName.new("clamp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 186568249)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2i) snapped(step Vector2i) Vector2i {
    mut object_out := Vector2i{}
    fnname := StringName.new("snapped")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname), 1735278196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &Vector2i) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector2i)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Vector2i) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_vector2i)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Vector2i) index(i i64) i64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector2i)
    mut output := i64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Vector2i) mul_i64(b i64) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_i64)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) div_i64(b i64) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_i64)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) mod_i64(b i64) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_i64)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) mul_f64(b f64) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_f64)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) div_f64(b f64) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_f64)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) == (b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) eq_vector2i(b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) ne_vector2i(b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) < (b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) lt_vector2i(b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) le_vector2i(b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less_equal, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) gt_vector2i(b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) ge_vector2i(b Vector2i) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater_equal, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) + (b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) add_vector2i(b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) - (b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) sub_vector2i(b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) * (b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) mul_vector2i(b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) / (b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) div_vector2i(b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) % (b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
     res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) mod_vector2i(b Vector2i) Vector2i {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_module, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_vector2i)
    res := Vector2i{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2i) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector2i, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}


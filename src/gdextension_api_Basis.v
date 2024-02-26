module vgdextension

@[packed]
pub struct Basis {
    pub mut:
        x Vector3 // offset 0
        y Vector3 // offset 12
        z Vector3 // offset 24
}

pub fn Basis.new0 () Basis {
    mut object_out := Basis{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Basis.new1 (from &Basis) Basis {
    mut object_out := Basis{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Basis.new2 (from &Quaternion) Basis {
    mut object_out := Basis{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Basis.new3 (axis &Vector3, angle &f64) Basis {
    mut object_out := Basis{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = axis
    args[1] = angle
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Basis.new4 (x_axis &Vector3, y_axis &Vector3, z_axis &Vector3) Basis {
    mut object_out := Basis{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis, 4)
    mut args := unsafe { [3]voidptr{} }
    args[0] = x_axis
    args[1] = y_axis
    args[2] = z_axis
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Basis) inverse() Basis {
    mut object_out := Basis{}
    fnname := StringName.new("inverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 594669093)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) transposed() Basis {
    mut object_out := Basis{}
    fnname := StringName.new("transposed")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 594669093)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) orthonormalized() Basis {
    mut object_out := Basis{}
    fnname := StringName.new("orthonormalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 594669093)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) determinant() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("determinant")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) rotated(axis Vector3, angle f64) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("rotated")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1998708965)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&axis)
    args[1] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) scaled(scale Vector3) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("scaled")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3934786792)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scale)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) get_scale() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_scale")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) get_euler(order i64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_euler")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1394941017)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&order)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) tdotx(with Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("tdotx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) tdoty(with Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("tdoty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) tdotz(with Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("tdotz")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) slerp(to Basis, weight f64) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("slerp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3118673011)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) is_conformal() bool {
    mut object_out := false
    fnname := StringName.new("is_conformal")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) is_equal_approx(b Basis) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3165333982)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Basis) get_rotation_quaternion() Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("get_rotation_quaternion")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 4274879941)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn Basis.looking_at(target Vector3, up Vector3, use_model_front bool) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("looking_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3728732505)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&target)
    args[1] = voidptr(&up)
    args[2] = voidptr(&use_model_front)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn Basis.from_scale(scale Vector3) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("from_scale")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 3703240166)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scale)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn Basis.from_euler(euler Vector3, order i64) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("from_euler")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname), 2802321791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&euler)
    args[1] = voidptr(&order)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (v &Basis) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_basis)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Basis) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_basis)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Basis) index(i i64) Vector3 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_basis)
    mut output := Vector3{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Basis) mul_i64(b i64) Basis {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_i64)
    res := Basis{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) mul_f64(b f64) Basis {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_f64)
    res := Basis{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) mul_vector3(b Vector3) Vector3 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_vector3)
    res := Vector3{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) == (b Basis) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) eq_basis(b Basis) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) ne_basis(b Basis) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) * (b Basis) Basis {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
     res := Basis{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) mul_basis(b Basis) Basis {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_basis)
    res := Basis{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Basis) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_basis, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}


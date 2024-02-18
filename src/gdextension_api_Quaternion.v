module vgdextension

@[heap; packed]
pub struct Quaternion {
    pub mut:
        x f32 // offset 0
        y f32 // offset 4
        z f32 // offset 8
        w f32 // offset 12
}

pub fn Quaternion.new0 () Quaternion {
    mut object_out := Quaternion{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Quaternion.new1 (from &Quaternion) Quaternion {
    mut object_out := Quaternion{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Quaternion.new2 (from &Basis) Quaternion {
    mut object_out := Quaternion{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Quaternion.new3 (axis &Vector3, angle &f64) Quaternion {
    mut object_out := Quaternion{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = axis
    args[1] = angle
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Quaternion.new4 (arc_from &Vector3, arc_to &Vector3) Quaternion {
    mut object_out := Quaternion{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion, 4)
    mut args := unsafe { [2]voidptr{} }
    args[0] = arc_from
    args[1] = arc_to
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Quaternion.new5 (x &f64, y &f64, z &f64, w &f64) Quaternion {
    mut object_out := Quaternion{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion, 5)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = z
    args[3] = w
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Quaternion) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) length_squared() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length_squared")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) normalized() Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 4274879941)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) is_normalized() bool {
    mut object_out := false
    fnname := StringName.new("is_normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) is_equal_approx(to Quaternion) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 1682156903)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) inverse() Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("inverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 4274879941)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) log() Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("log")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 4274879941)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) exp() Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("exp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 4274879941)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) angle_to(to Quaternion) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 3244682419)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) dot(with Quaternion) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("dot")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 3244682419)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) slerp(to Quaternion, weight f64) Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("slerp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 1773590316)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) slerpni(to Quaternion, weight f64) Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("slerpni")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 1773590316)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) spherical_cubic_interpolate(b Quaternion, pre_a Quaternion, post_b Quaternion, weight f64) Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("spherical_cubic_interpolate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 2150967576)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) spherical_cubic_interpolate_in_time(b Quaternion, pre_a Quaternion, post_b Quaternion, weight f64, b_t f64, pre_a_t f64, post_b_t f64) Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("spherical_cubic_interpolate_in_time")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 1436023539)
    mut args := unsafe { [7]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    args[4] = voidptr(&b_t)
    args[5] = voidptr(&pre_a_t)
    args[6] = voidptr(&post_b_t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 7)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) get_euler(order i64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_euler")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 1394941017)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&order)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn Quaternion.from_euler(euler Vector3) Quaternion {
    mut object_out := Quaternion{}
    fnname := StringName.new("from_euler")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 4053467903)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&euler)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) get_axis() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_axis")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Quaternion) get_angle() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_angle")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Quaternion) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_quaternion)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Quaternion) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_quaternion)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Quaternion) index(i i64) f64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_quaternion)
    mut output := f64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Quaternion) == (b Quaternion) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_quaternion, GDExtensionVariantType.type_quaternion)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Quaternion) + (b Quaternion) Quaternion {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_quaternion, GDExtensionVariantType.type_quaternion)
     res := Quaternion{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Quaternion) - (b Quaternion) Quaternion {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_quaternion, GDExtensionVariantType.type_quaternion)
     res := Quaternion{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Quaternion) * (b Quaternion) Quaternion {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_quaternion, GDExtensionVariantType.type_quaternion)
     res := Quaternion{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}


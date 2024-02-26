module vgdextension

pub enum Vector2Axis as i64 {
    axis_x = 0
    axis_y = 1
}

@[packed]
pub struct Vector2 {
    pub mut:
        x f32 // offset 0
        y f32 // offset 4
}

pub fn Vector2.new0 () Vector2 {
    mut object_out := Vector2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Vector2.new1 (from &Vector2) Vector2 {
    mut object_out := Vector2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector2.new2 (from &Vector2i) Vector2 {
    mut object_out := Vector2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector2.new3 (x &f64, y &f64) Vector2 {
    mut object_out := Vector2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = x
    args[1] = y
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector2) angle() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) angle_to(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) angle_to_point(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle_to_point")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) direction_to(to Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("direction_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) distance_to(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) distance_squared_to(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_squared_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) length_squared() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length_squared")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) limit_length(length f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("limit_length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2544004089)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) normalized() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) is_normalized() bool {
    mut object_out := false
    fnname := StringName.new("is_normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) is_equal_approx(to Vector2) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3190634762)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) is_zero_approx() bool {
    mut object_out := false
    fnname := StringName.new("is_zero_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) posmod(mod f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("posmod")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2544004089)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mod)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) posmodv(modv Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("posmodv")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&modv)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) project(b Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("project")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) lerp(to Vector2, weight f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("lerp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 4250033116)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) slerp(to Vector2, weight f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("slerp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 4250033116)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) cubic_interpolate(b Vector2, pre_a Vector2, post_b Vector2, weight f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("cubic_interpolate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 193522989)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) cubic_interpolate_in_time(b Vector2, pre_a Vector2, post_b Vector2, weight f64, b_t f64, pre_a_t f64, post_b_t f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("cubic_interpolate_in_time")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 1957055074)
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
pub fn (r &Vector2) bezier_interpolate(control_1 Vector2, control_2 Vector2, end Vector2, t f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("bezier_interpolate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 193522989)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) bezier_derivative(control_1 Vector2, control_2 Vector2, end Vector2, t f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("bezier_derivative")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 193522989)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) max_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("max_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) min_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("min_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) move_toward(to Vector2, delta f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("move_toward")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 4250033116)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&delta)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) rotated(angle f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("rotated")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2544004089)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) orthogonal() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("orthogonal")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) floor() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("floor")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) ceil() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("ceil")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) round() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("round")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) aspect() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("aspect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) dot(with Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("dot")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) slide(n Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("slide")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) bounce(n Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("bounce")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) reflect(n Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("reflect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) cross(with Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("cross")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) abs() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("abs")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) sign() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("sign")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) clamp(min Vector2, max Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("clamp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 318031021)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector2) snapped(step Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("snapped")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn Vector2.from_angle(angle f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("from_angle")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 889263119)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&angle)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &Vector2) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector2)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Vector2) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_vector2)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Vector2) index(i i64) f64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector2)
    mut output := f64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Vector2) mul_i64(b i64) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_i64)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) div_i64(b i64) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_i64)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) mul_f64(b f64) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_f64)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) div_f64(b f64) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_f64)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) == (b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) eq_vector2(b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) ne_vector2(b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) < (b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) lt_vector2(b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) le_vector2(b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less_equal, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) gt_vector2(b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) ge_vector2(b Vector2) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_greater_equal, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) + (b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) add_vector2(b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) - (b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) sub_vector2(b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_subtract, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) * (b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) mul_vector2(b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) / (b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
     res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) div_vector2(b Vector2) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_divide, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_vector2)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) mul_transform2d(b Transform2D) Vector2 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_transform2d)
    res := Vector2{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Vector2) in_packedvector2array(b PackedVector2Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_vector2, GDExtensionVariantType.type_packedvector2array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}


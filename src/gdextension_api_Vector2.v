module vgdextension

pub enum Vector2Axis {
    axis_x = 0
    axis_y = 1
}

@[heap]
pub struct Vector2 {
    pub mut:
        x f64 // offset 0
        y f64 // offset 4
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
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) angle_to(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) angle_to_point(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle_to_point")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) direction_to(to Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("direction_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) distance_to(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) distance_squared_to(to Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_squared_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) length_squared() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length_squared")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) limit_length(length f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("limit_length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2544004089)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) normalized() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("normalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) is_normalized() bool {
    mut object_out := false
    fnname := StringName.new("is_normalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) is_equal_approx(to Vector2) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3190634762)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) is_zero_approx() bool {
    mut object_out := false
    fnname := StringName.new("is_zero_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) posmod(mod f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("posmod")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2544004089)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mod)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) posmodv(modv Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("posmodv")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&modv)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) project(b Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("project")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) lerp(to Vector2, weight f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("lerp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 4250033116)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector2) slerp(to Vector2, weight f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("slerp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 4250033116)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector2) cubic_interpolate(b Vector2, pre_a Vector2, post_b Vector2, weight f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("cubic_interpolate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 193522989)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector2) cubic_interpolate_in_time(b Vector2, pre_a Vector2, post_b Vector2, weight f64, b_t f64, pre_a_t f64, post_b_t f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("cubic_interpolate_in_time")
    defer { fnname.deinit() }
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
   return object_out
}
pub fn (r &Vector2) bezier_interpolate(control_1 Vector2, control_2 Vector2, end Vector2, t f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("bezier_interpolate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 193522989)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector2) bezier_derivative(control_1 Vector2, control_2 Vector2, end Vector2, t f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("bezier_derivative")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 193522989)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector2) max_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("max_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) min_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("min_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) move_toward(to Vector2, delta f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("move_toward")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 4250033116)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&delta)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector2) rotated(angle f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("rotated")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2544004089)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) orthogonal() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("orthogonal")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) floor() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("floor")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) ceil() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("ceil")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) round() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("round")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) aspect() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("aspect")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) dot(with Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("dot")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) slide(n Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("slide")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) bounce(n Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("bounce")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) reflect(n Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("reflect")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) cross(with Vector2) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("cross")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 3819070308)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector2) abs() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("abs")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) sign() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("sign")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector2) clamp(min Vector2, max Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("clamp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 318031021)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector2) snapped(step Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("snapped")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn Vector2.from_angle(angle f64) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("from_angle")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname), 889263119)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&angle)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
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

pub fn (v &Vector2) index(i int) f64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector2)
    mut output := f64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


module vgdextension

pub enum Vector3Axis as i64 {
    axis_x = 0
    axis_y = 1
    axis_z = 2
}

@[heap; packed]
pub struct Vector3 {
    pub mut:
        x f32 // offset 0
        y f32 // offset 4
        z f32 // offset 8
}

pub fn Vector3.new0 () Vector3 {
    mut object_out := Vector3{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Vector3.new1 (from &Vector3) Vector3 {
    mut object_out := Vector3{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector3.new2 (from &Vector3i) Vector3 {
    mut object_out := Vector3{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector3.new3 (x &f64, y &f64, z &f64) Vector3 {
    mut object_out := Vector3{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3, 3)
    mut args := unsafe { [3]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = z
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector3) min_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("min_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) max_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("max_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) angle_to(to Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("angle_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) signed_angle_to(to Vector3, axis Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("signed_angle_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2781412522)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&axis)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) direction_to(to Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("direction_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) distance_to(to Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) distance_squared_to(to Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_squared_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) length_squared() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length_squared")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) limit_length(length f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("limit_length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 514930144)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) normalized() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) is_normalized() bool {
    mut object_out := false
    fnname := StringName.new("is_normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) is_equal_approx(to Vector3) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1749054343)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) is_zero_approx() bool {
    mut object_out := false
    fnname := StringName.new("is_zero_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) inverse() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("inverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) clamp(min Vector3, max Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("clamp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 4145107892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) snapped(step Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("snapped")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) rotated(axis Vector3, angle f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("rotated")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&axis)
    args[1] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) lerp(to Vector3, weight f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("lerp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) slerp(to Vector3, weight f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("slerp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) cubic_interpolate(b Vector3, pre_a Vector3, post_b Vector3, weight f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("cubic_interpolate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2597922253)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) cubic_interpolate_in_time(b Vector3, pre_a Vector3, post_b Vector3, weight f64, b_t f64, pre_a_t f64, post_b_t f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("cubic_interpolate_in_time")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3256682901)
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
pub fn (r &Vector3) bezier_interpolate(control_1 Vector3, control_2 Vector3, end Vector3, t f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("bezier_interpolate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2597922253)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) bezier_derivative(control_1 Vector3, control_2 Vector3, end Vector3, t f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("bezier_derivative")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2597922253)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) move_toward(to Vector3, delta f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("move_toward")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&delta)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) dot(with Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("dot")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) cross(with Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("cross")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) outer(with Vector3) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("outer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3934786792)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) abs() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("abs")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) floor() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("floor")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) ceil() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("ceil")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) round() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("round")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) posmod(mod f64) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("posmod")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 514930144)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mod)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) posmodv(modv Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("posmodv")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&modv)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) project(b Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("project")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) slide(n Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("slide")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) bounce(n Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("bounce")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) reflect(n Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("reflect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) sign() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("sign")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector3) octahedron_encode() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("octahedron_encode")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn Vector3.octahedron_decode(uv Vector2) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("octahedron_decode")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3991820552)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&uv)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &Vector3) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector3)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Vector3) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_vector3)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Vector3) index(i i64) f64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector3)
    mut output := f64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


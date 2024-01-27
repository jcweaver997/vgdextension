pub enum Vector3Axis {
    axis_x = 0
    axis_y = 1
    axis_z = 2
}

@[heap]
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

pub fn Vector3.new3 (x &f32, y &f32, z &f32) Vector3 {
    mut object_out := Vector3{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3, 3)
    mut args := unsafe { [3]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = z
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector3) min_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("min_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) max_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("max_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) angle_to(to Vector3) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("angle_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) signed_angle_to(to Vector3, axis Vector3) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("signed_angle_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2781412522)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&axis)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3) direction_to(to Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("direction_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) distance_to(to Vector3) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("distance_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) distance_squared_to(to Vector3) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("distance_squared_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) length() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) length_squared() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("length_squared")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) limit_length(length f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("limit_length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 514930144)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) normalized() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("normalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) is_normalized() bool {
    mut object_out := false
    fnname := StringName.new("is_normalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) is_equal_approx(to Vector3) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1749054343)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) is_zero_approx() bool {
    mut object_out := false
    fnname := StringName.new("is_zero_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) inverse() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("inverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) clamp(min Vector3, max Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("clamp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 4145107892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3) snapped(step Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("snapped")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) rotated(axis Vector3, angle f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("rotated")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&axis)
    args[1] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3) lerp(to Vector3, weight f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("lerp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3) slerp(to Vector3, weight f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("slerp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3) cubic_interpolate(b Vector3, pre_a Vector3, post_b Vector3, weight f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("cubic_interpolate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2597922253)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector3) cubic_interpolate_in_time(b Vector3, pre_a Vector3, post_b Vector3, weight f32, b_t f32, pre_a_t f32, post_b_t f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("cubic_interpolate_in_time")
    defer { fnname.deinit() }
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
   return object_out
}
pub fn (r &Vector3) bezier_interpolate(control_1 Vector3, control_2 Vector3, end Vector3, t f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("bezier_interpolate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2597922253)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector3) bezier_derivative(control_1 Vector3, control_2 Vector3, end Vector3, t f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("bezier_derivative")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2597922253)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&control_1)
    args[1] = voidptr(&control_2)
    args[2] = voidptr(&end)
    args[3] = voidptr(&t)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector3) move_toward(to Vector3, delta f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("move_toward")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1682608829)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&delta)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3) dot(with Vector3) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("dot")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) cross(with Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("cross")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) outer(with Vector3) Basis {
    mut object_out := Basis{}
    fnname := StringName.new("outer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3934786792)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) abs() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("abs")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) floor() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("floor")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) ceil() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("ceil")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) round() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("round")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) posmod(mod f32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("posmod")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 514930144)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mod)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) posmodv(modv Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("posmodv")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&modv)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) project(b Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("project")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) slide(n Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("slide")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) bounce(n Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("bounce")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) reflect(n Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("reflect")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&n)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector3) sign() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("sign")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3) octahedron_encode() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("octahedron_encode")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn Vector3.octahedron_decode(uv Vector2) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("octahedron_decode")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname), 3991820552)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&uv)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (v &Vector3) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector3)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (v &Vector3) index(i int) f32 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector3)
    mut output := f32(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


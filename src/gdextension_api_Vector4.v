pub enum Vector4Axis {
    axis_x = 0
    axis_y = 1
    axis_z = 2
    axis_w = 3
}

@[heap]
pub struct Vector4 {
    pub mut:
        x f32 // offset 0
        y f32 // offset 4
        z f32 // offset 8
        w f32 // offset 12
}

pub fn Vector4.new0 () Vector4 {
    mut object_out := Vector4{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Vector4.new1 (from &Vector4) Vector4 {
    mut object_out := Vector4{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector4.new2 (from &Vector4i) Vector4 {
    mut object_out := Vector4{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector4.new3 (x &f32, y &f32, z &f32, w &f32) Vector4 {
    mut object_out := Vector4{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4, 3)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = z
    args[3] = w
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector4) min_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("min_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) max_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("max_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) length() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) length_squared() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("length_squared")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) abs() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("abs")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) sign() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("sign")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) floor() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("floor")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) ceil() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("ceil")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) round() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("round")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) lerp(to Vector4, weight f32) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("lerp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 2329757942)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&to)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector4) cubic_interpolate(b Vector4, pre_a Vector4, post_b Vector4, weight f32) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("cubic_interpolate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 726768410)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&pre_a)
    args[2] = voidptr(&post_b)
    args[3] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Vector4) cubic_interpolate_in_time(b Vector4, pre_a Vector4, post_b Vector4, weight f32, b_t f32, pre_a_t f32, post_b_t f32) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("cubic_interpolate_in_time")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 681631873)
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
pub fn (r &Vector4) posmod(mod f32) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("posmod")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3129671720)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mod)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) posmodv(modv Vector4) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("posmodv")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 2031281584)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&modv)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) snapped(step Vector4) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("snapped")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 2031281584)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) clamp(min Vector4, max Vector4) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("clamp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 823915692)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector4) normalized() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("normalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) is_normalized() bool {
    mut object_out := false
    fnname := StringName.new("is_normalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) direction_to(to Vector4) Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("direction_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 2031281584)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) distance_to(to Vector4) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("distance_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3770801042)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) distance_squared_to(to Vector4) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("distance_squared_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3770801042)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) dot(with Vector4) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("dot")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3770801042)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) inverse() Vector4 {
    mut object_out := Vector4{}
    fnname := StringName.new("inverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 80860099)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) is_equal_approx(to Vector4) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 88913544)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Vector4) is_zero_approx() bool {
    mut object_out := false
    fnname := StringName.new("is_zero_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector4) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (v &Vector4) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector4)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (v &Vector4) index(i int) f32 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector4)
    mut output := f32(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


module vgdextension

@[heap; packed]
pub struct Transform2D {
    pub mut:
        x Vector2 // offset 0
        y Vector2 // offset 8
        origin Vector2 // offset 16
}

pub fn Transform2D.new0 () Transform2D {
    mut object_out := Transform2D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Transform2D.new1 (from &Transform2D) Transform2D {
    mut object_out := Transform2D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Transform2D.new2 (rotation &f64, position &Vector2) Transform2D {
    mut object_out := Transform2D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d, 2)
    mut args := unsafe { [2]voidptr{} }
    args[0] = rotation
    args[1] = position
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Transform2D.new3 (rotation &f64, scale &Vector2, skew &f64, position &Vector2) Transform2D {
    mut object_out := Transform2D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d, 3)
    mut args := unsafe { [4]voidptr{} }
    args[0] = rotation
    args[1] = scale
    args[2] = skew
    args[3] = position
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Transform2D.new4 (x_axis &Vector2, y_axis &Vector2, origin &Vector2) Transform2D {
    mut object_out := Transform2D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d, 4)
    mut args := unsafe { [3]voidptr{} }
    args[0] = x_axis
    args[1] = y_axis
    args[2] = origin
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Transform2D) inverse() Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("inverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1420440541)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) affine_inverse() Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("affine_inverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1420440541)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) get_rotation() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_rotation")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) get_origin() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("get_origin")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) get_scale() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("get_scale")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) get_skew() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_skew")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) orthonormalized() Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("orthonormalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1420440541)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) rotated(angle f64) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("rotated")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 729597514)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) rotated_local(angle f64) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("rotated_local")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 729597514)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) scaled(scale Vector2) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("scaled")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1446323263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scale)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) scaled_local(scale Vector2) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("scaled_local")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1446323263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scale)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) translated(offset Vector2) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("translated")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1446323263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) translated_local(offset Vector2) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("translated_local")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1446323263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) determinant() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("determinant")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) basis_xform(v Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("basis_xform")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&v)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) basis_xform_inv(v Vector2) Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("basis_xform_inv")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 2026743667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&v)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) interpolate_with(xform Transform2D, weight f64) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("interpolate_with")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 359399686)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&xform)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) is_conformal() bool {
    mut object_out := false
    fnname := StringName.new("is_conformal")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) is_equal_approx(xform Transform2D) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 3837431929)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&xform)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Transform2D) looking_at(target Vector2) Transform2D {
    mut object_out := Transform2D{}
    fnname := StringName.new("looking_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname), 1446323263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&target)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &Transform2D) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_transform2d)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Transform2D) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_transform2d)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Transform2D) index(i i64) Vector2 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_transform2d)
    mut output := Vector2{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Transform2D) == (b Transform2D) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_transform2d, GDExtensionVariantType.type_transform2d)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Transform2D) * (b Transform2D) Transform2D {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_transform2d, GDExtensionVariantType.type_transform2d)
     res := Transform2D{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}


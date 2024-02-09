module vgdextension

@[heap]
pub struct Transform3D {
    pub mut:
        basis Basis // offset 0
        origin Vector3 // offset 36
}

pub fn Transform3D.new0 () Transform3D {
    mut object_out := Transform3D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Transform3D.new1 (from &Transform3D) Transform3D {
    mut object_out := Transform3D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Transform3D.new2 (basis &Basis, origin &Vector3) Transform3D {
    mut object_out := Transform3D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d, 2)
    mut args := unsafe { [2]voidptr{} }
    args[0] = basis
    args[1] = origin
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Transform3D.new3 (x_axis &Vector3, y_axis &Vector3, z_axis &Vector3, origin &Vector3) Transform3D {
    mut object_out := Transform3D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d, 3)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x_axis
    args[1] = y_axis
    args[2] = z_axis
    args[3] = origin
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Transform3D.new4 (from &Projection) Transform3D {
    mut object_out := Transform3D{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d, 4)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Transform3D) inverse() Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("inverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 3816817146)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Transform3D) affine_inverse() Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("affine_inverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 3816817146)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Transform3D) orthonormalized() Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("orthonormalized")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 3816817146)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Transform3D) rotated(axis Vector3, angle f64) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("rotated")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1563203923)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&axis)
    args[1] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Transform3D) rotated_local(axis Vector3, angle f64) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("rotated_local")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1563203923)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&axis)
    args[1] = voidptr(&angle)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Transform3D) scaled(scale Vector3) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("scaled")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1405596198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scale)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Transform3D) scaled_local(scale Vector3) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("scaled_local")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1405596198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scale)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Transform3D) translated(offset Vector3) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("translated")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1405596198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Transform3D) translated_local(offset Vector3) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("translated_local")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1405596198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Transform3D) looking_at(target Vector3, up Vector3, use_model_front bool) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("looking_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 90889270)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&target)
    args[1] = voidptr(&up)
    args[2] = voidptr(&use_model_front)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (r &Transform3D) interpolate_with(xform Transform3D, weight f64) Transform3D {
    mut object_out := Transform3D{}
    fnname := StringName.new("interpolate_with")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 1786453358)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&xform)
    args[1] = voidptr(&weight)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Transform3D) is_equal_approx(xform Transform3D) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 696001652)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&xform)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Transform3D) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (v &Transform3D) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_transform3d)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Transform3D) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_transform3d)
    var_to_type(voidptr(&t), var)
}


module vgdextension

@[heap; packed]
pub struct Plane {
    pub mut:
        normal Vector3 // offset 0
        d f32 // offset 12
}

pub fn Plane.new0 () Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Plane.new1 (from &Plane) Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Plane.new2 (normal &Vector3) Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = normal
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Plane.new3 (normal &Vector3, d &f64) Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = normal
    args[1] = d
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Plane.new4 (normal &Vector3, point &Vector3) Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 4)
    mut args := unsafe { [2]voidptr{} }
    args[0] = normal
    args[1] = point
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Plane.new5 (point1 &Vector3, point2 &Vector3, point3 &Vector3) Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 5)
    mut args := unsafe { [3]voidptr{} }
    args[0] = point1
    args[1] = point2
    args[2] = point3
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Plane.new6 (a &f64, b &f64, c &f64, d &f64) Plane {
    mut object_out := Plane{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane, 6)
    mut args := unsafe { [4]voidptr{} }
    args[0] = a
    args[1] = b
    args[2] = c
    args[3] = d
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Plane) normalized() Plane {
    mut object_out := Plane{}
    fnname := StringName.new("normalized")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1051796340)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) get_center() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_center")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) is_equal_approx(to_plane Plane) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1150170233)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to_plane)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) is_point_over(point Vector3) bool {
    mut object_out := false
    fnname := StringName.new("is_point_over")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1749054343)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) distance_to(point Vector3) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("distance_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1047977935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) has_point(point Vector3, tolerance f64) bool {
    mut object_out := false
    fnname := StringName.new("has_point")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 1258189072)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&point)
    args[1] = voidptr(&tolerance)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) project(point Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("project")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) intersect_3(b Plane, c Plane) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("intersect_3")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2012052692)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&c)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) intersects_ray(from Vector3, dir Vector3) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("intersects_ray")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2048133369)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&from)
    args[1] = voidptr(&dir)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Plane) intersects_segment(from Vector3, to Vector3) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("intersects_segment")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname), 2048133369)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&from)
    args[1] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (v &Plane) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_plane)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Plane) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_plane)
    var_to_type(voidptr(&t), var)
}

pub fn (a Plane) == (b Plane) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_plane, GDExtensionVariantType.type_plane)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}


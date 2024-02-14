module vgdextension

@[heap; packed]
pub struct Rect2 {
    pub mut:
        position Vector2 // offset 0
        size Vector2 // offset 8
}

pub fn Rect2.new0 () Rect2 {
    mut object_out := Rect2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Rect2.new1 (from &Rect2) Rect2 {
    mut object_out := Rect2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Rect2.new2 (from &Rect2i) Rect2 {
    mut object_out := Rect2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Rect2.new3 (position &Vector2, size &Vector2) Rect2 {
    mut object_out := Rect2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = position
    args[1] = size
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Rect2.new4 (x &f64, y &f64, width &f64, height &f64) Rect2 {
    mut object_out := Rect2{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2, 4)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = width
    args[3] = height
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Rect2) get_center() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("get_center")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) get_area() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_area")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) has_area() bool {
    mut object_out := false
    fnname := StringName.new("has_area")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) has_point(point Vector2) bool {
    mut object_out := false
    fnname := StringName.new("has_point")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3190634762)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) is_equal_approx(rect Rect2) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 1908192260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&rect)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) intersects(b Rect2, include_borders bool) bool {
    mut object_out := false
    fnname := StringName.new("intersects")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 819294880)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&b)
    args[1] = voidptr(&include_borders)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) encloses(b Rect2) bool {
    mut object_out := false
    fnname := StringName.new("encloses")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 1908192260)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) intersection(b Rect2) Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("intersection")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2282977743)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) merge(b Rect2) Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("merge")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 2282977743)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) expand(to Vector2) Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("expand")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 293272265)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) grow(amount f64) Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("grow")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 39664498)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&amount)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) grow_side(side i64, amount f64) Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("grow_side")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 4177736158)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&side)
    args[1] = voidptr(&amount)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) grow_individual(left f64, top f64, right f64, bottom f64) Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("grow_individual")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3203390369)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&left)
    args[1] = voidptr(&top)
    args[2] = voidptr(&right)
    args[3] = voidptr(&bottom)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2) abs() Rect2 {
    mut object_out := Rect2{}
    fnname := StringName.new("abs")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname), 3107653634)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Rect2) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rect2)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Rect2) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_rect2)
    var_to_type(voidptr(&t), var)
}


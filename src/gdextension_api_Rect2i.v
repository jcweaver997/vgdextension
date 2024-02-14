module vgdextension

@[heap; packed]
pub struct Rect2i {
    pub mut:
        position Vector2i // offset 0
        size Vector2i // offset 8
}

pub fn Rect2i.new0 () Rect2i {
    mut object_out := Rect2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Rect2i.new1 (from &Rect2i) Rect2i {
    mut object_out := Rect2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Rect2i.new2 (from &Rect2) Rect2i {
    mut object_out := Rect2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Rect2i.new3 (position &Vector2i, size &Vector2i) Rect2i {
    mut object_out := Rect2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i, 3)
    mut args := unsafe { [2]voidptr{} }
    args[0] = position
    args[1] = size
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Rect2i.new4 (x &i64, y &i64, width &i64, height &i64) Rect2i {
    mut object_out := Rect2i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i, 4)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = width
    args[3] = height
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Rect2i) get_center() Vector2i {
    mut object_out := Vector2i{}
    fnname := StringName.new("get_center")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 3444277866)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) get_area() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_area")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) has_area() bool {
    mut object_out := false
    fnname := StringName.new("has_area")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) has_point(point Vector2i) bool {
    mut object_out := false
    fnname := StringName.new("has_point")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 328189994)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) intersects(b Rect2i) bool {
    mut object_out := false
    fnname := StringName.new("intersects")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 3434691493)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) encloses(b Rect2i) bool {
    mut object_out := false
    fnname := StringName.new("encloses")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 3434691493)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) intersection(b Rect2i) Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("intersection")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 717431873)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) merge(b Rect2i) Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("merge")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 717431873)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&b)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) expand(to Vector2i) Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("expand")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 1355196872)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) grow(amount i64) Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("grow")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 1578070074)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&amount)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) grow_side(side i64, amount i64) Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("grow_side")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 3191154199)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&side)
    args[1] = voidptr(&amount)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) grow_individual(left i64, top i64, right i64, bottom i64) Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("grow_individual")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 1893743416)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&left)
    args[1] = voidptr(&top)
    args[2] = voidptr(&right)
    args[3] = voidptr(&bottom)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Rect2i) abs() Rect2i {
    mut object_out := Rect2i{}
    fnname := StringName.new("abs")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname), 1469025700)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Rect2i) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rect2i)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Rect2i) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_rect2i)
    var_to_type(voidptr(&t), var)
}


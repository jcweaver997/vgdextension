module vgdextension

pub enum Vector3iAxis {
    axis_x = 0
    axis_y = 1
    axis_z = 2
}

@[heap]
pub struct Vector3i {
    pub mut:
        x i32 // offset 0
        y i32 // offset 4
        z i32 // offset 8
}

pub fn Vector3i.new0 () Vector3i {
    mut object_out := Vector3i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Vector3i.new1 (from &Vector3i) Vector3i {
    mut object_out := Vector3i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector3i.new2 (from &Vector3) Vector3i {
    mut object_out := Vector3i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector3i.new3 (x &i32, y &i32, z &i32) Vector3i {
    mut object_out := Vector3i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i, 3)
    mut args := unsafe { [3]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = z
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector3i) min_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("min_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3i) max_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("max_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3i) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3i) length_squared() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("length_squared")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3i) sign() Vector3i {
    mut object_out := Vector3i{}
    fnname := StringName.new("sign")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3729604559)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3i) abs() Vector3i {
    mut object_out := Vector3i{}
    fnname := StringName.new("abs")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 3729604559)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Vector3i) clamp(min Vector3i, max Vector3i) Vector3i {
    mut object_out := Vector3i{}
    fnname := StringName.new("clamp")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1086892323)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Vector3i) snapped(step Vector3i) Vector3i {
    mut object_out := Vector3i{}
    fnname := StringName.new("snapped")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname), 1989319750)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (v &Vector3i) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector3i)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Vector3i) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_vector3i)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Vector3i) index(i int) i32 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector3i)
    mut output := i32(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


module vgdextension

@[heap]
pub struct Nil {
}

pub fn Nil.new0 () Nil {
    mut object_out := Nil{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nil, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Nil.new1 (from &Variant) Nil {
    mut object_out := Nil{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nil, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (v &Nil) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_nil)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Nil) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_nil)
    var_to_type(voidptr(&t), var)
}


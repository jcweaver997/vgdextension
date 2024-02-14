module vgdextension

@[heap; packed]
pub struct RID {
        godot_data [8]u8 // filler
}

pub fn RID.new0 () RID {
    mut object_out := RID{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rid, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn RID.new1 (from &RID) RID {
    mut object_out := RID{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rid, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &RID) is_valid() bool {
    mut object_out := false
    fnname := StringName.new("is_valid")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rid, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &RID) get_id() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_id")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rid, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &RID) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rid)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t RID) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_rid)
    var_to_type(voidptr(&t), var)
}


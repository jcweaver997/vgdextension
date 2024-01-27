module vgdextension

@[heap]
pub struct NodePath {
        godot_data [8]u8 // filler
}

pub fn NodePath.new0 () NodePath {
    mut object_out := NodePath{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn NodePath.new1 (from &NodePath) NodePath {
    mut object_out := NodePath{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn NodePath.new2 (from &String) NodePath {
    mut object_out := NodePath{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &NodePath) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_nodepath)
    destructor(voidptr(c))
}

pub fn (r &NodePath) is_absolute() bool {
    mut object_out := false
    fnname := StringName.new("is_absolute")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) get_name_count() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_name_count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) get_name(idx i32) StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 2948586938)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&idx)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &NodePath) get_subname_count() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_subname_count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) hash() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("hash")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) get_subname(idx i32) StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_subname")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 2948586938)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&idx)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &NodePath) get_concatenated_names() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_concatenated_names")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) get_concatenated_subnames() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_concatenated_subnames")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) get_as_property_path() NodePath {
    mut object_out := NodePath{}
    fnname := StringName.new("get_as_property_path")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 1598598043)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &NodePath) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (v &NodePath) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_nodepath)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}


module vgdextension

@[heap]
pub struct PackedStringArray {
        godot_data [16]u8 // filler
}

pub fn PackedStringArray.new0 () PackedStringArray {
    mut object_out := PackedStringArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedstringarray, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedStringArray.new1 (from &PackedStringArray) PackedStringArray {
    mut object_out := PackedStringArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedstringarray, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedStringArray.new2 (from &Array) PackedStringArray {
    mut object_out := PackedStringArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedstringarray, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedStringArray) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedstringarray)
    destructor(voidptr(c))
}

pub fn (r &PackedStringArray) size() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedStringArray) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedStringArray) set(index i32, value String) {
    fnname := StringName.new("set")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 725585539)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedStringArray) push_back(value String) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 816187996)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedStringArray) append(value String) bool {
    mut object_out := false
    fnname := StringName.new("append")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 816187996)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedStringArray) append_array(array PackedStringArray) {
    fnname := StringName.new("append_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 1120103966)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedStringArray) remove_at(index i32) {
    fnname := StringName.new("remove_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedStringArray) insert(at_index i32, value String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("insert")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 2432393153)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedStringArray) fill(value String) {
    fnname := StringName.new("fill")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 3174917410)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedStringArray) resize(new_size i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedStringArray) clear() {
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedStringArray) has(value String) bool {
    mut object_out := false
    fnname := StringName.new("has")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedStringArray) reverse() {
    fnname := StringName.new("reverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedStringArray) slice(begin i32, end i32) PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("slice")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 2094601407)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedStringArray) to_byte_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_byte_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedStringArray) sort() {
    fnname := StringName.new("sort")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (mut r PackedStringArray) bsearch(value String, before bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bsearch")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 328976671)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedStringArray) duplicate() PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 2991231410)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedStringArray) find(value String, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("find")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedStringArray) rfind(value String, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedStringArray) count(value String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (v &PackedStringArray) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedstringarray)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t PackedStringArray) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedstringarray)
    var_to_type(voidptr(&t), var)
}

pub fn (v &PackedStringArray) index(i int) String {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedstringarray)
    mut output := String{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


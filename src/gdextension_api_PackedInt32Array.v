module vgdextension

@[heap]
pub struct PackedInt32Array {
        godot_data [16]u8 // filler
}

pub fn PackedInt32Array.new0 () PackedInt32Array {
    mut object_out := PackedInt32Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedInt32Array.new1 (from &PackedInt32Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedInt32Array.new2 (from &Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedInt32Array) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedint32array)
    destructor(voidptr(c))
}

pub fn (r &PackedInt32Array) size() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedInt32Array) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedInt32Array) set(index i32, value i32) {
    fnname := StringName.new("set")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedInt32Array) push_back(value i32) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 694024632)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedInt32Array) append(value i32) bool {
    mut object_out := false
    fnname := StringName.new("append")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 694024632)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedInt32Array) append_array(array PackedInt32Array) {
    fnname := StringName.new("append_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1087733270)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedInt32Array) remove_at(index i32) {
    fnname := StringName.new("remove_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedInt32Array) insert(at_index i32, value i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("insert")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1487112728)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedInt32Array) fill(value i32) {
    fnname := StringName.new("fill")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedInt32Array) resize(new_size i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedInt32Array) clear() {
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedInt32Array) has(value i32) bool {
    mut object_out := false
    fnname := StringName.new("has")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 931488181)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedInt32Array) reverse() {
    fnname := StringName.new("reverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedInt32Array) slice(begin i32, end i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    fnname := StringName.new("slice")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1216021098)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedInt32Array) to_byte_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_byte_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedInt32Array) sort() {
    fnname := StringName.new("sort")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (mut r PackedInt32Array) bsearch(value i32, before bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bsearch")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3380005890)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedInt32Array) duplicate() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1997843129)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedInt32Array) find(value i32, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("find")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2984303840)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedInt32Array) rfind(value i32, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2984303840)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedInt32Array) count(value i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (v &PackedInt32Array) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedint32array)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (v &PackedInt32Array) index(i int) i32 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedint32array)
    mut output := i32(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


module vgdextension

@[heap]
pub struct PackedColorArray {
        godot_data [16]u8 // filler
}

pub fn PackedColorArray.new0 () PackedColorArray {
    mut object_out := PackedColorArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedColorArray.new1 (from &PackedColorArray) PackedColorArray {
    mut object_out := PackedColorArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedColorArray.new2 (from &Array) PackedColorArray {
    mut object_out := PackedColorArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedColorArray) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedcolorarray)
    destructor(voidptr(c))
}

pub fn (r &PackedColorArray) size() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedColorArray) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedColorArray) set(index i32, value Color) {
    fnname := StringName.new("set")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1444096570)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedColorArray) push_back(value Color) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1007858200)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedColorArray) append(value Color) bool {
    mut object_out := false
    fnname := StringName.new("append")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1007858200)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedColorArray) append_array(array PackedColorArray) {
    fnname := StringName.new("append_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 798822497)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedColorArray) remove_at(index i32) {
    fnname := StringName.new("remove_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedColorArray) insert(at_index i32, value Color) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("insert")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 785289703)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedColorArray) fill(value Color) {
    fnname := StringName.new("fill")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3730314301)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedColorArray) resize(new_size i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedColorArray) clear() {
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedColorArray) has(value Color) bool {
    mut object_out := false
    fnname := StringName.new("has")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3167426256)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedColorArray) reverse() {
    fnname := StringName.new("reverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedColorArray) slice(begin i32, end i32) PackedColorArray {
    mut object_out := PackedColorArray{}
    fnname := StringName.new("slice")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 2451797139)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedColorArray) to_byte_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_byte_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedColorArray) sort() {
    fnname := StringName.new("sort")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (mut r PackedColorArray) bsearch(value Color, before bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bsearch")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 314143821)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedColorArray) duplicate() PackedColorArray {
    mut object_out := PackedColorArray{}
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1011903421)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedColorArray) find(value Color, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("find")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3156095363)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedColorArray) rfind(value Color, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 3156095363)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedColorArray) count(value Color) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray, voidptr(&fnname), 1682108616)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (v &PackedColorArray) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedcolorarray)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t PackedColorArray) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedcolorarray)
    var_to_type(voidptr(&t), var)
}

pub fn (v &PackedColorArray) index(i int) Color {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedcolorarray)
    mut output := Color{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


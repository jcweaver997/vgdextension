@[heap]
pub struct PackedByteArray {
        godot_data [16]u8 // filler
}

pub fn PackedByteArray.new0 () PackedByteArray {
    mut object_out := PackedByteArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedByteArray.new1 (from &PackedByteArray) PackedByteArray {
    mut object_out := PackedByteArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedByteArray.new2 (from &Array) PackedByteArray {
    mut object_out := PackedByteArray{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedByteArray) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedbytearray)
    destructor(voidptr(c))
}

pub fn (r &PackedByteArray) size() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedByteArray) set(index i32, value i32) {
    fnname := StringName.new("set")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) push_back(value i32) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 694024632)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedByteArray) append(value i32) bool {
    mut object_out := false
    fnname := StringName.new("append")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 694024632)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedByteArray) append_array(array PackedByteArray) {
    fnname := StringName.new("append_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 791097111)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedByteArray) remove_at(index i32) {
    fnname := StringName.new("remove_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedByteArray) insert(at_index i32, value i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("insert")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1487112728)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedByteArray) fill(value i32) {
    fnname := StringName.new("fill")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r PackedByteArray) resize(new_size i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedByteArray) clear() {
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedByteArray) has(value i32) bool {
    mut object_out := false
    fnname := StringName.new("has")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 931488181)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r PackedByteArray) reverse() {
    fnname := StringName.new("reverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &PackedByteArray) slice(begin i32, end i32) PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("slice")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2278869132)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedByteArray) sort() {
    fnname := StringName.new("sort")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (mut r PackedByteArray) bsearch(value i32, before bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bsearch")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3380005890)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r PackedByteArray) duplicate() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 851781288)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) find(value i32, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("find")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2984303840)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) rfind(value i32, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2984303840)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) count(value i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) get_string_from_ascii() String {
    mut object_out := String{}
    fnname := StringName.new("get_string_from_ascii")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) get_string_from_utf8() String {
    mut object_out := String{}
    fnname := StringName.new("get_string_from_utf8")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) get_string_from_utf16() String {
    mut object_out := String{}
    fnname := StringName.new("get_string_from_utf16")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) get_string_from_utf32() String {
    mut object_out := String{}
    fnname := StringName.new("get_string_from_utf32")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) get_string_from_wchar() String {
    mut object_out := String{}
    fnname := StringName.new("get_string_from_wchar")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) hex_encode() String {
    mut object_out := String{}
    fnname := StringName.new("hex_encode")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) compress(compression_mode i32) PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("compress")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1845905913)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&compression_mode)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decompress(buffer_size i32, compression_mode i32) PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("decompress")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2278869132)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&buffer_size)
    args[1] = voidptr(&compression_mode)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) decompress_dynamic(max_output_size i32, compression_mode i32) PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("decompress_dynamic")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2278869132)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&max_output_size)
    args[1] = voidptr(&compression_mode)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) decode_u8(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_u8")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_s8(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_s8")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_u16(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_u16")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_s16(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_s16")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_u32(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_u32")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_s32(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_s32")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_u64(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_u64")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_s64(byte_offset i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_s64")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_half(byte_offset i32) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("decode_half")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1401583798)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_float(byte_offset i32) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("decode_float")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1401583798)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) decode_double(byte_offset i32) f32 {
    mut object_out := f32(0)
    fnname := StringName.new("decode_double")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1401583798)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&byte_offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &PackedByteArray) has_encoded_var(byte_offset i32, allow_objects bool) bool {
    mut object_out := false
    fnname := StringName.new("has_encoded_var")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2914632957)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&byte_offset)
    args[1] = voidptr(&allow_objects)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) decode_var(byte_offset i32, allow_objects bool) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("decode_var")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1740420038)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&byte_offset)
    args[1] = voidptr(&allow_objects)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) decode_var_size(byte_offset i32, allow_objects bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("decode_var_size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 954237325)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&byte_offset)
    args[1] = voidptr(&allow_objects)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &PackedByteArray) to_int32_array() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    fnname := StringName.new("to_int32_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3158844420)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) to_int64_array() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    fnname := StringName.new("to_int64_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1961294120)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) to_float32_array() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    fnname := StringName.new("to_float32_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3575107827)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &PackedByteArray) to_float64_array() PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    fnname := StringName.new("to_float64_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1627308337)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r PackedByteArray) encode_u8(byte_offset i32, value i32) {
    fnname := StringName.new("encode_u8")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_s8(byte_offset i32, value i32) {
    fnname := StringName.new("encode_s8")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_u16(byte_offset i32, value i32) {
    fnname := StringName.new("encode_u16")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_s16(byte_offset i32, value i32) {
    fnname := StringName.new("encode_s16")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_u32(byte_offset i32, value i32) {
    fnname := StringName.new("encode_u32")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_s32(byte_offset i32, value i32) {
    fnname := StringName.new("encode_s32")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_u64(byte_offset i32, value i32) {
    fnname := StringName.new("encode_u64")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_s64(byte_offset i32, value i32) {
    fnname := StringName.new("encode_s64")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_half(byte_offset i32, value f32) {
    fnname := StringName.new("encode_half")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1113000516)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_float(byte_offset i32, value f32) {
    fnname := StringName.new("encode_float")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1113000516)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_double(byte_offset i32, value f32) {
    fnname := StringName.new("encode_double")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 1113000516)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
}
pub fn (mut r PackedByteArray) encode_var(byte_offset i32, value Variant, allow_objects bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("encode_var")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray, voidptr(&fnname), 2604460497)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&byte_offset)
    args[1] = voidptr(&value)
    args[2] = voidptr(&allow_objects)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (v &PackedByteArray) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedbytearray)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (v &PackedByteArray) index(i int) i32 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedbytearray)
    mut output := i32(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


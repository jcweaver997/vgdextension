module vgdextension

@[heap]
pub struct StringName {
        godot_data [8]u8 // filler
}

pub fn StringName.new0 () StringName {
    mut object_out := StringName{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn StringName.new1 (from &StringName) StringName {
    mut object_out := StringName{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn StringName.new2 (from &String) StringName {
    mut object_out := StringName{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &StringName) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_stringname)
    destructor(voidptr(c))
}

pub fn (r &StringName) casecmp_to(to String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("casecmp_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) nocasecmp_to(to String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("nocasecmp_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) naturalcasecmp_to(to String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("naturalcasecmp_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) naturalnocasecmp_to(to String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("naturalnocasecmp_to")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) length() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("length")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) substr(from i32, len i32) String {
    mut object_out := String{}
    fnname := StringName.new("substr")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&from)
    args[1] = voidptr(&len)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) get_slice(delimiter String, slice i32) String {
    mut object_out := String{}
    fnname := StringName.new("get_slice")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3535100402)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&slice)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) get_slicec(delimiter i32, slice i32) String {
    mut object_out := String{}
    fnname := StringName.new("get_slicec")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&slice)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) get_slice_count(delimiter String) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_slice_count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&delimiter)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) find(what String, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("find")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) count(what String, from i32, to i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2343087891)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    args[2] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (r &StringName) countn(what String, from i32, to i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("countn")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2343087891)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    args[2] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (r &StringName) findn(what String, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("findn")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) rfind(what String, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) rfindn(what String, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfindn")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) matche(expr String) bool {
    mut object_out := false
    fnname := StringName.new("matche")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&expr)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) matchn(expr String) bool {
    mut object_out := false
    fnname := StringName.new("matchn")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&expr)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) begins_with(text String) bool {
    mut object_out := false
    fnname := StringName.new("begins_with")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) ends_with(text String) bool {
    mut object_out := false
    fnname := StringName.new("ends_with")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) is_subsequence_of(text String) bool {
    mut object_out := false
    fnname := StringName.new("is_subsequence_of")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) is_subsequence_ofn(text String) bool {
    mut object_out := false
    fnname := StringName.new("is_subsequence_ofn")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) bigrams() PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("bigrams")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 747180633)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) similarity(text String) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("similarity")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2697460964)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) format(values Variant, placeholder String) String {
    mut object_out := String{}
    fnname := StringName.new("format")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3212199029)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&values)
    args[1] = voidptr(&placeholder)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) replace(what String, forwhat String) String {
    mut object_out := String{}
    fnname := StringName.new("replace")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1340436205)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&forwhat)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) replacen(what String, forwhat String) String {
    mut object_out := String{}
    fnname := StringName.new("replacen")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1340436205)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&forwhat)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) repeat(count i32) String {
    mut object_out := String{}
    fnname := StringName.new("repeat")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&count)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) insert(position i32, what String) String {
    mut object_out := String{}
    fnname := StringName.new("insert")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 248737229)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&position)
    args[1] = voidptr(&what)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) erase(position i32, chars i32) String {
    mut object_out := String{}
    fnname := StringName.new("erase")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 787537301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&position)
    args[1] = voidptr(&chars)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) capitalize() String {
    mut object_out := String{}
    fnname := StringName.new("capitalize")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_camel_case() String {
    mut object_out := String{}
    fnname := StringName.new("to_camel_case")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_pascal_case() String {
    mut object_out := String{}
    fnname := StringName.new("to_pascal_case")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_snake_case() String {
    mut object_out := String{}
    fnname := StringName.new("to_snake_case")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) split(delimiter String, allow_empty bool, maxsplit i32) PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("split")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1252735785)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&allow_empty)
    args[2] = voidptr(&maxsplit)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (r &StringName) rsplit(delimiter String, allow_empty bool, maxsplit i32) PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("rsplit")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 1252735785)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&allow_empty)
    args[2] = voidptr(&maxsplit)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (r &StringName) split_floats(delimiter String, allow_empty bool) PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    fnname := StringName.new("split_floats")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2092079095)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&allow_empty)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) join(parts PackedStringArray) String {
    mut object_out := String{}
    fnname := StringName.new("join")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3595973238)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&parts)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) to_upper() String {
    mut object_out := String{}
    fnname := StringName.new("to_upper")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_lower() String {
    mut object_out := String{}
    fnname := StringName.new("to_lower")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) left(length i32) String {
    mut object_out := String{}
    fnname := StringName.new("left")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) right(length i32) String {
    mut object_out := String{}
    fnname := StringName.new("right")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) strip_edges(left bool, right bool) String {
    mut object_out := String{}
    fnname := StringName.new("strip_edges")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 907855311)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&left)
    args[1] = voidptr(&right)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) strip_escapes() String {
    mut object_out := String{}
    fnname := StringName.new("strip_escapes")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) lstrip(chars String) String {
    mut object_out := String{}
    fnname := StringName.new("lstrip")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&chars)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) rstrip(chars String) String {
    mut object_out := String{}
    fnname := StringName.new("rstrip")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&chars)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) get_extension() String {
    mut object_out := String{}
    fnname := StringName.new("get_extension")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) get_basename() String {
    mut object_out := String{}
    fnname := StringName.new("get_basename")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) path_join(file String) String {
    mut object_out := String{}
    fnname := StringName.new("path_join")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&file)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) unicode_at(at i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("unicode_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&at)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) indent(prefix String) String {
    mut object_out := String{}
    fnname := StringName.new("indent")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&prefix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) dedent() String {
    mut object_out := String{}
    fnname := StringName.new("dedent")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) md5_text() String {
    mut object_out := String{}
    fnname := StringName.new("md5_text")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) sha1_text() String {
    mut object_out := String{}
    fnname := StringName.new("sha1_text")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) sha256_text() String {
    mut object_out := String{}
    fnname := StringName.new("sha256_text")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) md5_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("md5_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) sha1_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("sha1_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) sha256_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("sha256_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) contains(what String) bool {
    mut object_out := false
    fnname := StringName.new("contains")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&what)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) is_absolute_path() bool {
    mut object_out := false
    fnname := StringName.new("is_absolute_path")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_relative_path() bool {
    mut object_out := false
    fnname := StringName.new("is_relative_path")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) simplify_path() String {
    mut object_out := String{}
    fnname := StringName.new("simplify_path")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) get_base_dir() String {
    mut object_out := String{}
    fnname := StringName.new("get_base_dir")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) get_file() String {
    mut object_out := String{}
    fnname := StringName.new("get_file")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) xml_escape(escape_quotes bool) String {
    mut object_out := String{}
    fnname := StringName.new("xml_escape")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3429816538)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&escape_quotes)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) xml_unescape() String {
    mut object_out := String{}
    fnname := StringName.new("xml_unescape")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) uri_encode() String {
    mut object_out := String{}
    fnname := StringName.new("uri_encode")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) uri_decode() String {
    mut object_out := String{}
    fnname := StringName.new("uri_decode")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) c_escape() String {
    mut object_out := String{}
    fnname := StringName.new("c_escape")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) c_unescape() String {
    mut object_out := String{}
    fnname := StringName.new("c_unescape")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) json_escape() String {
    mut object_out := String{}
    fnname := StringName.new("json_escape")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) validate_node_name() String {
    mut object_out := String{}
    fnname := StringName.new("validate_node_name")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) validate_filename() String {
    mut object_out := String{}
    fnname := StringName.new("validate_filename")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_valid_identifier() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_identifier")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_valid_int() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_int")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_valid_float() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_float")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_valid_hex_number(with_prefix bool) bool {
    mut object_out := false
    fnname := StringName.new("is_valid_hex_number")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 593672999)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with_prefix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) is_valid_html_color() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_html_color")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_valid_ip_address() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_ip_address")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) is_valid_filename() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_filename")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_int() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("to_int")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_float() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("to_float")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) hex_to_int() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("hex_to_int")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) bin_to_int() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bin_to_int")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) lpad(min_length i32, character String) String {
    mut object_out := String{}
    fnname := StringName.new("lpad")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 248737229)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min_length)
    args[1] = voidptr(&character)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) rpad(min_length i32, character String) String {
    mut object_out := String{}
    fnname := StringName.new("rpad")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 248737229)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min_length)
    args[1] = voidptr(&character)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &StringName) pad_decimals(digits i32) String {
    mut object_out := String{}
    fnname := StringName.new("pad_decimals")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&digits)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) pad_zeros(digits i32) String {
    mut object_out := String{}
    fnname := StringName.new("pad_zeros")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&digits)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) trim_prefix(prefix String) String {
    mut object_out := String{}
    fnname := StringName.new("trim_prefix")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&prefix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) trim_suffix(suffix String) String {
    mut object_out := String{}
    fnname := StringName.new("trim_suffix")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&suffix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &StringName) to_ascii_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_ascii_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_utf8_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_utf8_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_utf16_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_utf16_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_utf32_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_utf32_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) hex_decode() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("hex_decode")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) to_wchar_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_wchar_buffer")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &StringName) hash() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("hash")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (v &StringName) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_stringname)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t StringName) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_stringname)
    var_to_type(voidptr(&t), var)
}


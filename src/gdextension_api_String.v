module vgdextension

@[heap; packed]
pub struct String {
        godot_data [8]u8 // filler
}

pub fn String.new0 () String {
    mut object_out := String{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn String.new1 (from &String) String {
    mut object_out := String{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn String.new2 (from &StringName) String {
    mut object_out := String{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn String.new3 (from &NodePath) String {
    mut object_out := String{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string, 3)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &String) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_string)
    destructor(voidptr(c))
}

pub fn (r &String) casecmp_to(to String) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("casecmp_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) nocasecmp_to(to String) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("nocasecmp_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) naturalcasecmp_to(to String) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("naturalcasecmp_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) naturalnocasecmp_to(to String) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("naturalnocasecmp_to")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) length() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) substr(from i64, len i64) String {
    mut object_out := String{}
    fnname := StringName.new("substr")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 787537301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&from)
    args[1] = voidptr(&len)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_slice(delimiter String, slice i64) String {
    mut object_out := String{}
    fnname := StringName.new("get_slice")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3535100402)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&slice)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_slicec(delimiter i64, slice i64) String {
    mut object_out := String{}
    fnname := StringName.new("get_slicec")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 787537301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&slice)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_slice_count(delimiter String) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_slice_count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2920860731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&delimiter)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) find(what String, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("find")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) count(what String, from i64, to i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2343087891)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    args[2] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn (r &String) countn(what String, from i64, to i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("countn")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2343087891)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    args[2] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn (r &String) findn(what String, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("findn")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) rfind(what String, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("rfind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) rfindn(what String, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("rfindn")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1760645412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) matche(expr String) bool {
    mut object_out := false
    fnname := StringName.new("matche")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&expr)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) matchn(expr String) bool {
    mut object_out := false
    fnname := StringName.new("matchn")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&expr)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) begins_with(text String) bool {
    mut object_out := false
    fnname := StringName.new("begins_with")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) ends_with(text String) bool {
    mut object_out := false
    fnname := StringName.new("ends_with")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_subsequence_of(text String) bool {
    mut object_out := false
    fnname := StringName.new("is_subsequence_of")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_subsequence_ofn(text String) bool {
    mut object_out := false
    fnname := StringName.new("is_subsequence_ofn")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) bigrams() PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("bigrams")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 747180633)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) similarity(text String) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("similarity")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2697460964)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&text)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) format(values Variant, placeholder String) String {
    mut object_out := String{}
    fnname := StringName.new("format")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3212199029)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&values)
    args[1] = voidptr(&placeholder)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) replace(what String, forwhat String) String {
    mut object_out := String{}
    fnname := StringName.new("replace")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1340436205)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&forwhat)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) replacen(what String, forwhat String) String {
    mut object_out := String{}
    fnname := StringName.new("replacen")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1340436205)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&forwhat)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) repeat(count i64) String {
    mut object_out := String{}
    fnname := StringName.new("repeat")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&count)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) reverse() String {
    mut object_out := String{}
    fnname := StringName.new("reverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) insert(position i64, what String) String {
    mut object_out := String{}
    fnname := StringName.new("insert")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 248737229)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&position)
    args[1] = voidptr(&what)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) erase(position i64, chars i64) String {
    mut object_out := String{}
    fnname := StringName.new("erase")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 787537301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&position)
    args[1] = voidptr(&chars)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) capitalize() String {
    mut object_out := String{}
    fnname := StringName.new("capitalize")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_camel_case() String {
    mut object_out := String{}
    fnname := StringName.new("to_camel_case")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_pascal_case() String {
    mut object_out := String{}
    fnname := StringName.new("to_pascal_case")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_snake_case() String {
    mut object_out := String{}
    fnname := StringName.new("to_snake_case")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) split(delimiter String, allow_empty bool, maxsplit i64) PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("split")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1252735785)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&allow_empty)
    args[2] = voidptr(&maxsplit)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn (r &String) rsplit(delimiter String, allow_empty bool, maxsplit i64) PackedStringArray {
    mut object_out := PackedStringArray{}
    fnname := StringName.new("rsplit")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1252735785)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&allow_empty)
    args[2] = voidptr(&maxsplit)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn (r &String) split_floats(delimiter String, allow_empty bool) PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    fnname := StringName.new("split_floats")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2092079095)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&delimiter)
    args[1] = voidptr(&allow_empty)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) join(parts PackedStringArray) String {
    mut object_out := String{}
    fnname := StringName.new("join")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3595973238)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&parts)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_upper() String {
    mut object_out := String{}
    fnname := StringName.new("to_upper")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_lower() String {
    mut object_out := String{}
    fnname := StringName.new("to_lower")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) left(length i64) String {
    mut object_out := String{}
    fnname := StringName.new("left")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) right(length i64) String {
    mut object_out := String{}
    fnname := StringName.new("right")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&length)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) strip_edges(left bool, right bool) String {
    mut object_out := String{}
    fnname := StringName.new("strip_edges")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 907855311)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&left)
    args[1] = voidptr(&right)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) strip_escapes() String {
    mut object_out := String{}
    fnname := StringName.new("strip_escapes")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) lstrip(chars String) String {
    mut object_out := String{}
    fnname := StringName.new("lstrip")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&chars)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) rstrip(chars String) String {
    mut object_out := String{}
    fnname := StringName.new("rstrip")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&chars)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_extension() String {
    mut object_out := String{}
    fnname := StringName.new("get_extension")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_basename() String {
    mut object_out := String{}
    fnname := StringName.new("get_basename")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) path_join(file String) String {
    mut object_out := String{}
    fnname := StringName.new("path_join")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&file)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) unicode_at(at i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("unicode_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&at)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) indent(prefix String) String {
    mut object_out := String{}
    fnname := StringName.new("indent")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&prefix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) dedent() String {
    mut object_out := String{}
    fnname := StringName.new("dedent")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) hash() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("hash")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) md5_text() String {
    mut object_out := String{}
    fnname := StringName.new("md5_text")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) sha1_text() String {
    mut object_out := String{}
    fnname := StringName.new("sha1_text")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) sha256_text() String {
    mut object_out := String{}
    fnname := StringName.new("sha256_text")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) md5_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("md5_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) sha1_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("sha1_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) sha256_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("sha256_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) contains(what String) bool {
    mut object_out := false
    fnname := StringName.new("contains")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2566493496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&what)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_absolute_path() bool {
    mut object_out := false
    fnname := StringName.new("is_absolute_path")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_relative_path() bool {
    mut object_out := false
    fnname := StringName.new("is_relative_path")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) simplify_path() String {
    mut object_out := String{}
    fnname := StringName.new("simplify_path")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_base_dir() String {
    mut object_out := String{}
    fnname := StringName.new("get_base_dir")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) get_file() String {
    mut object_out := String{}
    fnname := StringName.new("get_file")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) xml_escape(escape_quotes bool) String {
    mut object_out := String{}
    fnname := StringName.new("xml_escape")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3429816538)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&escape_quotes)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) xml_unescape() String {
    mut object_out := String{}
    fnname := StringName.new("xml_unescape")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) uri_encode() String {
    mut object_out := String{}
    fnname := StringName.new("uri_encode")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) uri_decode() String {
    mut object_out := String{}
    fnname := StringName.new("uri_decode")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) c_escape() String {
    mut object_out := String{}
    fnname := StringName.new("c_escape")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) c_unescape() String {
    mut object_out := String{}
    fnname := StringName.new("c_unescape")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) json_escape() String {
    mut object_out := String{}
    fnname := StringName.new("json_escape")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) validate_node_name() String {
    mut object_out := String{}
    fnname := StringName.new("validate_node_name")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) validate_filename() String {
    mut object_out := String{}
    fnname := StringName.new("validate_filename")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3942272618)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_identifier() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_identifier")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_int() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_int")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_float() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_float")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_hex_number(with_prefix bool) bool {
    mut object_out := false
    fnname := StringName.new("is_valid_hex_number")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 593672999)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with_prefix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_html_color() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_html_color")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_ip_address() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_ip_address")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) is_valid_filename() bool {
    mut object_out := false
    fnname := StringName.new("is_valid_filename")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_int() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("to_int")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_float() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("to_float")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) hex_to_int() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("hex_to_int")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) bin_to_int() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("bin_to_int")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) lpad(min_length i64, character String) String {
    mut object_out := String{}
    fnname := StringName.new("lpad")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 248737229)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min_length)
    args[1] = voidptr(&character)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) rpad(min_length i64, character String) String {
    mut object_out := String{}
    fnname := StringName.new("rpad")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 248737229)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min_length)
    args[1] = voidptr(&character)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &String) pad_decimals(digits i64) String {
    mut object_out := String{}
    fnname := StringName.new("pad_decimals")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&digits)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) pad_zeros(digits i64) String {
    mut object_out := String{}
    fnname := StringName.new("pad_zeros")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2162347432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&digits)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) trim_prefix(prefix String) String {
    mut object_out := String{}
    fnname := StringName.new("trim_prefix")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&prefix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) trim_suffix(suffix String) String {
    mut object_out := String{}
    fnname := StringName.new("trim_suffix")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 3134094431)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&suffix)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_ascii_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_ascii_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_utf8_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_utf8_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_utf16_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_utf16_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_utf32_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_utf32_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) hex_decode() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("hex_decode")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &String) to_wchar_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_wchar_buffer")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn String.num_scientific(number f64) String {
    mut object_out := String{}
    fnname := StringName.new("num_scientific")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2710373411)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&number)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn String.num(number f64, decimals i64) String {
    mut object_out := String{}
    fnname := StringName.new("num")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 1555901022)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&number)
    args[1] = voidptr(&decimals)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn String.num_int64(number i64, base i64, capitalize_hex bool) String {
    mut object_out := String{}
    fnname := StringName.new("num_int64")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2111271071)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&number)
    args[1] = voidptr(&base)
    args[2] = voidptr(&capitalize_hex)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn String.num_uint64(number i64, base i64, capitalize_hex bool) String {
    mut object_out := String{}
    fnname := StringName.new("num_uint64")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 2111271071)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&number)
    args[1] = voidptr(&base)
    args[2] = voidptr(&capitalize_hex)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn String.chr(gdchar i64) String {
    mut object_out := String{}
    fnname := StringName.new("chr")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 897497541)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&gdchar)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn String.humanize_size(size i64) String {
    mut object_out := String{}
    fnname := StringName.new("humanize_size")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname), 897497541)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&size)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &String) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_string)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t String) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_string)
    var_to_type(voidptr(&t), var)
}

pub fn (v &String) index(i i64) String {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_string)
    mut output := String{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}


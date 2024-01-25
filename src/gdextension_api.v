module vgdextension

@[heap]
pub struct Object {
	godot_data [8]u8 // filler
}

@[heap]
pub struct Variant {
	godot_data [24]u8 // filler
}

@[heap]
pub struct Nil {
}

pub fn Nil.new0() Nil {
	mut object_out := Nil{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nil, 0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Nil.new1(from &Variant) Nil {
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

@[heap]
pub struct String {
	godot_data [8]u8 // filler
}

pub fn String.new0() String {
	mut object_out := String{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn String.new1(from &String) String {
	mut object_out := String{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn String.new2(from &StringName) String {
	mut object_out := String{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn String.new3(from &NodePath) String {
	mut object_out := String{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_string,
		3)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &String) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_string)
	destructor(voidptr(c))
}

pub fn (r &String) casecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('casecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) nocasecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('nocasecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) naturalcasecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('naturalcasecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) naturalnocasecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('naturalnocasecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) length() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) substr(from i32, len i32) String {
	mut object_out := String{}
	fnname := StringName.new('substr')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&len)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) get_slice(delimiter String, slice i32) String {
	mut object_out := String{}
	fnname := StringName.new('get_slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3535100402)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&slice)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) get_slicec(delimiter i32, slice i32) String {
	mut object_out := String{}
	fnname := StringName.new('get_slicec')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&slice)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) get_slice_count(delimiter String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_slice_count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&delimiter)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) find(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) count(what String, from i32, to i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2343087891)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	args[2] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &String) countn(what String, from i32, to i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('countn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2343087891)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	args[2] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &String) findn(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('findn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) rfind(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) rfindn(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfindn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) matche(expr String) bool {
	mut object_out := false
	fnname := StringName.new('matche')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&expr)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) matchn(expr String) bool {
	mut object_out := false
	fnname := StringName.new('matchn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&expr)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) begins_with(text String) bool {
	mut object_out := false
	fnname := StringName.new('begins_with')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) ends_with(text String) bool {
	mut object_out := false
	fnname := StringName.new('ends_with')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) is_subsequence_of(text String) bool {
	mut object_out := false
	fnname := StringName.new('is_subsequence_of')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) is_subsequence_ofn(text String) bool {
	mut object_out := false
	fnname := StringName.new('is_subsequence_ofn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) bigrams() PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('bigrams')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		747180633)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) similarity(text String) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('similarity')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2697460964)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) format(values Variant, placeholder String) String {
	mut object_out := String{}
	fnname := StringName.new('format')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3212199029)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&values)
	args[1] = voidptr(&placeholder)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) replace(what String, forwhat String) String {
	mut object_out := String{}
	fnname := StringName.new('replace')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1340436205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&forwhat)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) replacen(what String, forwhat String) String {
	mut object_out := String{}
	fnname := StringName.new('replacen')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1340436205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&forwhat)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) repeat(count i32) String {
	mut object_out := String{}
	fnname := StringName.new('repeat')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&count)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) insert(position i32, what String) String {
	mut object_out := String{}
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&what)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) erase(position i32, chars i32) String {
	mut object_out := String{}
	fnname := StringName.new('erase')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&chars)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) capitalize() String {
	mut object_out := String{}
	fnname := StringName.new('capitalize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_camel_case() String {
	mut object_out := String{}
	fnname := StringName.new('to_camel_case')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_pascal_case() String {
	mut object_out := String{}
	fnname := StringName.new('to_pascal_case')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_snake_case() String {
	mut object_out := String{}
	fnname := StringName.new('to_snake_case')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) split(delimiter String, allow_empty bool, maxsplit i32) PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('split')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1252735785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	args[2] = voidptr(&maxsplit)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &String) rsplit(delimiter String, allow_empty bool, maxsplit i32) PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('rsplit')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1252735785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	args[2] = voidptr(&maxsplit)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &String) split_floats(delimiter String, allow_empty bool) PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	fnname := StringName.new('split_floats')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2092079095)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) join(parts PackedStringArray) String {
	mut object_out := String{}
	fnname := StringName.new('join')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3595973238)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parts)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) to_upper() String {
	mut object_out := String{}
	fnname := StringName.new('to_upper')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_lower() String {
	mut object_out := String{}
	fnname := StringName.new('to_lower')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) left(length i32) String {
	mut object_out := String{}
	fnname := StringName.new('left')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) right(length i32) String {
	mut object_out := String{}
	fnname := StringName.new('right')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) strip_edges(left bool, right bool) String {
	mut object_out := String{}
	fnname := StringName.new('strip_edges')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		907855311)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&right)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) strip_escapes() String {
	mut object_out := String{}
	fnname := StringName.new('strip_escapes')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) lstrip(chars String) String {
	mut object_out := String{}
	fnname := StringName.new('lstrip')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) rstrip(chars String) String {
	mut object_out := String{}
	fnname := StringName.new('rstrip')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) get_extension() String {
	mut object_out := String{}
	fnname := StringName.new('get_extension')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) get_basename() String {
	mut object_out := String{}
	fnname := StringName.new('get_basename')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) path_join(file String) String {
	mut object_out := String{}
	fnname := StringName.new('path_join')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&file)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) unicode_at(at i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('unicode_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&at)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) indent(prefix String) String {
	mut object_out := String{}
	fnname := StringName.new('indent')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&prefix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) dedent() String {
	mut object_out := String{}
	fnname := StringName.new('dedent')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) hash() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) md5_text() String {
	mut object_out := String{}
	fnname := StringName.new('md5_text')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) sha1_text() String {
	mut object_out := String{}
	fnname := StringName.new('sha1_text')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) sha256_text() String {
	mut object_out := String{}
	fnname := StringName.new('sha256_text')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) md5_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('md5_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) sha1_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('sha1_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) sha256_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('sha256_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) contains(what String) bool {
	mut object_out := false
	fnname := StringName.new('contains')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&what)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) is_absolute_path() bool {
	mut object_out := false
	fnname := StringName.new('is_absolute_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_relative_path() bool {
	mut object_out := false
	fnname := StringName.new('is_relative_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) simplify_path() String {
	mut object_out := String{}
	fnname := StringName.new('simplify_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) get_base_dir() String {
	mut object_out := String{}
	fnname := StringName.new('get_base_dir')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) get_file() String {
	mut object_out := String{}
	fnname := StringName.new('get_file')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) xml_escape(escape_quotes bool) String {
	mut object_out := String{}
	fnname := StringName.new('xml_escape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3429816538)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&escape_quotes)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) xml_unescape() String {
	mut object_out := String{}
	fnname := StringName.new('xml_unescape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) uri_encode() String {
	mut object_out := String{}
	fnname := StringName.new('uri_encode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) uri_decode() String {
	mut object_out := String{}
	fnname := StringName.new('uri_decode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) c_escape() String {
	mut object_out := String{}
	fnname := StringName.new('c_escape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) c_unescape() String {
	mut object_out := String{}
	fnname := StringName.new('c_unescape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) json_escape() String {
	mut object_out := String{}
	fnname := StringName.new('json_escape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) validate_node_name() String {
	mut object_out := String{}
	fnname := StringName.new('validate_node_name')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) validate_filename() String {
	mut object_out := String{}
	fnname := StringName.new('validate_filename')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_valid_identifier() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_identifier')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_valid_int() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_valid_float() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_float')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_valid_hex_number(with_prefix bool) bool {
	mut object_out := false
	fnname := StringName.new('is_valid_hex_number')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		593672999)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with_prefix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) is_valid_html_color() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_html_color')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_valid_ip_address() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_ip_address')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) is_valid_filename() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_filename')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_int() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_float() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('to_float')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) hex_to_int() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hex_to_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) bin_to_int() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bin_to_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) lpad(min_length i32, character String) String {
	mut object_out := String{}
	fnname := StringName.new('lpad')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min_length)
	args[1] = voidptr(&character)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) rpad(min_length i32, character String) String {
	mut object_out := String{}
	fnname := StringName.new('rpad')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min_length)
	args[1] = voidptr(&character)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &String) pad_decimals(digits i32) String {
	mut object_out := String{}
	fnname := StringName.new('pad_decimals')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&digits)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) pad_zeros(digits i32) String {
	mut object_out := String{}
	fnname := StringName.new('pad_zeros')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&digits)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) trim_prefix(prefix String) String {
	mut object_out := String{}
	fnname := StringName.new('trim_prefix')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&prefix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) trim_suffix(suffix String) String {
	mut object_out := String{}
	fnname := StringName.new('trim_suffix')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&suffix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &String) to_ascii_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_ascii_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_utf8_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_utf8_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_utf16_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_utf16_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_utf32_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_utf32_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) hex_decode() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('hex_decode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &String) to_wchar_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_wchar_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn String.num_scientific(number f32) String {
	mut object_out := String{}
	fnname := StringName.new('num_scientific')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2710373411)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&number)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn String.num(number f32, decimals i32) String {
	mut object_out := String{}
	fnname := StringName.new('num')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		1555901022)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&number)
	args[1] = voidptr(&decimals)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn String.num_int64(number i32, base i32, capitalize_hex bool) String {
	mut object_out := String{}
	fnname := StringName.new('num_int64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2111271071)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&number)
	args[1] = voidptr(&base)
	args[2] = voidptr(&capitalize_hex)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn String.num_uint64(number i32, base i32, capitalize_hex bool) String {
	mut object_out := String{}
	fnname := StringName.new('num_uint64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		2111271071)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&number)
	args[1] = voidptr(&base)
	args[2] = voidptr(&capitalize_hex)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn String.chr(gdchar i32) String {
	mut object_out := String{}
	fnname := StringName.new('chr')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		897497541)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gdchar)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn String.humanize_size(size i32) String {
	mut object_out := String{}
	fnname := StringName.new('humanize_size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_string, voidptr(&fnname),
		897497541)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&size)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &String) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_string)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &String) index(i int) String {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_string)
	mut output := String{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Vector2 {
pub mut:
	x f32 // offset 0
	y f32 // offset 4
}

pub fn Vector2.new0() Vector2 {
	mut object_out := Vector2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Vector2.new1(from &Vector2) Vector2 {
	mut object_out := Vector2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector2.new2(from &Vector2i) Vector2 {
	mut object_out := Vector2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector2.new3(x &f32, y &f32) Vector2 {
	mut object_out := Vector2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = x
	args[1] = y
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Vector2) angle() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) angle_to(to Vector2) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('angle_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3819070308)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) angle_to_point(to Vector2) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('angle_to_point')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3819070308)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) direction_to(to Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('direction_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) distance_to(to Vector2) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3819070308)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) distance_squared_to(to Vector2) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_squared_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3819070308)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) length_squared() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) limit_length(length f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('limit_length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2544004089)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) normalized() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) is_normalized() bool {
	mut object_out := false
	fnname := StringName.new('is_normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) is_equal_approx(to Vector2) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3190634762)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) is_zero_approx() bool {
	mut object_out := false
	fnname := StringName.new('is_zero_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) posmod(mod f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('posmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2544004089)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mod)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) posmodv(modv Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('posmodv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&modv)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) project(b Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('project')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) lerp(to Vector2, weight f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		4250033116)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector2) slerp(to Vector2, weight f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('slerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		4250033116)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector2) cubic_interpolate(b Vector2, pre_a Vector2, post_b Vector2, weight f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('cubic_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		193522989)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector2) cubic_interpolate_in_time(b Vector2, pre_a Vector2, post_b Vector2, weight f32, b_t f32, pre_a_t f32, post_b_t f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('cubic_interpolate_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		1957055074)
	mut args := unsafe { [7]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	args[4] = voidptr(&b_t)
	args[5] = voidptr(&pre_a_t)
	args[6] = voidptr(&post_b_t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 7)
	return object_out
}

pub fn (r &Vector2) bezier_interpolate(control_1 Vector2, control_2 Vector2, end Vector2, t f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('bezier_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		193522989)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&control_1)
	args[1] = voidptr(&control_2)
	args[2] = voidptr(&end)
	args[3] = voidptr(&t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector2) bezier_derivative(control_1 Vector2, control_2 Vector2, end Vector2, t f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('bezier_derivative')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		193522989)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&control_1)
	args[1] = voidptr(&control_2)
	args[2] = voidptr(&end)
	args[3] = voidptr(&t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector2) max_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('max_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) min_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('min_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) move_toward(to Vector2, delta f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('move_toward')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		4250033116)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&delta)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector2) rotated(angle f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('rotated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2544004089)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) orthogonal() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('orthogonal')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) floor() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('floor')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) ceil() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('ceil')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) round() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('round')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) aspect() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('aspect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) dot(with Vector2) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('dot')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3819070308)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) slide(n Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('slide')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&n)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) bounce(n Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('bounce')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&n)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) reflect(n Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('reflect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&n)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) cross(with Vector2) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cross')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		3819070308)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector2) abs() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) sign() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2) clamp(min Vector2, max Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		318031021)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector2) snapped(step Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Vector2.from_angle(angle f32) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('from_angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2, voidptr(&fnname),
		889263119)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &Vector2) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector2)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Vector2) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector2)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Vector2i {
pub mut:
	x i32 // offset 0
	y i32 // offset 4
}

pub fn Vector2i.new0() Vector2i {
	mut object_out := Vector2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Vector2i.new1(from &Vector2i) Vector2i {
	mut object_out := Vector2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector2i.new2(from &Vector2) Vector2i {
	mut object_out := Vector2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector2i.new3(x &i32, y &i32) Vector2i {
	mut object_out := Vector2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector2i,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = x
	args[1] = y
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Vector2i) aspect() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('aspect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) max_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('max_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) min_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('min_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) length_squared() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) sign() Vector2i {
	mut object_out := Vector2i{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		3444277866)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) abs() Vector2i {
	mut object_out := Vector2i{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		3444277866)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector2i) clamp(min Vector2i, max Vector2i) Vector2i {
	mut object_out := Vector2i{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		186568249)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector2i) snapped(step Vector2i) Vector2i {
	mut object_out := Vector2i{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector2i, voidptr(&fnname),
		1735278196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &Vector2i) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector2i)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Vector2i) index(i int) i32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector2i)
	mut output := i32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Rect2 {
pub mut:
	position Vector2 // offset 0
	size     Vector2 // offset 8
}

pub fn Rect2.new0() Rect2 {
	mut object_out := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Rect2.new1(from &Rect2) Rect2 {
	mut object_out := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Rect2.new2(from &Rect2i) Rect2 {
	mut object_out := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Rect2.new3(position &Vector2, size &Vector2) Rect2 {
	mut object_out := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = position
	args[1] = size
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Rect2.new4(x &f32, y &f32, width &f32, height &f32) Rect2 {
	mut object_out := Rect2{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2,
		4)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = width
	args[3] = height
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Rect2) get_center() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('get_center')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2) get_area() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_area')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2) has_area() bool {
	mut object_out := false
	fnname := StringName.new('has_area')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2) has_point(point Vector2) bool {
	mut object_out := false
	fnname := StringName.new('has_point')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		3190634762)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) is_equal_approx(rect Rect2) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		1908192260)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rect)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2) intersects(b Rect2, include_borders bool) bool {
	mut object_out := false
	fnname := StringName.new('intersects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		819294880)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&include_borders)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Rect2) encloses(b Rect2) bool {
	mut object_out := false
	fnname := StringName.new('encloses')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		1908192260)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) intersection(b Rect2) Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('intersection')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		2282977743)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) merge(b Rect2) Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('merge')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		2282977743)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) expand(to Vector2) Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('expand')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		293272265)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) grow(amount f32) Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('grow')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		39664498)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2) grow_side(side i32, amount f32) Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('grow_side')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		4177736158)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&side)
	args[1] = voidptr(&amount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Rect2) grow_individual(left f32, top f32, right f32, bottom f32) Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('grow_individual')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		3203390369)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&top)
	args[2] = voidptr(&right)
	args[3] = voidptr(&bottom)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Rect2) abs() Rect2 {
	mut object_out := Rect2{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2, voidptr(&fnname),
		3107653634)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Rect2) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rect2)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Rect2i {
pub mut:
	position Vector2i // offset 0
	size     Vector2i // offset 8
}

pub fn Rect2i.new0() Rect2i {
	mut object_out := Rect2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Rect2i.new1(from &Rect2i) Rect2i {
	mut object_out := Rect2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Rect2i.new2(from &Rect2) Rect2i {
	mut object_out := Rect2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Rect2i.new3(position &Vector2i, size &Vector2i) Rect2i {
	mut object_out := Rect2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = position
	args[1] = size
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Rect2i.new4(x &i32, y &i32, width &i32, height &i32) Rect2i {
	mut object_out := Rect2i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rect2i,
		4)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = width
	args[3] = height
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Rect2i) get_center() Vector2i {
	mut object_out := Vector2i{}
	fnname := StringName.new('get_center')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		3444277866)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2i) get_area() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_area')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2i) has_area() bool {
	mut object_out := false
	fnname := StringName.new('has_area')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Rect2i) has_point(point Vector2i) bool {
	mut object_out := false
	fnname := StringName.new('has_point')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		328189994)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) intersects(b Rect2i) bool {
	mut object_out := false
	fnname := StringName.new('intersects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		3434691493)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) encloses(b Rect2i) bool {
	mut object_out := false
	fnname := StringName.new('encloses')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		3434691493)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) intersection(b Rect2i) Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('intersection')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		717431873)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) merge(b Rect2i) Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('merge')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		717431873)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) expand(to Vector2i) Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('expand')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		1355196872)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) grow(amount i32) Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('grow')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		1578070074)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Rect2i) grow_side(side i32, amount i32) Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('grow_side')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		3191154199)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&side)
	args[1] = voidptr(&amount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Rect2i) grow_individual(left i32, top i32, right i32, bottom i32) Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('grow_individual')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		1893743416)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&top)
	args[2] = voidptr(&right)
	args[3] = voidptr(&bottom)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Rect2i) abs() Rect2i {
	mut object_out := Rect2i{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rect2i, voidptr(&fnname),
		1469025700)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Rect2i) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rect2i)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Vector3 {
pub mut:
	x f32 // offset 0
	y f32 // offset 4
	z f32 // offset 8
}

pub fn Vector3.new0() Vector3 {
	mut object_out := Vector3{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Vector3.new1(from &Vector3) Vector3 {
	mut object_out := Vector3{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector3.new2(from &Vector3i) Vector3 {
	mut object_out := Vector3{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector3.new3(x &f32, y &f32, z &f32) Vector3 {
	mut object_out := Vector3{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3,
		3)
	mut args := unsafe { [3]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = z
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Vector3) min_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('min_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) max_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('max_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) angle_to(to Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('angle_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) signed_angle_to(to Vector3, axis Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('signed_angle_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2781412522)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&axis)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3) direction_to(to Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('direction_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) distance_to(to Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) distance_squared_to(to Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_squared_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) length_squared() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) limit_length(length f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('limit_length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		514930144)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) normalized() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) is_normalized() bool {
	mut object_out := false
	fnname := StringName.new('is_normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) is_equal_approx(to Vector3) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1749054343)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) is_zero_approx() bool {
	mut object_out := false
	fnname := StringName.new('is_zero_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) inverse() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) clamp(min Vector3, max Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		4145107892)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3) snapped(step Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) rotated(axis Vector3, angle f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('rotated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1682608829)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&axis)
	args[1] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3) lerp(to Vector3, weight f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1682608829)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3) slerp(to Vector3, weight f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('slerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1682608829)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3) cubic_interpolate(b Vector3, pre_a Vector3, post_b Vector3, weight f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('cubic_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2597922253)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector3) cubic_interpolate_in_time(b Vector3, pre_a Vector3, post_b Vector3, weight f32, b_t f32, pre_a_t f32, post_b_t f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('cubic_interpolate_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3256682901)
	mut args := unsafe { [7]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	args[4] = voidptr(&b_t)
	args[5] = voidptr(&pre_a_t)
	args[6] = voidptr(&post_b_t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 7)
	return object_out
}

pub fn (r &Vector3) bezier_interpolate(control_1 Vector3, control_2 Vector3, end Vector3, t f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('bezier_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2597922253)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&control_1)
	args[1] = voidptr(&control_2)
	args[2] = voidptr(&end)
	args[3] = voidptr(&t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector3) bezier_derivative(control_1 Vector3, control_2 Vector3, end Vector3, t f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('bezier_derivative')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2597922253)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&control_1)
	args[1] = voidptr(&control_2)
	args[2] = voidptr(&end)
	args[3] = voidptr(&t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector3) move_toward(to Vector3, delta f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('move_toward')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1682608829)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&delta)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3) dot(with Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('dot')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) cross(with Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('cross')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) outer(with Vector3) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('outer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3934786792)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) abs() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) floor() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('floor')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) ceil() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('ceil')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) round() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('round')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) posmod(mod f32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('posmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		514930144)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mod)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) posmodv(modv Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('posmodv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&modv)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) project(b Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('project')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) slide(n Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('slide')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&n)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) bounce(n Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('bounce')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&n)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) reflect(n Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('reflect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&n)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector3) sign() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3) octahedron_encode() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('octahedron_encode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn Vector3.octahedron_decode(uv Vector2) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('octahedron_decode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3, voidptr(&fnname),
		3991820552)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&uv)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &Vector3) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector3)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Vector3) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector3)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Vector3i {
pub mut:
	x i32 // offset 0
	y i32 // offset 4
	z i32 // offset 8
}

pub fn Vector3i.new0() Vector3i {
	mut object_out := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Vector3i.new1(from &Vector3i) Vector3i {
	mut object_out := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector3i.new2(from &Vector3) Vector3i {
	mut object_out := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector3i.new3(x &i32, y &i32, z &i32) Vector3i {
	mut object_out := Vector3i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector3i,
		3)
	mut args := unsafe { [3]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = z
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Vector3i) min_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('min_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3i) max_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('max_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3i) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3i) length_squared() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3i) sign() Vector3i {
	mut object_out := Vector3i{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		3729604559)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3i) abs() Vector3i {
	mut object_out := Vector3i{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		3729604559)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector3i) clamp(min Vector3i, max Vector3i) Vector3i {
	mut object_out := Vector3i{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		1086892323)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector3i) snapped(step Vector3i) Vector3i {
	mut object_out := Vector3i{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector3i, voidptr(&fnname),
		1989319750)
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

pub fn (v &Vector3i) index(i int) i32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector3i)
	mut output := i32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Transform2D {
pub mut:
	x      Vector2 // offset 0
	y      Vector2 // offset 8
	origin Vector2 // offset 16
}

pub fn Transform2D.new0() Transform2D {
	mut object_out := Transform2D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Transform2D.new1(from &Transform2D) Transform2D {
	mut object_out := Transform2D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Transform2D.new2(rotation &f32, position &Vector2) Transform2D {
	mut object_out := Transform2D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d,
		2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = rotation
	args[1] = position
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Transform2D.new3(rotation &f32, scale &Vector2, skew &f32, position &Vector2) Transform2D {
	mut object_out := Transform2D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d,
		3)
	mut args := unsafe { [4]voidptr{} }
	args[0] = rotation
	args[1] = scale
	args[2] = skew
	args[3] = position
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Transform2D.new4(x_axis &Vector2, y_axis &Vector2, origin &Vector2) Transform2D {
	mut object_out := Transform2D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform2d,
		4)
	mut args := unsafe { [3]voidptr{} }
	args[0] = x_axis
	args[1] = y_axis
	args[2] = origin
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Transform2D) inverse() Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1420440541)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) affine_inverse() Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('affine_inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1420440541)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) get_rotation() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_rotation')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) get_origin() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('get_origin')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) get_scale() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('get_scale')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) get_skew() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_skew')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) orthonormalized() Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('orthonormalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1420440541)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) rotated(angle f32) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('rotated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		729597514)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) rotated_local(angle f32) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('rotated_local')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		729597514)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) scaled(scale Vector2) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('scaled')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1446323263)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) scaled_local(scale Vector2) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('scaled_local')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1446323263)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) translated(offset Vector2) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('translated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1446323263)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) translated_local(offset Vector2) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('translated_local')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1446323263)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) determinant() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('determinant')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) basis_xform(v Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('basis_xform')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&v)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) basis_xform_inv(v Vector2) Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('basis_xform_inv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		2026743667)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&v)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) interpolate_with(xform Transform2D, weight f32) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('interpolate_with')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		359399686)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&xform)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Transform2D) is_equal_approx(xform Transform2D) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		3837431929)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&xform)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform2D) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform2D) looking_at(target Vector2) Transform2D {
	mut object_out := Transform2D{}
	fnname := StringName.new('looking_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform2d, voidptr(&fnname),
		1446323263)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&target)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &Transform2D) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_transform2d)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Transform2D) index(i int) Vector2 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_transform2d)
	mut output := Vector2{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Vector4 {
pub mut:
	x f32 // offset 0
	y f32 // offset 4
	z f32 // offset 8
	w f32 // offset 12
}

pub fn Vector4.new0() Vector4 {
	mut object_out := Vector4{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Vector4.new1(from &Vector4) Vector4 {
	mut object_out := Vector4{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector4.new2(from &Vector4i) Vector4 {
	mut object_out := Vector4{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector4.new3(x &f32, y &f32, z &f32, w &f32) Vector4 {
	mut object_out := Vector4{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4,
		3)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = z
	args[3] = w
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Vector4) min_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('min_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) max_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('max_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) length_squared() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) abs() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) sign() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) floor() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('floor')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) ceil() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('ceil')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) round() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('round')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) lerp(to Vector4, weight f32) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		2329757942)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector4) cubic_interpolate(b Vector4, pre_a Vector4, post_b Vector4, weight f32) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('cubic_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		726768410)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Vector4) cubic_interpolate_in_time(b Vector4, pre_a Vector4, post_b Vector4, weight f32, b_t f32, pre_a_t f32, post_b_t f32) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('cubic_interpolate_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		681631873)
	mut args := unsafe { [7]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	args[4] = voidptr(&b_t)
	args[5] = voidptr(&pre_a_t)
	args[6] = voidptr(&post_b_t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 7)
	return object_out
}

pub fn (r &Vector4) posmod(mod f32) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('posmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3129671720)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&mod)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) posmodv(modv Vector4) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('posmodv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		2031281584)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&modv)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) snapped(step Vector4) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		2031281584)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) clamp(min Vector4, max Vector4) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		823915692)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector4) normalized() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) is_normalized() bool {
	mut object_out := false
	fnname := StringName.new('is_normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) direction_to(to Vector4) Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('direction_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		2031281584)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) distance_to(to Vector4) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3770801042)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) distance_squared_to(to Vector4) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_squared_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3770801042)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) dot(with Vector4) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('dot')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3770801042)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) inverse() Vector4 {
	mut object_out := Vector4{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		80860099)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) is_equal_approx(to Vector4) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		88913544)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Vector4) is_zero_approx() bool {
	mut object_out := false
	fnname := StringName.new('is_zero_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Vector4) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector4)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Vector4) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector4)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Vector4i {
pub mut:
	x i32 // offset 0
	y i32 // offset 4
	z i32 // offset 8
	w i32 // offset 12
}

pub fn Vector4i.new0() Vector4i {
	mut object_out := Vector4i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Vector4i.new1(from &Vector4i) Vector4i {
	mut object_out := Vector4i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector4i.new2(from &Vector4) Vector4i {
	mut object_out := Vector4i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Vector4i.new3(x &i32, y &i32, z &i32, w &i32) Vector4i {
	mut object_out := Vector4i{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i,
		3)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = z
	args[3] = w
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Vector4i) min_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('min_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4i) max_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('max_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4i) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4i) length_squared() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4i) sign() Vector4i {
	mut object_out := Vector4i{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		4134919947)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4i) abs() Vector4i {
	mut object_out := Vector4i{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		4134919947)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Vector4i) clamp(min Vector4i, max Vector4i) Vector4i {
	mut object_out := Vector4i{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		3046490913)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Vector4i) snapped(step Vector4i) Vector4i {
	mut object_out := Vector4i{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname),
		1181693102)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&step)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &Vector4i) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector4i)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Vector4i) index(i int) i32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector4i)
	mut output := i32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Plane {
pub mut:
	normal Vector3 // offset 0
	d      f32     // offset 12
}

pub fn Plane.new0() Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Plane.new1(from &Plane) Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Plane.new2(normal &Vector3) Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = normal
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Plane.new3(normal &Vector3, d &f32) Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = normal
	args[1] = d
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Plane.new4(normal &Vector3, point &Vector3) Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		4)
	mut args := unsafe { [2]voidptr{} }
	args[0] = normal
	args[1] = point
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Plane.new5(point1 &Vector3, point2 &Vector3, point3 &Vector3) Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		5)
	mut args := unsafe { [3]voidptr{} }
	args[0] = point1
	args[1] = point2
	args[2] = point3
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Plane.new6(a &f32, b &f32, c &f32, d &f32) Plane {
	mut object_out := Plane{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_plane,
		6)
	mut args := unsafe { [4]voidptr{} }
	args[0] = a
	args[1] = b
	args[2] = c
	args[3] = d
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Plane) normalized() Plane {
	mut object_out := Plane{}
	fnname := StringName.new('normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		1051796340)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Plane) get_center() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_center')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Plane) is_equal_approx(to_plane Plane) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		1150170233)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to_plane)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Plane) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Plane) is_point_over(point Vector3) bool {
	mut object_out := false
	fnname := StringName.new('is_point_over')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		1749054343)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Plane) distance_to(point Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('distance_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Plane) has_point(point Vector3, tolerance f32) bool {
	mut object_out := false
	fnname := StringName.new('has_point')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		1258189072)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&point)
	args[1] = voidptr(&tolerance)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Plane) project(point Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('project')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Plane) intersect_3(b Plane, c Plane) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('intersect_3')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		2012052692)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&c)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Plane) intersects_ray(from Vector3, dir Vector3) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('intersects_ray')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		2048133369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&dir)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Plane) intersects_segment(from Vector3, to Vector3) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('intersects_segment')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_plane, voidptr(&fnname),
		2048133369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (v &Plane) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_plane)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Quaternion {
pub mut:
	x f32 // offset 0
	y f32 // offset 4
	z f32 // offset 8
	w f32 // offset 12
}

pub fn Quaternion.new0() Quaternion {
	mut object_out := Quaternion{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Quaternion.new1(from &Quaternion) Quaternion {
	mut object_out := Quaternion{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Quaternion.new2(from &Basis) Quaternion {
	mut object_out := Quaternion{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Quaternion.new3(axis &Vector3, angle &f32) Quaternion {
	mut object_out := Quaternion{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = axis
	args[1] = angle
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Quaternion.new4(arc_from &Vector3, arc_to &Vector3) Quaternion {
	mut object_out := Quaternion{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion,
		4)
	mut args := unsafe { [2]voidptr{} }
	args[0] = arc_from
	args[1] = arc_to
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Quaternion.new5(x &f32, y &f32, z &f32, w &f32) Quaternion {
	mut object_out := Quaternion{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_quaternion,
		5)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x
	args[1] = y
	args[2] = z
	args[3] = w
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Quaternion) length() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) length_squared() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('length_squared')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) normalized() Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		4274879941)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) is_normalized() bool {
	mut object_out := false
	fnname := StringName.new('is_normalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) is_equal_approx(to Quaternion) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		1682156903)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Quaternion) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) inverse() Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		4274879941)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) log() Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('log')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		4274879941)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) exp() Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('exp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		4274879941)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) angle_to(to Quaternion) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('angle_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		3244682419)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Quaternion) dot(with Quaternion) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('dot')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		3244682419)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Quaternion) slerp(to Quaternion, weight f32) Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('slerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		1773590316)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Quaternion) slerpni(to Quaternion, weight f32) Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('slerpni')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		1773590316)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Quaternion) spherical_cubic_interpolate(b Quaternion, pre_a Quaternion, post_b Quaternion, weight f32) Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('spherical_cubic_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		2150967576)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Quaternion) spherical_cubic_interpolate_in_time(b Quaternion, pre_a Quaternion, post_b Quaternion, weight f32, b_t f32, pre_a_t f32, post_b_t f32) Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('spherical_cubic_interpolate_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		1436023539)
	mut args := unsafe { [7]voidptr{} }
	args[0] = voidptr(&b)
	args[1] = voidptr(&pre_a)
	args[2] = voidptr(&post_b)
	args[3] = voidptr(&weight)
	args[4] = voidptr(&b_t)
	args[5] = voidptr(&pre_a_t)
	args[6] = voidptr(&post_b_t)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 7)
	return object_out
}

pub fn (r &Quaternion) get_euler(order i32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_euler')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		1394941017)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&order)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Quaternion.from_euler(euler Vector3) Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('from_euler')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		4053467903)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&euler)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Quaternion) get_axis() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_axis')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Quaternion) get_angle() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_quaternion, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Quaternion) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_quaternion)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Quaternion) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_quaternion)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct AABB {
pub mut:
	position Vector3 // offset 0
	size     Vector3 // offset 12
}

pub fn AABB.new0() AABB {
	mut object_out := AABB{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_aabb, 0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn AABB.new1(from &AABB) AABB {
	mut object_out := AABB{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_aabb, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn AABB.new2(position &Vector3, size &Vector3) AABB {
	mut object_out := AABB{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_aabb, 2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = position
	args[1] = size
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &AABB) abs() AABB {
	mut object_out := AABB{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1576868580)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_center() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_center')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_volume() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_volume')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) has_volume() bool {
	mut object_out := false
	fnname := StringName.new('has_volume')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) has_surface() bool {
	mut object_out := false
	fnname := StringName.new('has_surface')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) has_point(point Vector3) bool {
	mut object_out := false
	fnname := StringName.new('has_point')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1749054343)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) is_equal_approx(aabb AABB) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		299946684)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&aabb)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) intersects(with AABB) bool {
	mut object_out := false
	fnname := StringName.new('intersects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		299946684)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) encloses(with AABB) bool {
	mut object_out := false
	fnname := StringName.new('encloses')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		299946684)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) intersects_plane(plane Plane) bool {
	mut object_out := false
	fnname := StringName.new('intersects_plane')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1150170233)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plane)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) intersection(with AABB) AABB {
	mut object_out := AABB{}
	fnname := StringName.new('intersection')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1271470306)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) merge(with AABB) AABB {
	mut object_out := AABB{}
	fnname := StringName.new('merge')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1271470306)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) expand(to_point Vector3) AABB {
	mut object_out := AABB{}
	fnname := StringName.new('expand')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		2851643018)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to_point)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) grow(by f32) AABB {
	mut object_out := AABB{}
	fnname := StringName.new('grow')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		239217291)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&by)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) get_support(dir Vector3) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_support')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		2923479887)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&dir)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) get_longest_axis() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_longest_axis')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_longest_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_longest_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_longest_axis_size() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_longest_axis_size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_shortest_axis() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_shortest_axis')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_shortest_axis_index() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_shortest_axis_index')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_shortest_axis_size() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_shortest_axis_size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &AABB) get_endpoint(idx i32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_endpoint')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		1394941017)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&idx)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &AABB) intersects_segment(from Vector3, to Vector3) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('intersects_segment')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		2048133369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &AABB) intersects_ray(from Vector3, dir Vector3) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('intersects_ray')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname),
		2048133369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&dir)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (v &AABB) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_aabb)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Basis {
pub mut:
	x Vector3 // offset 0
	y Vector3 // offset 12
	z Vector3 // offset 24
}

pub fn Basis.new0() Basis {
	mut object_out := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Basis.new1(from &Basis) Basis {
	mut object_out := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Basis.new2(from &Quaternion) Basis {
	mut object_out := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Basis.new3(axis &Vector3, angle &f32) Basis {
	mut object_out := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis,
		3)
	mut args := unsafe { [2]voidptr{} }
	args[0] = axis
	args[1] = angle
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Basis.new4(x_axis &Vector3, y_axis &Vector3, z_axis &Vector3) Basis {
	mut object_out := Basis{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_basis,
		4)
	mut args := unsafe { [3]voidptr{} }
	args[0] = x_axis
	args[1] = y_axis
	args[2] = z_axis
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Basis) inverse() Basis {
	mut object_out := Basis{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		594669093)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Basis) transposed() Basis {
	mut object_out := Basis{}
	fnname := StringName.new('transposed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		594669093)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Basis) orthonormalized() Basis {
	mut object_out := Basis{}
	fnname := StringName.new('orthonormalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		594669093)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Basis) determinant() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('determinant')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Basis) rotated(axis Vector3, angle f32) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('rotated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		1998708965)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&axis)
	args[1] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Basis) scaled(scale Vector3) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('scaled')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		3934786792)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Basis) get_scale() Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_scale')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		1776574132)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Basis) get_euler(order i32) Vector3 {
	mut object_out := Vector3{}
	fnname := StringName.new('get_euler')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		1394941017)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&order)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Basis) tdotx(with Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tdotx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Basis) tdoty(with Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tdoty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Basis) tdotz(with Vector3) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tdotz')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		1047977935)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Basis) slerp(to Basis, weight f32) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('slerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		3118673011)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Basis) is_equal_approx(b Basis) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		3165333982)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&b)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Basis) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Basis) get_rotation_quaternion() Quaternion {
	mut object_out := Quaternion{}
	fnname := StringName.new('get_rotation_quaternion')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		4274879941)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn Basis.looking_at(target Vector3, up Vector3, use_model_front bool) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('looking_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		3728732505)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&target)
	args[1] = voidptr(&up)
	args[2] = voidptr(&use_model_front)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn Basis.from_scale(scale Vector3) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('from_scale')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		3703240166)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Basis.from_euler(euler Vector3, order i32) Basis {
	mut object_out := Basis{}
	fnname := StringName.new('from_euler')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_basis, voidptr(&fnname),
		2802321791)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&euler)
	args[1] = voidptr(&order)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (v &Basis) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_basis)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Basis) index(i int) Vector3 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_basis)
	mut output := Vector3{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Transform3D {
pub mut:
	basis  Basis   // offset 0
	origin Vector3 // offset 36
}

pub fn Transform3D.new0() Transform3D {
	mut object_out := Transform3D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Transform3D.new1(from &Transform3D) Transform3D {
	mut object_out := Transform3D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Transform3D.new2(basis &Basis, origin &Vector3) Transform3D {
	mut object_out := Transform3D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d,
		2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = basis
	args[1] = origin
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Transform3D.new3(x_axis &Vector3, y_axis &Vector3, z_axis &Vector3, origin &Vector3) Transform3D {
	mut object_out := Transform3D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d,
		3)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x_axis
	args[1] = y_axis
	args[2] = z_axis
	args[3] = origin
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Transform3D.new4(from &Projection) Transform3D {
	mut object_out := Transform3D{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_transform3d,
		4)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Transform3D) inverse() Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		3816817146)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform3D) affine_inverse() Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('affine_inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		3816817146)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform3D) orthonormalized() Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('orthonormalized')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		3816817146)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Transform3D) rotated(axis Vector3, angle f32) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('rotated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1563203923)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&axis)
	args[1] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Transform3D) rotated_local(axis Vector3, angle f32) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('rotated_local')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1563203923)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&axis)
	args[1] = voidptr(&angle)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Transform3D) scaled(scale Vector3) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('scaled')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1405596198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform3D) scaled_local(scale Vector3) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('scaled_local')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1405596198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&scale)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform3D) translated(offset Vector3) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('translated')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1405596198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform3D) translated_local(offset Vector3) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('translated_local')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1405596198)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform3D) looking_at(target Vector3, up Vector3, use_model_front bool) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('looking_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		90889270)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&target)
	args[1] = voidptr(&up)
	args[2] = voidptr(&use_model_front)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &Transform3D) interpolate_with(xform Transform3D, weight f32) Transform3D {
	mut object_out := Transform3D{}
	fnname := StringName.new('interpolate_with')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		1786453358)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&xform)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Transform3D) is_equal_approx(xform Transform3D) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		696001652)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&xform)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Transform3D) is_finite() bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_transform3d, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Transform3D) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_transform3d)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Projection {
pub mut:
	x Vector4 // offset 0
	y Vector4 // offset 16
	z Vector4 // offset 32
	w Vector4 // offset 48
}

pub fn Projection.new0() Projection {
	mut object_out := Projection{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Projection.new1(from &Projection) Projection {
	mut object_out := Projection{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Projection.new2(from &Transform3D) Projection {
	mut object_out := Projection{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Projection.new3(x_axis &Vector4, y_axis &Vector4, z_axis &Vector4, w_axis &Vector4) Projection {
	mut object_out := Projection{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection,
		3)
	mut args := unsafe { [4]voidptr{} }
	args[0] = x_axis
	args[1] = y_axis
	args[2] = z_axis
	args[3] = w_axis
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Projection.create_depth_correction(flip_y bool) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_depth_correction')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		1228516048)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&flip_y)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Projection.create_light_atlas_rect(rect Rect2) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_light_atlas_rect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		2654950662)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rect)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Projection.create_perspective(fovy f32, aspect f32, z_near f32, z_far f32, flip_fov bool) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_perspective')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		390915442)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&fovy)
	args[1] = voidptr(&aspect)
	args[2] = voidptr(&z_near)
	args[3] = voidptr(&z_far)
	args[4] = voidptr(&flip_fov)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 5)
	return object_out
}

pub fn Projection.create_perspective_hmd(fovy f32, aspect f32, z_near f32, z_far f32, flip_fov bool, eye i32, intraocular_dist f32, convergence_dist f32) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_perspective_hmd')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		2857674800)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&fovy)
	args[1] = voidptr(&aspect)
	args[2] = voidptr(&z_near)
	args[3] = voidptr(&z_far)
	args[4] = voidptr(&flip_fov)
	args[5] = voidptr(&eye)
	args[6] = voidptr(&intraocular_dist)
	args[7] = voidptr(&convergence_dist)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 8)
	return object_out
}

pub fn Projection.create_for_hmd(eye i32, aspect f32, intraocular_dist f32, display_width f32, display_to_lens f32, oversample f32, z_near f32, z_far f32) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_for_hmd')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		4184144994)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&eye)
	args[1] = voidptr(&aspect)
	args[2] = voidptr(&intraocular_dist)
	args[3] = voidptr(&display_width)
	args[4] = voidptr(&display_to_lens)
	args[5] = voidptr(&oversample)
	args[6] = voidptr(&z_near)
	args[7] = voidptr(&z_far)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 8)
	return object_out
}

pub fn Projection.create_orthogonal(left f32, right f32, bottom f32, top f32, z_near f32, z_far f32) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_orthogonal')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		3707929169)
	mut args := unsafe { [6]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&right)
	args[2] = voidptr(&bottom)
	args[3] = voidptr(&top)
	args[4] = voidptr(&z_near)
	args[5] = voidptr(&z_far)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 6)
	return object_out
}

pub fn Projection.create_orthogonal_aspect(size f32, aspect f32, z_near f32, z_far f32, flip_fov bool) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_orthogonal_aspect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		390915442)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&size)
	args[1] = voidptr(&aspect)
	args[2] = voidptr(&z_near)
	args[3] = voidptr(&z_far)
	args[4] = voidptr(&flip_fov)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 5)
	return object_out
}

pub fn Projection.create_frustum(left f32, right f32, bottom f32, top f32, z_near f32, z_far f32) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_frustum')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		3707929169)
	mut args := unsafe { [6]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&right)
	args[2] = voidptr(&bottom)
	args[3] = voidptr(&top)
	args[4] = voidptr(&z_near)
	args[5] = voidptr(&z_far)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 6)
	return object_out
}

pub fn Projection.create_frustum_aspect(size f32, aspect f32, offset Vector2, z_near f32, z_far f32, flip_fov bool) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_frustum_aspect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		1535076251)
	mut args := unsafe { [6]voidptr{} }
	args[0] = voidptr(&size)
	args[1] = voidptr(&aspect)
	args[2] = voidptr(&offset)
	args[3] = voidptr(&z_near)
	args[4] = voidptr(&z_far)
	args[5] = voidptr(&flip_fov)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 6)
	return object_out
}

pub fn Projection.create_fit_aabb(aabb AABB) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('create_fit_aabb')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		2264694907)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&aabb)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Projection) determinant() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('determinant')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) perspective_znear_adjusted(new_znear f32) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('perspective_znear_adjusted')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		3584785443)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_znear)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Projection) get_projection_plane(plane i32) Plane {
	mut object_out := Plane{}
	fnname := StringName.new('get_projection_plane')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		1551184160)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&plane)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Projection) flipped_y() Projection {
	mut object_out := Projection{}
	fnname := StringName.new('flipped_y')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		4212530932)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) jitter_offseted(offset Vector2) Projection {
	mut object_out := Projection{}
	fnname := StringName.new('jitter_offseted')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		2448438599)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Projection.get_fovy(fovx f32, aspect f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_fovy')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		3514207532)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&fovx)
	args[1] = voidptr(&aspect)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Projection) get_z_far() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_z_far')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) get_z_near() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_z_near')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) get_aspect() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_aspect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) get_fov() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_fov')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) is_orthogonal() bool {
	mut object_out := false
	fnname := StringName.new('is_orthogonal')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) get_viewport_half_extents() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('get_viewport_half_extents')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) get_far_plane_half_extents() Vector2 {
	mut object_out := Vector2{}
	fnname := StringName.new('get_far_plane_half_extents')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		2428350749)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) inverse() Projection {
	mut object_out := Projection{}
	fnname := StringName.new('inverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		4212530932)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Projection) get_pixels_per_meter(for_pixel_width i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_pixels_per_meter')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&for_pixel_width)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Projection) get_lod_multiplier() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_lod_multiplier')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Projection) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_projection)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Projection) index(i int) Vector4 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_projection)
	mut output := Vector4{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Color {
pub mut:
	r f32 // offset 0
	g f32 // offset 4
	b f32 // offset 8
	a f32 // offset 12
}

pub fn Color.new0() Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Color.new1(from &Color) Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Color.new2(from &Color, alpha &f32) Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = from
	args[1] = alpha
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Color.new3(r &f32, g &f32, b &f32) Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		3)
	mut args := unsafe { [3]voidptr{} }
	args[0] = r
	args[1] = g
	args[2] = b
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Color.new4(r &f32, g &f32, b &f32, a &f32) Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		4)
	mut args := unsafe { [4]voidptr{} }
	args[0] = r
	args[1] = g
	args[2] = b
	args[3] = a
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Color.new5(code &String) Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		5)
	mut args := unsafe { [1]voidptr{} }
	args[0] = code
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Color.new6(code &String, alpha &f32) Color {
	mut object_out := Color{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_color,
		6)
	mut args := unsafe { [2]voidptr{} }
	args[0] = code
	args[1] = alpha
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &Color) to_argb32() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_argb32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) to_abgr32() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_abgr32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) to_rgba32() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_rgba32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) to_argb64() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_argb64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) to_abgr64() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_abgr64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) to_rgba64() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_rgba64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) to_html(with_alpha bool) String {
	mut object_out := String{}
	fnname := StringName.new('to_html')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3429816538)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with_alpha)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Color) clamp(min Color, max Color) Color {
	mut object_out := Color{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		105651410)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min)
	args[1] = voidptr(&max)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Color) inverted() Color {
	mut object_out := Color{}
	fnname := StringName.new('inverted')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3334027602)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) lerp(to Color, weight f32) Color {
	mut object_out := Color{}
	fnname := StringName.new('lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		402949615)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&to)
	args[1] = voidptr(&weight)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Color) lightened(amount f32) Color {
	mut object_out := Color{}
	fnname := StringName.new('lightened')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		1466039168)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Color) darkened(amount f32) Color {
	mut object_out := Color{}
	fnname := StringName.new('darkened')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		1466039168)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&amount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Color) blend(over Color) Color {
	mut object_out := Color{}
	fnname := StringName.new('blend')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3803690977)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&over)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Color) get_luminance() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('get_luminance')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) srgb_to_linear() Color {
	mut object_out := Color{}
	fnname := StringName.new('srgb_to_linear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3334027602)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) linear_to_srgb() Color {
	mut object_out := Color{}
	fnname := StringName.new('linear_to_srgb')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3334027602)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Color) is_equal_approx(to Color) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3167426256)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Color.hex(hex i32) Color {
	mut object_out := Color{}
	fnname := StringName.new('hex')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		351421375)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&hex)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Color.hex64(hex i32) Color {
	mut object_out := Color{}
	fnname := StringName.new('hex64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		351421375)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&hex)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Color.html(rgba String) Color {
	mut object_out := Color{}
	fnname := StringName.new('html')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		2500054655)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rgba)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Color.html_is_valid(color String) bool {
	mut object_out := false
	fnname := StringName.new('html_is_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		2942997125)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&color)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn Color.from_string(str String, default Color) Color {
	mut object_out := Color{}
	fnname := StringName.new('from_string')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		3755044230)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&str)
	args[1] = voidptr(&default)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn Color.from_hsv(h f32, s f32, v f32, alpha f32) Color {
	mut object_out := Color{}
	fnname := StringName.new('from_hsv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		1573799446)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&h)
	args[1] = voidptr(&s)
	args[2] = voidptr(&v)
	args[3] = voidptr(&alpha)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn Color.from_ok_hsl(h f32, s f32, l f32, alpha f32) Color {
	mut object_out := Color{}
	fnname := StringName.new('from_ok_hsl')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		1573799446)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&h)
	args[1] = voidptr(&s)
	args[2] = voidptr(&l)
	args[3] = voidptr(&alpha)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn Color.from_rgbe9995(rgbe i32) Color {
	mut object_out := Color{}
	fnname := StringName.new('from_rgbe9995')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_color, voidptr(&fnname),
		351421375)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rgbe)
	f(unsafe { nil }, voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &Color) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_color)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Color) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_color)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct StringName {
	godot_data [8]u8 // filler
}

pub fn StringName.new0() StringName {
	mut object_out := StringName{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn StringName.new1(from &StringName) StringName {
	mut object_out := StringName{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn StringName.new2(from &String) StringName {
	mut object_out := StringName{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_stringname,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &StringName) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_stringname)
	destructor(voidptr(c))
}

pub fn (r &StringName) casecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('casecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) nocasecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('nocasecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) naturalcasecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('naturalcasecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) naturalnocasecmp_to(to String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('naturalnocasecmp_to')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) length() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('length')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) substr(from i32, len i32) String {
	mut object_out := String{}
	fnname := StringName.new('substr')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&len)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) get_slice(delimiter String, slice i32) String {
	mut object_out := String{}
	fnname := StringName.new('get_slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3535100402)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&slice)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) get_slicec(delimiter i32, slice i32) String {
	mut object_out := String{}
	fnname := StringName.new('get_slicec')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&slice)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) get_slice_count(delimiter String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_slice_count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2920860731)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&delimiter)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) find(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) count(what String, from i32, to i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2343087891)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	args[2] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &StringName) countn(what String, from i32, to i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('countn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2343087891)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	args[2] = voidptr(&to)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &StringName) findn(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('findn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) rfind(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) rfindn(what String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfindn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) matche(expr String) bool {
	mut object_out := false
	fnname := StringName.new('matche')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&expr)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) matchn(expr String) bool {
	mut object_out := false
	fnname := StringName.new('matchn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&expr)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) begins_with(text String) bool {
	mut object_out := false
	fnname := StringName.new('begins_with')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) ends_with(text String) bool {
	mut object_out := false
	fnname := StringName.new('ends_with')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) is_subsequence_of(text String) bool {
	mut object_out := false
	fnname := StringName.new('is_subsequence_of')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) is_subsequence_ofn(text String) bool {
	mut object_out := false
	fnname := StringName.new('is_subsequence_ofn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) bigrams() PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('bigrams')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		747180633)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) similarity(text String) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('similarity')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2697460964)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&text)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) format(values Variant, placeholder String) String {
	mut object_out := String{}
	fnname := StringName.new('format')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3212199029)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&values)
	args[1] = voidptr(&placeholder)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) replace(what String, forwhat String) String {
	mut object_out := String{}
	fnname := StringName.new('replace')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1340436205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&forwhat)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) replacen(what String, forwhat String) String {
	mut object_out := String{}
	fnname := StringName.new('replacen')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1340436205)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&forwhat)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) repeat(count i32) String {
	mut object_out := String{}
	fnname := StringName.new('repeat')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&count)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) insert(position i32, what String) String {
	mut object_out := String{}
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&what)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) erase(position i32, chars i32) String {
	mut object_out := String{}
	fnname := StringName.new('erase')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		787537301)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&chars)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) capitalize() String {
	mut object_out := String{}
	fnname := StringName.new('capitalize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_camel_case() String {
	mut object_out := String{}
	fnname := StringName.new('to_camel_case')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_pascal_case() String {
	mut object_out := String{}
	fnname := StringName.new('to_pascal_case')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_snake_case() String {
	mut object_out := String{}
	fnname := StringName.new('to_snake_case')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) split(delimiter String, allow_empty bool, maxsplit i32) PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('split')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1252735785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	args[2] = voidptr(&maxsplit)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &StringName) rsplit(delimiter String, allow_empty bool, maxsplit i32) PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('rsplit')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		1252735785)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	args[2] = voidptr(&maxsplit)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (r &StringName) split_floats(delimiter String, allow_empty bool) PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	fnname := StringName.new('split_floats')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2092079095)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&delimiter)
	args[1] = voidptr(&allow_empty)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) join(parts PackedStringArray) String {
	mut object_out := String{}
	fnname := StringName.new('join')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3595973238)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&parts)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) to_upper() String {
	mut object_out := String{}
	fnname := StringName.new('to_upper')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_lower() String {
	mut object_out := String{}
	fnname := StringName.new('to_lower')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) left(length i32) String {
	mut object_out := String{}
	fnname := StringName.new('left')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) right(length i32) String {
	mut object_out := String{}
	fnname := StringName.new('right')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&length)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) strip_edges(left bool, right bool) String {
	mut object_out := String{}
	fnname := StringName.new('strip_edges')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		907855311)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&left)
	args[1] = voidptr(&right)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) strip_escapes() String {
	mut object_out := String{}
	fnname := StringName.new('strip_escapes')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) lstrip(chars String) String {
	mut object_out := String{}
	fnname := StringName.new('lstrip')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) rstrip(chars String) String {
	mut object_out := String{}
	fnname := StringName.new('rstrip')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&chars)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) get_extension() String {
	mut object_out := String{}
	fnname := StringName.new('get_extension')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) get_basename() String {
	mut object_out := String{}
	fnname := StringName.new('get_basename')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) path_join(file String) String {
	mut object_out := String{}
	fnname := StringName.new('path_join')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&file)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) unicode_at(at i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('unicode_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&at)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) indent(prefix String) String {
	mut object_out := String{}
	fnname := StringName.new('indent')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&prefix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) dedent() String {
	mut object_out := String{}
	fnname := StringName.new('dedent')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) md5_text() String {
	mut object_out := String{}
	fnname := StringName.new('md5_text')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) sha1_text() String {
	mut object_out := String{}
	fnname := StringName.new('sha1_text')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) sha256_text() String {
	mut object_out := String{}
	fnname := StringName.new('sha256_text')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) md5_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('md5_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) sha1_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('sha1_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) sha256_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('sha256_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) contains(what String) bool {
	mut object_out := false
	fnname := StringName.new('contains')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&what)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) is_absolute_path() bool {
	mut object_out := false
	fnname := StringName.new('is_absolute_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_relative_path() bool {
	mut object_out := false
	fnname := StringName.new('is_relative_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) simplify_path() String {
	mut object_out := String{}
	fnname := StringName.new('simplify_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) get_base_dir() String {
	mut object_out := String{}
	fnname := StringName.new('get_base_dir')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) get_file() String {
	mut object_out := String{}
	fnname := StringName.new('get_file')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) xml_escape(escape_quotes bool) String {
	mut object_out := String{}
	fnname := StringName.new('xml_escape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3429816538)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&escape_quotes)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) xml_unescape() String {
	mut object_out := String{}
	fnname := StringName.new('xml_unescape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) uri_encode() String {
	mut object_out := String{}
	fnname := StringName.new('uri_encode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) uri_decode() String {
	mut object_out := String{}
	fnname := StringName.new('uri_decode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) c_escape() String {
	mut object_out := String{}
	fnname := StringName.new('c_escape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) c_unescape() String {
	mut object_out := String{}
	fnname := StringName.new('c_unescape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) json_escape() String {
	mut object_out := String{}
	fnname := StringName.new('json_escape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) validate_node_name() String {
	mut object_out := String{}
	fnname := StringName.new('validate_node_name')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) validate_filename() String {
	mut object_out := String{}
	fnname := StringName.new('validate_filename')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_valid_identifier() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_identifier')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_valid_int() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_valid_float() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_float')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_valid_hex_number(with_prefix bool) bool {
	mut object_out := false
	fnname := StringName.new('is_valid_hex_number')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		593672999)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&with_prefix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) is_valid_html_color() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_html_color')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_valid_ip_address() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_ip_address')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) is_valid_filename() bool {
	mut object_out := false
	fnname := StringName.new('is_valid_filename')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_int() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('to_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_float() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('to_float')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		466405837)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) hex_to_int() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hex_to_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) bin_to_int() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bin_to_int')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) lpad(min_length i32, character String) String {
	mut object_out := String{}
	fnname := StringName.new('lpad')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min_length)
	args[1] = voidptr(&character)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) rpad(min_length i32, character String) String {
	mut object_out := String{}
	fnname := StringName.new('rpad')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		248737229)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&min_length)
	args[1] = voidptr(&character)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &StringName) pad_decimals(digits i32) String {
	mut object_out := String{}
	fnname := StringName.new('pad_decimals')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&digits)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) pad_zeros(digits i32) String {
	mut object_out := String{}
	fnname := StringName.new('pad_zeros')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		2162347432)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&digits)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) trim_prefix(prefix String) String {
	mut object_out := String{}
	fnname := StringName.new('trim_prefix')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&prefix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) trim_suffix(suffix String) String {
	mut object_out := String{}
	fnname := StringName.new('trim_suffix')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3134094431)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&suffix)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &StringName) to_ascii_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_ascii_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_utf8_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_utf8_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_utf16_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_utf16_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_utf32_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_utf32_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) hex_decode() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('hex_decode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) to_wchar_buffer() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_wchar_buffer')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &StringName) hash() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_stringname, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &StringName) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_stringname)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct NodePath {
	godot_data [8]u8 // filler
}

pub fn NodePath.new0() NodePath {
	mut object_out := NodePath{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn NodePath.new1(from &NodePath) NodePath {
	mut object_out := NodePath{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn NodePath.new2(from &String) NodePath {
	mut object_out := NodePath{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_nodepath,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &NodePath) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_nodepath)
	destructor(voidptr(c))
}

pub fn (r &NodePath) is_absolute() bool {
	mut object_out := false
	fnname := StringName.new('is_absolute')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) get_name_count() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_name_count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) get_name(idx i32) StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_name')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		2948586938)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&idx)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &NodePath) get_subname_count() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_subname_count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) hash() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) get_subname(idx i32) StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_subname')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		2948586938)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&idx)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &NodePath) get_concatenated_names() StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_concatenated_names')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		1825232092)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) get_concatenated_subnames() StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_concatenated_subnames')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		1825232092)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) get_as_property_path() NodePath {
	mut object_out := NodePath{}
	fnname := StringName.new('get_as_property_path')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		1598598043)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &NodePath) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_nodepath, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &NodePath) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_nodepath)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct RID {
	godot_data [8]u8 // filler
}

pub fn RID.new0() RID {
	mut object_out := RID{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rid, 0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn RID.new1(from &RID) RID {
	mut object_out := RID{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_rid, 1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (r &RID) is_valid() bool {
	mut object_out := false
	fnname := StringName.new('is_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rid, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &RID) get_id() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_rid, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &RID) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_rid)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Callable {
	godot_data [16]u8 // filler
}

pub fn Callable.new0() Callable {
	mut object_out := Callable{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Callable.new1(from &Callable) Callable {
	mut object_out := Callable{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Callable.new2(object &Object, method &StringName) Callable {
	mut object_out := Callable{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable,
		2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = object
	args[1] = method
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &Callable) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_callable)
	destructor(voidptr(c))
}

pub fn (r &Callable) callv(arguments Array) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('callv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		413578926)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arguments)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Callable) is_null() bool {
	mut object_out := false
	fnname := StringName.new('is_null')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) is_custom() bool {
	mut object_out := false
	fnname := StringName.new('is_custom')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) is_standard() bool {
	mut object_out := false
	fnname := StringName.new('is_standard')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) is_valid() bool {
	mut object_out := false
	fnname := StringName.new('is_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) get_object() Object {
	mut object_out := Object{}
	fnname := StringName.new('get_object')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		4008621732)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) get_object_id() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_object_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) get_method() StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_method')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		1825232092)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) get_bound_arguments_count() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_bound_arguments_count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) get_bound_arguments() Array {
	mut object_out := Array{}
	fnname := StringName.new('get_bound_arguments')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		4144163970)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) hash() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Callable) bindv(arguments Array) Callable {
	mut object_out := Callable{}
	fnname := StringName.new('bindv')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3564560322)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arguments)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Callable) unbind(argcount i32) Callable {
	mut object_out := Callable{}
	fnname := StringName.new('unbind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		755001590)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&argcount)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Callable) call() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('call')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3643564216)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Callable) call_deferred() {
	fnname := StringName.new('call_deferred')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3286317445)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Callable) rpc() {
	fnname := StringName.new('rpc')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3286317445)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Callable) rpc_id(peer_id i32) {
	fnname := StringName.new('rpc_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		2270047679)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (r &Callable) bind() Callable {
	mut object_out := Callable{}
	fnname := StringName.new('bind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname),
		3224143119)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Callable) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_callable)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Signal {
	godot_data [16]u8 // filler
}

pub fn Signal.new0() Signal {
	mut object_out := Signal{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_signal,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Signal.new1(from &Signal) Signal {
	mut object_out := Signal{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_signal,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Signal.new2(object &Object, signal &StringName) Signal {
	mut object_out := Signal{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_signal,
		2)
	mut args := unsafe { [2]voidptr{} }
	args[0] = object
	args[1] = signal
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &Signal) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_signal)
	destructor(voidptr(c))
}

pub fn (r &Signal) is_null() bool {
	mut object_out := false
	fnname := StringName.new('is_null')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Signal) get_object() Object {
	mut object_out := Object{}
	fnname := StringName.new('get_object')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		4008621732)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Signal) get_object_id() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_object_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Signal) get_name() StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_name')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		1825232092)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Signal) connect(callable Callable, flags i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('connect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		979702392)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&callable)
	args[1] = voidptr(&flags)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r Signal) disconnect(callable Callable) {
	fnname := StringName.new('disconnect')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		3470848906)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (r &Signal) is_connected(callable Callable) bool {
	mut object_out := false
	fnname := StringName.new('is_connected')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		4129521963)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&callable)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Signal) get_connections() Array {
	mut object_out := Array{}
	fnname := StringName.new('get_connections')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		4144163970)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Signal) emit() {
	fnname := StringName.new('emit')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname),
		3286317445)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (v &Signal) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_signal)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

@[heap]
pub struct Dictionary {
	godot_data [8]u8 // filler
}

pub fn Dictionary.new0() Dictionary {
	mut object_out := Dictionary{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Dictionary.new1(from &Dictionary) Dictionary {
	mut object_out := Dictionary{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &Dictionary) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_dictionary)
	destructor(voidptr(c))
}

pub fn (r &Dictionary) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Dictionary) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Dictionary) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r Dictionary) merge(dictionary Dictionary, overwrite bool) {
	fnname := StringName.new('merge')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		2079548978)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (r &Dictionary) has(key Variant) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3680194679)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&key)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Dictionary) has_all(keys Array) bool {
	mut object_out := false
	fnname := StringName.new('has_all')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		2988181878)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&keys)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Dictionary) find_key(value Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('find_key')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		1988825835)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r Dictionary) erase(key Variant) bool {
	mut object_out := false
	fnname := StringName.new('erase')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		1776646889)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&key)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Dictionary) hash() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Dictionary) keys() Array {
	mut object_out := Array{}
	fnname := StringName.new('keys')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		4144163970)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Dictionary) values() Array {
	mut object_out := Array{}
	fnname := StringName.new('values')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		4144163970)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Dictionary) duplicate(deep bool) Dictionary {
	mut object_out := Dictionary{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		830099069)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deep)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Dictionary) get(key Variant, default Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('get')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		2205440559)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&key)
	args[1] = voidptr(&default)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r Dictionary) make_read_only() {
	fnname := StringName.new('make_read_only')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Dictionary) is_read_only() bool {
	mut object_out := false
	fnname := StringName.new('is_read_only')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Dictionary) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_dictionary)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Dictionary) index(i int) Variant {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_dictionary)
	mut output := Variant{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct Array {
	godot_data [8]u8 // filler
}

pub fn Array.new0() Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn Array.new1(from &Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new2(base &Array, type_name &i32, class_name &StringName, script &Variant) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		2)
	mut args := unsafe { [4]voidptr{} }
	args[0] = base
	args[1] = type_name
	args[2] = class_name
	args[3] = script
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new3(from &PackedByteArray) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		3)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new4(from &PackedInt32Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		4)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new5(from &PackedInt64Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		5)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new6(from &PackedFloat32Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		6)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new7(from &PackedFloat64Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		7)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new8(from &PackedStringArray) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		8)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new9(from &PackedVector2Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		9)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new10(from &PackedVector3Array) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		10)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn Array.new11(from &PackedColorArray) Array {
	mut object_out := Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array,
		11)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_array)
	destructor(voidptr(c))
}

pub fn (r &Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Array) hash() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Array) assign(array Array) {
	fnname := StringName.new('assign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		2307260970)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) push_back(value Variant) {
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3316032543)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) push_front(value Variant) {
	fnname := StringName.new('push_front')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3316032543)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) append(value Variant) {
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3316032543)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) append_array(array Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		2307260970)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) resize(size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r Array) insert(position i32, value Variant) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3176316662)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&position)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r Array) remove_at(position i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) fill(value Variant) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3316032543)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) erase(value Variant) {
	fnname := StringName.new('erase')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3316032543)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (r &Array) front() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('front')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1460142086)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) back() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1460142086)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) pick_random() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('pick_random')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1460142086)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) find(what Variant, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		2336346817)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Array) rfind(what Variant, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		2336346817)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&what)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Array) count(value Variant) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1481661226)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) has(value Variant) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3680194679)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r Array) pop_back() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('pop_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1321915136)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Array) pop_front() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('pop_front')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1321915136)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Array) pop_at(position i32) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('pop_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3518259424)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&position)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r Array) sort_custom(func Callable) {
	fnname := StringName.new('sort_custom')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3470848906)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r Array) shuffle() {
	fnname := StringName.new('shuffle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Array) bsearch(value Variant, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3372222236)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Array) bsearch_custom(value Variant, func Callable, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch_custom')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		161317131)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&func)
	args[2] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
	return object_out
}

pub fn (mut r Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Array) duplicate(deep bool) Array {
	mut object_out := Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		636440122)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deep)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) slice(begin i32, end i32, step i32, deep bool) Array {
	mut object_out := Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1393718243)
	mut args := unsafe { [4]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	args[2] = voidptr(&step)
	args[3] = voidptr(&deep)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
	return object_out
}

pub fn (r &Array) filter(method Callable) Array {
	mut object_out := Array{}
	fnname := StringName.new('filter')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		4075186556)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) mape(method Callable) Array {
	mut object_out := Array{}
	fnname := StringName.new('mape')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		4075186556)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) reduce(method Callable, accum Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('reduce')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		4272450342)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&method)
	args[1] = voidptr(&accum)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &Array) any(method Callable) bool {
	mut object_out := false
	fnname := StringName.new('any')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		4129521963)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) all(method Callable) bool {
	mut object_out := false
	fnname := StringName.new('all')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		4129521963)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&method)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) max() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('max')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1460142086)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) min() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('min')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1460142086)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) is_typed() bool {
	mut object_out := false
	fnname := StringName.new('is_typed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) is_same_typed(array Array) bool {
	mut object_out := false
	fnname := StringName.new('is_same_typed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		2988181878)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&array)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &Array) get_typed_builtin() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('get_typed_builtin')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) get_typed_class_name() StringName {
	mut object_out := StringName{}
	fnname := StringName.new('get_typed_class_name')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1825232092)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &Array) get_typed_script() Variant {
	mut object_out := Variant{}
	fnname := StringName.new('get_typed_script')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		1460142086)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r Array) make_read_only() {
	fnname := StringName.new('make_read_only')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &Array) is_read_only() bool {
	mut object_out := false
	fnname := StringName.new('is_read_only')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname),
		3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (v &Array) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_array)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &Array) index(i int) Variant {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_array)
	mut output := Variant{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedByteArray {
	godot_data [16]u8 // filler
}

pub fn PackedByteArray.new0() PackedByteArray {
	mut object_out := PackedByteArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedByteArray.new1(from &PackedByteArray) PackedByteArray {
	mut object_out := PackedByteArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedByteArray.new2(from &Array) PackedByteArray {
	mut object_out := PackedByteArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedbytearray,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedByteArray) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedbytearray)
	destructor(voidptr(c))
}

pub fn (r &PackedByteArray) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedByteArray) set(index i32, value i32) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) push_back(value i32) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedByteArray) append(value i32) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedByteArray) append_array(array PackedByteArray) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 791097111)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedByteArray) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedByteArray) insert(at_index i32, value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1487112728)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedByteArray) fill(value i32) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedByteArray) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedByteArray) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedByteArray) has(value i32) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 931488181)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedByteArray) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedByteArray) slice(begin i32, end i32) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2278869132)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedByteArray) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedByteArray) bsearch(value i32, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3380005890)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedByteArray) duplicate() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 851781288)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) find(value i32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) rfind(value i32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) count(value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) get_string_from_ascii() String {
	mut object_out := String{}
	fnname := StringName.new('get_string_from_ascii')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) get_string_from_utf8() String {
	mut object_out := String{}
	fnname := StringName.new('get_string_from_utf8')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) get_string_from_utf16() String {
	mut object_out := String{}
	fnname := StringName.new('get_string_from_utf16')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) get_string_from_utf32() String {
	mut object_out := String{}
	fnname := StringName.new('get_string_from_utf32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) get_string_from_wchar() String {
	mut object_out := String{}
	fnname := StringName.new('get_string_from_wchar')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) hex_encode() String {
	mut object_out := String{}
	fnname := StringName.new('hex_encode')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3942272618)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) compress(compression_mode i32) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('compress')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1845905913)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&compression_mode)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decompress(buffer_size i32, compression_mode i32) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('decompress')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2278869132)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&buffer_size)
	args[1] = voidptr(&compression_mode)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) decompress_dynamic(max_output_size i32, compression_mode i32) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('decompress_dynamic')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2278869132)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&max_output_size)
	args[1] = voidptr(&compression_mode)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) decode_u8(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_u8')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_s8(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_s8')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_u16(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_u16')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_s16(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_s16')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_u32(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_u32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_s32(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_s32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_u64(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_u64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_s64(byte_offset i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_s64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_half(byte_offset i32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('decode_half')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_float(byte_offset i32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('decode_float')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) decode_double(byte_offset i32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('decode_double')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1401583798)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&byte_offset)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (r &PackedByteArray) has_encoded_var(byte_offset i32, allow_objects bool) bool {
	mut object_out := false
	fnname := StringName.new('has_encoded_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2914632957)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&allow_objects)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) decode_var(byte_offset i32, allow_objects bool) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('decode_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1740420038)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&allow_objects)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) decode_var_size(byte_offset i32, allow_objects bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('decode_var_size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 954237325)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&byte_offset)
	args[1] = voidptr(&allow_objects)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedByteArray) to_int32_array() PackedInt32Array {
	mut object_out := PackedInt32Array{}
	fnname := StringName.new('to_int32_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3158844420)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) to_int64_array() PackedInt64Array {
	mut object_out := PackedInt64Array{}
	fnname := StringName.new('to_int64_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1961294120)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) to_float32_array() PackedFloat32Array {
	mut object_out := PackedFloat32Array{}
	fnname := StringName.new('to_float32_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3575107827)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedByteArray) to_float64_array() PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	fnname := StringName.new('to_float64_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1627308337)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedByteArray) encode_u8(byte_offset i32, value i32) {
	fnname := StringName.new('encode_u8')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_s8(byte_offset i32, value i32) {
	fnname := StringName.new('encode_s8')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_u16(byte_offset i32, value i32) {
	fnname := StringName.new('encode_u16')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_s16(byte_offset i32, value i32) {
	fnname := StringName.new('encode_s16')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_u32(byte_offset i32, value i32) {
	fnname := StringName.new('encode_u32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_s32(byte_offset i32, value i32) {
	fnname := StringName.new('encode_s32')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_u64(byte_offset i32, value i32) {
	fnname := StringName.new('encode_u64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_s64(byte_offset i32, value i32) {
	fnname := StringName.new('encode_s64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_half(byte_offset i32, value f32) {
	fnname := StringName.new('encode_half')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1113000516)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_float(byte_offset i32, value f32) {
	fnname := StringName.new('encode_float')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1113000516)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_double(byte_offset i32, value f32) {
	fnname := StringName.new('encode_double')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 1113000516)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedByteArray) encode_var(byte_offset i32, value Variant, allow_objects bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('encode_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedbytearray,
		voidptr(&fnname), 2604460497)
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
	return output
}

@[heap]
pub struct PackedInt32Array {
	godot_data [16]u8 // filler
}

pub fn PackedInt32Array.new0() PackedInt32Array {
	mut object_out := PackedInt32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedInt32Array.new1(from &PackedInt32Array) PackedInt32Array {
	mut object_out := PackedInt32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedInt32Array.new2(from &Array) PackedInt32Array {
	mut object_out := PackedInt32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedInt32Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedint32array)
	destructor(voidptr(c))
}

pub fn (r &PackedInt32Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedInt32Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedInt32Array) set(index i32, value i32) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedInt32Array) push_back(value i32) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt32Array) append(value i32) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt32Array) append_array(array PackedInt32Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 1087733270)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedInt32Array) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedInt32Array) insert(at_index i32, value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 1487112728)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedInt32Array) fill(value i32) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedInt32Array) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt32Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedInt32Array) has(value i32) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 931488181)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt32Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedInt32Array) slice(begin i32, end i32) PackedInt32Array {
	mut object_out := PackedInt32Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 1216021098)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedInt32Array) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedInt32Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedInt32Array) bsearch(value i32, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 3380005890)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedInt32Array) duplicate() PackedInt32Array {
	mut object_out := PackedInt32Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 1997843129)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedInt32Array) find(value i32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedInt32Array) rfind(value i32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedInt32Array) count(value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array,
		voidptr(&fnname), 4103005248)
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
	return output
}

@[heap]
pub struct PackedInt64Array {
	godot_data [16]u8 // filler
}

pub fn PackedInt64Array.new0() PackedInt64Array {
	mut object_out := PackedInt64Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint64array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedInt64Array.new1(from &PackedInt64Array) PackedInt64Array {
	mut object_out := PackedInt64Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint64array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedInt64Array.new2(from &Array) PackedInt64Array {
	mut object_out := PackedInt64Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint64array,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedInt64Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedint64array)
	destructor(voidptr(c))
}

pub fn (r &PackedInt64Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedInt64Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedInt64Array) set(index i32, value i32) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3638975848)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedInt64Array) push_back(value i32) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt64Array) append(value i32) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 694024632)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt64Array) append_array(array PackedInt64Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 2090311302)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedInt64Array) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedInt64Array) insert(at_index i32, value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 1487112728)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedInt64Array) fill(value i32) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedInt64Array) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt64Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedInt64Array) has(value i32) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 931488181)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedInt64Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedInt64Array) slice(begin i32, end i32) PackedInt64Array {
	mut object_out := PackedInt64Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 1726550804)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedInt64Array) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedInt64Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedInt64Array) bsearch(value i32, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 3380005890)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedInt64Array) duplicate() PackedInt64Array {
	mut object_out := PackedInt64Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 2376370016)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedInt64Array) find(value i32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedInt64Array) rfind(value i32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 2984303840)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedInt64Array) count(value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint64array,
		voidptr(&fnname), 4103005248)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &PackedInt64Array) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedint64array)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &PackedInt64Array) index(i int) i32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedint64array)
	mut output := i32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedFloat32Array {
	godot_data [16]u8 // filler
}

pub fn PackedFloat32Array.new0() PackedFloat32Array {
	mut object_out := PackedFloat32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat32array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedFloat32Array.new1(from &PackedFloat32Array) PackedFloat32Array {
	mut object_out := PackedFloat32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat32array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedFloat32Array.new2(from &Array) PackedFloat32Array {
	mut object_out := PackedFloat32Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat32array,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedFloat32Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedfloat32array)
	destructor(voidptr(c))
}

pub fn (r &PackedFloat32Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedFloat32Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedFloat32Array) set(index i32, value f32) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1113000516)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedFloat32Array) push_back(value f32) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat32Array) append(value f32) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat32Array) append_array(array PackedFloat32Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 2981316639)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedFloat32Array) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedFloat32Array) insert(at_index i32, value f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1379903876)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedFloat32Array) fill(value f32) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 833936903)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedFloat32Array) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat32Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedFloat32Array) has(value f32) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1296369134)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat32Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedFloat32Array) slice(begin i32, end i32) PackedFloat32Array {
	mut object_out := PackedFloat32Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1418229160)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedFloat32Array) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedFloat32Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedFloat32Array) bsearch(value f32, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1188816338)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedFloat32Array) duplicate() PackedFloat32Array {
	mut object_out := PackedFloat32Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 831114784)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedFloat32Array) find(value f32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1343150241)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedFloat32Array) rfind(value f32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 1343150241)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedFloat32Array) count(value f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat32array,
		voidptr(&fnname), 2859915090)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &PackedFloat32Array) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedfloat32array)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &PackedFloat32Array) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedfloat32array)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedFloat64Array {
	godot_data [16]u8 // filler
}

pub fn PackedFloat64Array.new0() PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat64array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedFloat64Array.new1(from &PackedFloat64Array) PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat64array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedFloat64Array.new2(from &Array) PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat64array,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedFloat64Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedfloat64array)
	destructor(voidptr(c))
}

pub fn (r &PackedFloat64Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedFloat64Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedFloat64Array) set(index i32, value f32) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 1113000516)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedFloat64Array) push_back(value f32) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat64Array) append(value f32) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 4094791666)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat64Array) append_array(array PackedFloat64Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 792078629)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedFloat64Array) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedFloat64Array) insert(at_index i32, value f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 1379903876)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedFloat64Array) fill(value f32) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 833936903)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedFloat64Array) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat64Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedFloat64Array) has(value f32) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 1296369134)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedFloat64Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedFloat64Array) slice(begin i32, end i32) PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 2192974324)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedFloat64Array) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedFloat64Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedFloat64Array) bsearch(value f32, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 1188816338)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedFloat64Array) duplicate() PackedFloat64Array {
	mut object_out := PackedFloat64Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 949266573)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedFloat64Array) find(value f32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 1343150241)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedFloat64Array) rfind(value f32, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 1343150241)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedFloat64Array) count(value f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array,
		voidptr(&fnname), 2859915090)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &PackedFloat64Array) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedfloat64array)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &PackedFloat64Array) index(i int) f32 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedfloat64array)
	mut output := f32(0)
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedStringArray {
	godot_data [16]u8 // filler
}

pub fn PackedStringArray.new0() PackedStringArray {
	mut object_out := PackedStringArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedstringarray,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedStringArray.new1(from &PackedStringArray) PackedStringArray {
	mut object_out := PackedStringArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedstringarray,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedStringArray.new2(from &Array) PackedStringArray {
	mut object_out := PackedStringArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedstringarray,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedStringArray) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedstringarray)
	destructor(voidptr(c))
}

pub fn (r &PackedStringArray) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedStringArray) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedStringArray) set(index i32, value String) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 725585539)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedStringArray) push_back(value String) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 816187996)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedStringArray) append(value String) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 816187996)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedStringArray) append_array(array PackedStringArray) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 1120103966)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedStringArray) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedStringArray) insert(at_index i32, value String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 2432393153)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedStringArray) fill(value String) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 3174917410)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedStringArray) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedStringArray) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedStringArray) has(value String) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 2566493496)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedStringArray) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedStringArray) slice(begin i32, end i32) PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 2094601407)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedStringArray) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedStringArray) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedStringArray) bsearch(value String, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 328976671)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedStringArray) duplicate() PackedStringArray {
	mut object_out := PackedStringArray{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 2991231410)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedStringArray) find(value String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedStringArray) rfind(value String, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 1760645412)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedStringArray) count(value String) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedstringarray,
		voidptr(&fnname), 2920860731)
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

pub fn (v &PackedStringArray) index(i int) String {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedstringarray)
	mut output := String{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedVector2Array {
	godot_data [16]u8 // filler
}

pub fn PackedVector2Array.new0() PackedVector2Array {
	mut object_out := PackedVector2Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector2array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedVector2Array.new1(from &PackedVector2Array) PackedVector2Array {
	mut object_out := PackedVector2Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector2array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedVector2Array.new2(from &Array) PackedVector2Array {
	mut object_out := PackedVector2Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector2array,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedVector2Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedvector2array)
	destructor(voidptr(c))
}

pub fn (r &PackedVector2Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedVector2Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedVector2Array) set(index i32, value Vector2) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 635767250)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedVector2Array) push_back(value Vector2) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 4188891560)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector2Array) append(value Vector2) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 4188891560)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector2Array) append_array(array PackedVector2Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3887534835)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedVector2Array) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedVector2Array) insert(at_index i32, value Vector2) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 2225629369)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedVector2Array) fill(value Vector2) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3790411178)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedVector2Array) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector2Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedVector2Array) has(value Vector2) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3190634762)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector2Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedVector2Array) slice(begin i32, end i32) PackedVector2Array {
	mut object_out := PackedVector2Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3864005350)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedVector2Array) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedVector2Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedVector2Array) bsearch(value Vector2, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3778035805)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedVector2Array) duplicate() PackedVector2Array {
	mut object_out := PackedVector2Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 3763646812)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedVector2Array) find(value Vector2, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 1469606149)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedVector2Array) rfind(value Vector2, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 1469606149)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedVector2Array) count(value Vector2) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array,
		voidptr(&fnname), 2798848307)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &PackedVector2Array) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedvector2array)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &PackedVector2Array) index(i int) Vector2 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedvector2array)
	mut output := Vector2{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedVector3Array {
	godot_data [16]u8 // filler
}

pub fn PackedVector3Array.new0() PackedVector3Array {
	mut object_out := PackedVector3Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector3array,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedVector3Array.new1(from &PackedVector3Array) PackedVector3Array {
	mut object_out := PackedVector3Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector3array,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedVector3Array.new2(from &Array) PackedVector3Array {
	mut object_out := PackedVector3Array{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector3array,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedVector3Array) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedvector3array)
	destructor(voidptr(c))
}

pub fn (r &PackedVector3Array) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedVector3Array) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedVector3Array) set(index i32, value Vector3) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3975343409)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedVector3Array) push_back(value Vector3) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3295363524)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector3Array) append(value Vector3) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3295363524)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector3Array) append_array(array PackedVector3Array) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 203538016)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedVector3Array) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedVector3Array) insert(at_index i32, value Vector3) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3892262309)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedVector3Array) fill(value Vector3) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3726392409)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedVector3Array) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector3Array) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedVector3Array) has(value Vector3) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 1749054343)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedVector3Array) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedVector3Array) slice(begin i32, end i32) PackedVector3Array {
	mut object_out := PackedVector3Array{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 2086131305)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedVector3Array) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedVector3Array) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedVector3Array) bsearch(value Vector3, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 219263630)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedVector3Array) duplicate() PackedVector3Array {
	mut object_out := PackedVector3Array{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 2754175465)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedVector3Array) find(value Vector3, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3718155780)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedVector3Array) rfind(value Vector3, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 3718155780)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedVector3Array) count(value Vector3) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector3array,
		voidptr(&fnname), 194580386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (v &PackedVector3Array) to_var() Variant {
	to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedvector3array)
	output := Variant{}
	to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
	return output
}

pub fn (v &PackedVector3Array) index(i int) Vector3 {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedvector3array)
	mut output := Vector3{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

@[heap]
pub struct PackedColorArray {
	godot_data [16]u8 // filler
}

pub fn PackedColorArray.new0() PackedColorArray {
	mut object_out := PackedColorArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray,
		0)
	constructor(voidptr(&object_out), unsafe { nil })
	return object_out
}

pub fn PackedColorArray.new1(from &PackedColorArray) PackedColorArray {
	mut object_out := PackedColorArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray,
		1)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn PackedColorArray.new2(from &Array) PackedColorArray {
	mut object_out := PackedColorArray{}
	constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedcolorarray,
		2)
	mut args := unsafe { [1]voidptr{} }
	args[0] = from
	constructor(voidptr(&object_out), voidptr(&args[0]))
	return object_out
}

pub fn (c &PackedColorArray) deinit() {
	destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedcolorarray)
	destructor(voidptr(c))
}

pub fn (r &PackedColorArray) size() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('size')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3173160232)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedColorArray) is_empty() bool {
	mut object_out := false
	fnname := StringName.new('is_empty')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3918633141)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedColorArray) set(index i32, value Color) {
	fnname := StringName.new('set')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 1444096570)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 2)
}

pub fn (mut r PackedColorArray) push_back(value Color) bool {
	mut object_out := false
	fnname := StringName.new('push_back')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 1007858200)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedColorArray) append(value Color) bool {
	mut object_out := false
	fnname := StringName.new('append')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 1007858200)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedColorArray) append_array(array PackedColorArray) {
	fnname := StringName.new('append_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 798822497)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedColorArray) remove_at(index i32) {
	fnname := StringName.new('remove_at')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 2823966027)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedColorArray) insert(at_index i32, value Color) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('insert')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 785289703)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&at_index)
	args[1] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedColorArray) fill(value Color) {
	fnname := StringName.new('fill')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3730314301)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 1)
}

pub fn (mut r PackedColorArray) resize(new_size i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('resize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 848867239)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&new_size)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedColorArray) clear() {
	fnname := StringName.new('clear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedColorArray) has(value Color) bool {
	mut object_out := false
	fnname := StringName.new('has')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3167426256)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
	return object_out
}

pub fn (mut r PackedColorArray) reverse() {
	fnname := StringName.new('reverse')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (r &PackedColorArray) slice(begin i32, end i32) PackedColorArray {
	mut object_out := PackedColorArray{}
	fnname := StringName.new('slice')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 2451797139)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&begin)
	args[1] = voidptr(&end)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedColorArray) to_byte_array() PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('to_byte_array')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 247621236)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (mut r PackedColorArray) sort() {
	fnname := StringName.new('sort')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3218959716)
	f(voidptr(r), unsafe { nil }, unsafe { nil }, 0)
}

pub fn (mut r PackedColorArray) bsearch(value Color, before bool) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('bsearch')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 314143821)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&before)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (mut r PackedColorArray) duplicate() PackedColorArray {
	mut object_out := PackedColorArray{}
	fnname := StringName.new('duplicate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 1011903421)
	f(voidptr(r), unsafe { nil }, voidptr(&object_out), 0)
	return object_out
}

pub fn (r &PackedColorArray) find(value Color, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('find')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3156095363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedColorArray) rfind(value Color, from i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rfind')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 3156095363)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&from)
	f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
	return object_out
}

pub fn (r &PackedColorArray) count(value Color) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('count')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedcolorarray,
		voidptr(&fnname), 1682108616)
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

pub fn (v &PackedColorArray) index(i int) Color {
	index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedcolorarray)
	mut output := Color{}
	index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
	return output
}

pub enum Side {
	side_left   = 0
	side_top    = 1
	side_right  = 2
	side_bottom = 3
}

pub enum Corner {
	corner_top_left     = 0
	corner_top_right    = 1
	corner_bottom_right = 2
	corner_bottom_left  = 3
}

pub enum Orientation {
	vertical   = 1
	horizontal = 0
}

pub enum ClockDirection {
	clockwise        = 0
	counterclockwise = 1
}

pub enum HorizontalAlignment {
	horizontal_alignment_left   = 0
	horizontal_alignment_center = 1
	horizontal_alignment_right  = 2
	horizontal_alignment_fill   = 3
}

pub enum VerticalAlignment {
	vertical_alignment_top    = 0
	vertical_alignment_center = 1
	vertical_alignment_bottom = 2
	vertical_alignment_fill   = 3
}

pub enum InlineAlignment {
	inline_alignment_top_to      = 0
	inline_alignment_center_to   = 1
	inline_alignment_baseline_to = 3
	inline_alignment_bottom_to   = 2
	inline_alignment_to_center   = 4
	inline_alignment_to_baseline = 8
	inline_alignment_to_bottom   = 12
	inline_alignment_center      = 5
	inline_alignment_bottom      = 14
}

pub enum EulerOrder {
	euler_order_xyz = 0
	euler_order_xzy = 1
	euler_order_yxz = 2
	euler_order_yzx = 3
	euler_order_zxy = 4
	euler_order_zyx = 5
}

pub enum Key {
	key_none          = 0
	key_special       = 4194304
	key_escape        = 4194305
	key_tab           = 4194306
	key_backtab       = 4194307
	key_backspace     = 4194308
	key_enter         = 4194309
	key_kp_enter      = 4194310
	key_insert        = 4194311
	key_delete        = 4194312
	key_pause         = 4194313
	key_print         = 4194314
	key_sysreq        = 4194315
	key_clear         = 4194316
	key_home          = 4194317
	key_end           = 4194318
	key_left          = 4194319
	key_up            = 4194320
	key_right         = 4194321
	key_down          = 4194322
	key_pageup        = 4194323
	key_pagedown      = 4194324
	key_shift         = 4194325
	key_ctrl          = 4194326
	key_meta          = 4194327
	key_alt           = 4194328
	key_capslock      = 4194329
	key_numlock       = 4194330
	key_scrolllock    = 4194331
	key_f1            = 4194332
	key_f2            = 4194333
	key_f3            = 4194334
	key_f4            = 4194335
	key_f5            = 4194336
	key_f6            = 4194337
	key_f7            = 4194338
	key_f8            = 4194339
	key_f9            = 4194340
	key_f10           = 4194341
	key_f11           = 4194342
	key_f12           = 4194343
	key_f13           = 4194344
	key_f14           = 4194345
	key_f15           = 4194346
	key_f16           = 4194347
	key_f17           = 4194348
	key_f18           = 4194349
	key_f19           = 4194350
	key_f20           = 4194351
	key_f21           = 4194352
	key_f22           = 4194353
	key_f23           = 4194354
	key_f24           = 4194355
	key_f25           = 4194356
	key_f26           = 4194357
	key_f27           = 4194358
	key_f28           = 4194359
	key_f29           = 4194360
	key_f30           = 4194361
	key_f31           = 4194362
	key_f32           = 4194363
	key_f33           = 4194364
	key_f34           = 4194365
	key_f35           = 4194366
	key_kp_multiply   = 4194433
	key_kp_divide     = 4194434
	key_kp_subtract   = 4194435
	key_kp_period     = 4194436
	key_kp_add        = 4194437
	key_kp_0          = 4194438
	key_kp_1          = 4194439
	key_kp_2          = 4194440
	key_kp_3          = 4194441
	key_kp_4          = 4194442
	key_kp_5          = 4194443
	key_kp_6          = 4194444
	key_kp_7          = 4194445
	key_kp_8          = 4194446
	key_kp_9          = 4194447
	key_menu          = 4194370
	key_hyper         = 4194371
	key_help          = 4194373
	key_back          = 4194376
	key_forward       = 4194377
	key_stop          = 4194378
	key_refresh       = 4194379
	key_volumedown    = 4194380
	key_volumemute    = 4194381
	key_volumeup      = 4194382
	key_mediaplay     = 4194388
	key_mediastop     = 4194389
	key_mediaprevious = 4194390
	key_medianext     = 4194391
	key_mediarecord   = 4194392
	key_homepage      = 4194393
	key_favorites     = 4194394
	key_search        = 4194395
	key_standby       = 4194396
	key_openurl       = 4194397
	key_launchmail    = 4194398
	key_launchmedia   = 4194399
	key_launch0       = 4194400
	key_launch1       = 4194401
	key_launch2       = 4194402
	key_launch3       = 4194403
	key_launch4       = 4194404
	key_launch5       = 4194405
	key_launch6       = 4194406
	key_launch7       = 4194407
	key_launch8       = 4194408
	key_launch9       = 4194409
	key_launcha       = 4194410
	key_launchb       = 4194411
	key_launchc       = 4194412
	key_launchd       = 4194413
	key_launche       = 4194414
	key_launchf       = 4194415
	key_unknown       = 8388607
	key_space         = 32
	key_exclam        = 33
	key_quotedbl      = 34
	key_numbersign    = 35
	key_dollar        = 36
	key_percent       = 37
	key_ampersand     = 38
	key_apostrophe    = 39
	key_parenleft     = 40
	key_parenright    = 41
	key_asterisk      = 42
	key_plus          = 43
	key_comma         = 44
	key_minus         = 45
	key_period        = 46
	key_slash         = 47
	key_0             = 48
	key_1             = 49
	key_2             = 50
	key_3             = 51
	key_4             = 52
	key_5             = 53
	key_6             = 54
	key_7             = 55
	key_8             = 56
	key_9             = 57
	key_colon         = 58
	key_semicolon     = 59
	key_less          = 60
	key_equal         = 61
	key_greater       = 62
	key_question      = 63
	key_at            = 64
	key_a             = 65
	key_b             = 66
	key_c             = 67
	key_d             = 68
	key_e             = 69
	key_f             = 70
	key_g             = 71
	key_h             = 72
	key_i             = 73
	key_j             = 74
	key_k             = 75
	key_l             = 76
	key_m             = 77
	key_n             = 78
	key_o             = 79
	key_p             = 80
	key_q             = 81
	key_r             = 82
	key_s             = 83
	key_t             = 84
	key_u             = 85
	key_v             = 86
	key_w             = 87
	key_x             = 88
	key_y             = 89
	key_z             = 90
	key_bracketleft   = 91
	key_backslash     = 92
	key_bracketright  = 93
	key_asciicircum   = 94
	key_underscore    = 95
	key_quoteleft     = 96
	key_braceleft     = 123
	key_bar           = 124
	key_braceright    = 125
	key_asciitilde    = 126
	key_yen           = 165
	key_section       = 167
	key_globe         = 4194416
	key_keyboard      = 4194417
	key_jis_eisu      = 4194418
	key_jis_kana      = 4194419
}

pub enum KeyModifierMask {
	key_code_mask         = 8388607
	key_modifier_mask     = 532676608
	key_mask_cmd_or_ctrl  = 16777216
	key_mask_shift        = 33554432
	key_mask_alt          = 67108864
	key_mask_meta         = 134217728
	key_mask_ctrl         = 268435456
	key_mask_kpad         = 536870912
	key_mask_group_switch = 1073741824
}

pub enum MouseButton {
	mouse_button_none        = 0
	mouse_button_left        = 1
	mouse_button_right       = 2
	mouse_button_middle      = 3
	mouse_button_wheel_up    = 4
	mouse_button_wheel_down  = 5
	mouse_button_wheel_left  = 6
	mouse_button_wheel_right = 7
	mouse_button_xbutton1    = 8
	mouse_button_xbutton2    = 9
}

pub enum MouseButtonMask {
	mouse_button_mask_left        = 1
	mouse_button_mask_right       = 2
	mouse_button_mask_middle      = 4
	mouse_button_mask_mb_xbutton1 = 128
	mouse_button_mask_mb_xbutton2 = 256
}

pub enum JoyButton {
	joy_button_invalid        = -1
	joy_button_a              = 0
	joy_button_b              = 1
	joy_button_x              = 2
	joy_button_y              = 3
	joy_button_back           = 4
	joy_button_guide          = 5
	joy_button_start          = 6
	joy_button_left_stick     = 7
	joy_button_right_stick    = 8
	joy_button_left_shoulder  = 9
	joy_button_right_shoulder = 10
	joy_button_dpad_up        = 11
	joy_button_dpad_down      = 12
	joy_button_dpad_left      = 13
	joy_button_dpad_right     = 14
	joy_button_misc1          = 15
	joy_button_paddle1        = 16
	joy_button_paddle2        = 17
	joy_button_paddle3        = 18
	joy_button_paddle4        = 19
	joy_button_touchpad       = 20
	joy_button_sdl_max        = 21
	joy_button_max            = 128
}

pub enum JoyAxis {
	joy_axis_invalid       = -1
	joy_axis_left_x        = 0
	joy_axis_left_y        = 1
	joy_axis_right_x       = 2
	joy_axis_right_y       = 3
	joy_axis_trigger_left  = 4
	joy_axis_trigger_right = 5
	joy_axis_sdl_max       = 6
	joy_axis_max           = 10
}

pub enum MIDIMessage {
	midi_message_none                  = 0
	midi_message_note_off              = 8
	midi_message_note_on               = 9
	midi_message_aftertouch            = 10
	midi_message_control_change        = 11
	midi_message_program_change        = 12
	midi_message_channel_pressure      = 13
	midi_message_pitch_bend            = 14
	midi_message_system_exclusive      = 240
	midi_message_quarter_frame         = 241
	midi_message_song_position_pointer = 242
	midi_message_song_select           = 243
	midi_message_tune_request          = 246
	midi_message_timing_clock          = 248
	midi_message_start                 = 250
	midi_message_continue              = 251
	midi_message_stop                  = 252
	midi_message_active_sensing        = 254
	midi_message_system_reset          = 255
}

pub enum Error {
	ok                            = 0
	failed                        = 1
	err_unavailable               = 2
	err_unconfigured              = 3
	err_unauthorized              = 4
	err_parameter_range_error     = 5
	err_out_of_memory             = 6
	err_file_not_found            = 7
	err_file_bad_drive            = 8
	err_file_bad_path             = 9
	err_file_no_permission        = 10
	err_file_already_in_use       = 11
	err_file_cant_open            = 12
	err_file_cant_write           = 13
	err_file_cant_read            = 14
	err_file_unrecognized         = 15
	err_file_corrupt              = 16
	err_file_missing_dependencies = 17
	err_file_eof                  = 18
	err_cant_open                 = 19
	err_cant_create               = 20
	err_query_failed              = 21
	err_already_in_use            = 22
	err_locked                    = 23
	err_timeout                   = 24
	err_cant_connect              = 25
	err_cant_resolve              = 26
	err_connection_error          = 27
	err_cant_acquire_resource     = 28
	err_cant_fork                 = 29
	err_invalid_data              = 30
	err_invalid_parameter         = 31
	err_already_exists            = 32
	err_does_not_exist            = 33
	err_database_cant_read        = 34
	err_database_cant_write       = 35
	err_compilation_failed        = 36
	err_method_not_found          = 37
	err_link_failed               = 38
	err_script_failed             = 39
	err_cyclic_link               = 40
	err_invalid_declaration       = 41
	err_duplicate_symbol          = 42
	err_parse_error               = 43
	err_busy                      = 44
	err_skip                      = 45
	err_help                      = 46
	err_bug                       = 47
	err_printer_on_fire           = 48
}

pub enum PropertyHint {
	property_hint_none                     = 0
	property_hint_range                    = 1
	property_hint_enum                     = 2
	property_hint_enum_suggestion          = 3
	property_hint_exp_easing               = 4
	property_hint_link                     = 5
	property_hint_flags                    = 6
	property_hint_layers_2d_render         = 7
	property_hint_layers_2d_physics        = 8
	property_hint_layers_2d_navigation     = 9
	property_hint_layers_3d_render         = 10
	property_hint_layers_3d_physics        = 11
	property_hint_layers_3d_navigation     = 12
	property_hint_layers_avoidance         = 37
	property_hint_file                     = 13
	property_hint_dir                      = 14
	property_hint_global_file              = 15
	property_hint_global_dir               = 16
	property_hint_resource_type            = 17
	property_hint_multiline_text           = 18
	property_hint_expression               = 19
	property_hint_placeholder_text         = 20
	property_hint_color_no_alpha           = 21
	property_hint_object_id                = 22
	property_hint_type_string              = 23
	property_hint_node_path_to_edited_node = 24
	property_hint_object_too_big           = 25
	property_hint_node_path_valid_types    = 26
	property_hint_save_file                = 27
	property_hint_global_save_file         = 28
	property_hint_int_is_objectid          = 29
	property_hint_int_is_pointer           = 30
	property_hint_array_type               = 31
	property_hint_locale_id                = 32
	property_hint_localizable_string       = 33
	property_hint_node_type                = 34
	property_hint_hide_quaternion_edit     = 35
	property_hint_password                 = 36
	property_hint_max                      = 38
}

pub enum PropertyUsageFlags {
	property_usage_none                      = 0
	property_usage_storage                   = 2
	property_usage_editor                    = 4
	property_usage_internal                  = 8
	property_usage_checkable                 = 16
	property_usage_checked                   = 32
	property_usage_group                     = 64
	property_usage_category                  = 128
	property_usage_subgroup                  = 256
	property_usage_class_is_bitfield         = 512
	property_usage_no_instance_state         = 1024
	property_usage_restart_if_changed        = 2048
	property_usage_script_variable           = 4096
	property_usage_store_if_null             = 8192
	property_usage_update_all_if_modified    = 16384
	property_usage_script_default_value      = 32768
	property_usage_class_is_enum             = 65536
	property_usage_nil_is_variant            = 131072
	property_usage_array                     = 262144
	property_usage_always_duplicate          = 524288
	property_usage_never_duplicate           = 1048576
	property_usage_high_end_gfx              = 2097152
	property_usage_node_path_from_scene_root = 4194304
	property_usage_resource_not_persistent   = 8388608
	property_usage_keying_increments         = 16777216
	property_usage_deferred_set_resource     = 33554432
	property_usage_editor_instantiate_object = 67108864
	property_usage_editor_basic_setting      = 134217728
	property_usage_read_only                 = 268435456
	property_usage_secret                    = 536870912
	property_usage_default                   = 6
}

pub enum MethodFlags {
	method_flag_normal      = 1
	method_flag_editor      = 2
	method_flag_const       = 4
	method_flag_virtual     = 8
	method_flag_vararg      = 16
	method_flag_static      = 32
	method_flag_object_core = 64
}

pub enum VariantType {
	type_nil                  = 0
	type_bool                 = 1
	type_int                  = 2
	type_float                = 3
	type_string               = 4
	type_vector2              = 5
	type_vector2i             = 6
	type_rect2                = 7
	type_rect2i               = 8
	type_vector3              = 9
	type_vector3i             = 10
	type_transform2d          = 11
	type_vector4              = 12
	type_vector4i             = 13
	type_plane                = 14
	type_quaternion           = 15
	type_aabb                 = 16
	type_basis                = 17
	type_transform3d          = 18
	type_projection           = 19
	type_color                = 20
	type_string_name          = 21
	type_node_path            = 22
	type_rid                  = 23
	type_object               = 24
	type_callable             = 25
	type_signal               = 26
	type_dictionary           = 27
	type_array                = 28
	type_packed_byte_array    = 29
	type_packed_int32_array   = 30
	type_packed_int64_array   = 31
	type_packed_float32_array = 32
	type_packed_float64_array = 33
	type_packed_string_array  = 34
	type_packed_vector2_array = 35
	type_packed_vector3_array = 36
	type_packed_color_array   = 37
	type_max                  = 38
}

pub enum VariantOperator {
	op_equal         = 0
	op_not_equal     = 1
	op_less          = 2
	op_less_equal    = 3
	op_greater       = 4
	op_greater_equal = 5
	op_add           = 6
	op_subtract      = 7
	op_multiply      = 8
	op_divide        = 9
	op_negate        = 10
	op_positive      = 11
	op_module        = 12
	op_power         = 13
	op_shift_left    = 14
	op_shift_right   = 15
	op_bit_and       = 16
	op_bit_or        = 17
	op_bit_xor       = 18
	op_bit_negate    = 19
	op_and           = 20
	op_or            = 21
	op_xor           = 22
	op_not           = 23
	op_in            = 24
	op_max           = 25
}

pub fn sin(angle_rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('sin')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn cos(angle_rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cos')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn tan(angle_rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tan')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn sinh(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('sinh')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn cosh(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cosh')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn tanh(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tanh')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn asin(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('asin')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn acos(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('acos')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn atan(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('atan')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn atan2(y f32, x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('atan2')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&y)
	args[1] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn sqrt(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('sqrt')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn fmod(x f32, y f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('fmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn fposmod(x f32, y f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('fposmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn posmod(x i32, y i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('posmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn floor(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('floor')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn floorf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('floorf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn floori(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('floori')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ceil(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('ceil')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ceilf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('ceilf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ceili(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('ceili')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn round(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('round')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn roundf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('roundf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn roundi(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('roundi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn abs(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn absf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('absf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn absi(x i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('absi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn sign(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn signf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('signf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn signi(x i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('signi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn snapped(x Variant, step Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 459914704)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn snappedf(x f32, step f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('snappedf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn snappedi(x f32, step i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('snappedi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3570758393)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn pow(base f32, exp f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('pow')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&base)
	args[1] = voidptr(&exp)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn log(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('log')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn exp(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('exp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_nan(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_nan')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_inf(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_inf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_equal_approx(a f32, b f32) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1400789633)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn is_zero_approx(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_zero_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_finite(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ease(x f32, curve f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('ease')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&curve)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn step_decimals(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('step_decimals')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn lerp(from Variant, to Variant, weight Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn lerpf(from f32, to f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('lerpf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn cubic_interpolate(from f32, to f32, pre f32, post f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn cubic_interpolate_angle(from f32, to f32, pre f32, post f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate_angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn cubic_interpolate_in_time(from f32, to f32, pre f32, post f32, weight f32, to_t f32, pre_t f32, post_t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 388121036)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	args[5] = voidptr(&to_t)
	args[6] = voidptr(&pre_t)
	args[7] = voidptr(&post_t)
	f(voidptr(&object_out), voidptr(&args[0]), 8)
	return object_out
}

pub fn cubic_interpolate_angle_in_time(from f32, to f32, pre f32, post f32, weight f32, to_t f32, pre_t f32, post_t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate_angle_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 388121036)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	args[5] = voidptr(&to_t)
	args[6] = voidptr(&pre_t)
	args[7] = voidptr(&post_t)
	f(voidptr(&object_out), voidptr(&args[0]), 8)
	return object_out
}

pub fn bezier_interpolate(start f32, control_1 f32, control_2 f32, end f32, t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('bezier_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&start)
	args[1] = voidptr(&control_1)
	args[2] = voidptr(&control_2)
	args[3] = voidptr(&end)
	args[4] = voidptr(&t)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn bezier_derivative(start f32, control_1 f32, control_2 f32, end f32, t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('bezier_derivative')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&start)
	args[1] = voidptr(&control_1)
	args[2] = voidptr(&control_2)
	args[3] = voidptr(&end)
	args[4] = voidptr(&t)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn lerp_angle(from f32, to f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('lerp_angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn inverse_lerp(from f32, to f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('inverse_lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn remap(value f32, istart f32, istop f32, ostart f32, ostop f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('remap')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&istart)
	args[2] = voidptr(&istop)
	args[3] = voidptr(&ostart)
	args[4] = voidptr(&ostop)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn smoothstep(from f32, to f32, x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('smoothstep')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn move_toward(from f32, to f32, delta f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('move_toward')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&delta)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn deg_to_rad(deg f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('deg_to_rad')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deg)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn rad_to_deg(rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('rad_to_deg')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn linear_to_db(lin f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('linear_to_db')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&lin)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn db_to_linear(db f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('db_to_linear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&db)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn wrap(value Variant, min Variant, max Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('wrap')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn wrapi(value i32, min i32, max i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('wrapi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 650295447)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn wrapf(value f32, min f32, max f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('wrapf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn max(arg1 Variant, arg2 Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('max')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3896050336)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&arg1)
	args[1] = voidptr(&arg2)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn maxi(a i32, b i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('maxi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn maxf(a f32, b f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('maxf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn min(arg1 Variant, arg2 Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('min')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3896050336)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&arg1)
	args[1] = voidptr(&arg2)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn mini(a i32, b i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('mini')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn minf(a f32, b f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('minf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn clamp(value Variant, min Variant, max Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn clampi(value i32, min i32, max i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('clampi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 650295447)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn clampf(value f32, min f32, max f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('clampf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn nearest_po2(value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('nearest_po2')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn pingpong(value f32, length f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('pingpong')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&length)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn randomize() {
	fnname := StringName.new('randomize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1691721052)
	f(unsafe { nil }, unsafe { nil }, 0)
}

pub fn randi() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('randi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 701202648)
	f(voidptr(&object_out), unsafe { nil }, 0)
	return object_out
}

pub fn randf() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('randf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2086227845)
	f(voidptr(&object_out), unsafe { nil }, 0)
	return object_out
}

pub fn randi_range(from i32, to i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('randi_range')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn randf_range(from f32, to f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('randf_range')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn randfn(mean f32, deviation f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('randfn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&mean)
	args[1] = voidptr(&deviation)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn seed(base i32) {
	fnname := StringName.new('seed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 382931173)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn rand_from_seed(seed i32) PackedInt64Array {
	mut object_out := PackedInt64Array{}
	fnname := StringName.new('rand_from_seed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1391063685)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&seed)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn weakref(obj Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('weakref')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&obj)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn gdtypeof(variable Variant) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('gdtypeof')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 326422594)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn str(arg1 Variant) String {
	mut object_out := String{}
	fnname := StringName.new('str')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 32569176)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn error_string(error i32) String {
	mut object_out := String{}
	fnname := StringName.new('error_string')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 942708242)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&error)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn print(arg1 Variant) {
	fnname := StringName.new('print')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn print_rich(arg1 Variant) {
	fnname := StringName.new('print_rich')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn printerr(arg1 Variant) {
	fnname := StringName.new('printerr')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn printt(arg1 Variant) {
	fnname := StringName.new('printt')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn prints(arg1 Variant) {
	fnname := StringName.new('prints')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn printraw(arg1 Variant) {
	fnname := StringName.new('printraw')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn print_verbose(arg1 Variant) {
	fnname := StringName.new('print_verbose')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn push_error(arg1 Variant) {
	fnname := StringName.new('push_error')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn push_warning(arg1 Variant) {
	fnname := StringName.new('push_warning')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn var_to_str(variable Variant) String {
	mut object_out := String{}
	fnname := StringName.new('var_to_str')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 866625479)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn str_to_var(gdstring String) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('str_to_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1891498491)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gdstring)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn var_to_bytes(variable Variant) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('var_to_bytes')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2947269930)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn bytes_to_var(bytes PackedByteArray) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('bytes_to_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4249819452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bytes)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn var_to_bytes_with_objects(variable Variant) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('var_to_bytes_with_objects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2947269930)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn bytes_to_var_with_objects(bytes PackedByteArray) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('bytes_to_var_with_objects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4249819452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bytes)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn hash(variable Variant) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 326422594)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn instance_from_id(instance_id i32) Object {
	mut object_out := Object{}
	fnname := StringName.new('instance_from_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1156694636)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&instance_id)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_instance_id_valid(id i32) bool {
	mut object_out := false
	fnname := StringName.new('is_instance_id_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2232439758)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&id)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_instance_valid(instance Variant) bool {
	mut object_out := false
	fnname := StringName.new('is_instance_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 996128841)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&instance)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn rid_allocate_id() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rid_allocate_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 701202648)
	f(voidptr(&object_out), unsafe { nil }, 0)
	return object_out
}

pub fn rid_from_int64(base i32) RID {
	mut object_out := RID{}
	fnname := StringName.new('rid_from_int64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3426892196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_same(a Variant, b Variant) bool {
	mut object_out := false
	fnname := StringName.new('is_same')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1409423524)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

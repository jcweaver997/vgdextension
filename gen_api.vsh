module main

import os
import json

// 64bit
const platform_index = 1

struct ExtensionApiHeader {
pub mut:
	version_major     int
	version_minor     int
	version_patch     int
	version_status    string
	version_build     string
	version_full_name string
}

struct ExtensionApiBuiltinClassSizesSize {
pub mut:
	name string
	size int
}

struct ExtensionApiBuiltinClassSizes {
pub mut:
	build_configuration string
	sizes               []ExtensionApiBuiltinClassSizesSize
}

struct ExtensionApiMemberOffset {
pub mut:
	member string
	offset int
	meta   string
}

struct ExtensionApiBuiltinClassMemberOffsetsClass {
pub mut:
	name    string
	members []ExtensionApiMemberOffset
}

struct ExtensionApiBuiltinClassMemberOffsets {
pub mut:
	build_configuration string
	classes             []ExtensionApiBuiltinClassMemberOffsetsClass
}

struct ExtensionApiEnumValue {
pub mut:
	name  string
	value i64
}

struct ExtensionApiEnum {
pub mut:
	name        string
	is_bitfield bool
	values      []ExtensionApiEnumValue
}

struct ExtensionApiArguments {
pub mut:
	name      string
	type_name string
	meta      string
}

struct ExtensionApiMember {
pub mut:
	name      string
	type_name string
}

struct ExtensionApiUtilityFunctions {
pub mut:
	name        string
	return_type string
	category    string
	is_vararg   bool
	hash        u64
	arguments   []ExtensionApiArguments
}

struct ExtensionApiOperator {
pub mut:
	name        string
	right_type  string
	return_type string
}

struct ExtensionApiBuiltinClassContructor {
pub mut:
	index     int
	arguments []ExtensionApiArguments
}

struct ExtensionApiClassBuiltinMethod {
pub mut:
	name        string
	return_type string
	is_vararg   bool
	is_const    bool
	is_static   bool
	hash        u64
	arguments   []ExtensionApiArguments
}

struct ExtensionApiBuiltinClass {
pub mut:
	name                 string
	indexing_return_type ?string
	is_keyed             bool
	operators            []ExtensionApiOperator
	constructors         []ExtensionApiBuiltinClassContructor
	has_destructor       bool
	methods              []ExtensionApiClassBuiltinMethod
	members              []ExtensionApiMember
	enums                []ExtensionApiEnum
}

struct ExtensionApiClassMethodReturnValue {
pub mut:
	type_name string
	meta string
}

struct ExtensionApiClassMethod {
pub mut:
	name         string
	is_const     bool
	is_vararg    bool
	is_static    bool
	is_virtual   bool
	hash         u64
	return_value ExtensionApiClassMethodReturnValue
	arguments    []ExtensionApiArguments
}

struct ExtensionApiClass {
pub mut:
	name            string
	is_refcounted   bool
	is_instantiable bool
	inherits        string
	api_type        string
	enums           []ExtensionApiEnum
	methods         []ExtensionApiClassMethod
}

struct ExtensionApiSingleton {
pub mut:
	name      string
	type_name string
}

struct ExtensionApiNativeStructure {
pub mut:
	name   string
	format string
}

struct ExtensionApi {
pub mut:
	header                       ExtensionApiHeader
	builtin_class_sizes          []ExtensionApiBuiltinClassSizes
	builtin_class_member_offsets []ExtensionApiBuiltinClassMemberOffsets
	// empty currently
	global_constants  []string
	global_enums      []ExtensionApiEnum
	utility_functions []ExtensionApiUtilityFunctions
	builtin_classes   []ExtensionApiBuiltinClass
	classes           []ExtensionApiClass
	singletons        []ExtensionApiSingleton
	native_structures []ExtensionApiNativeStructure
}

const v_numbers = ['f32', 'f64', 'i8', 'u8', 'i16', 'u16', 'i32', 'u32', 'i64', 'u64', 'int']

const v_keywords = [
	'as',
	'asm',
	'assert',
	'atomic',
	'bool',
	'break',
	'const',
	'continue',
	'char',
	'defer',
	'else',
	'enum',
	'false',
	'fn',
	'for',
	'go',
	'goto',
	'if',
	'import',
	'in',
	'interface',
	'is',
	'isreftype',
	'lock',
	'match',
	'module',
	'mut',
	'none',
	'or',
	'pub',
	'return',
	'rlock',
	'select',
	'shared',
	'sizeof',
	'spawn',
	'static',
	'string',
	'struct',
	'true',
	'type',
	'typeof',
	'union',
	'unsafe',
	'volatile',
	'__global',
	'__offsetof',
	'args',
]

fn main() {
	mut ea := ExtensionApi{}
	ea = json.decode(ExtensionApi, json_replacements(os.read_file('extension_api.json')!))!

	gen_file(ea)!
	os.execute('v fmt -w src/gdextension_api.v')
}

fn gen_file(ea &ExtensionApi) ! {
	mut f := os.File{}
	f = os.create('src/gdextension_api.v')!
	defer {
		f.close()
	}
	f.write_string('module vgdextension\n\n')!
	gen_utility_functions(ea, mut f)!
	gen_builtin_classes(ea)!
	gen_global_enums(ea)!

	gen_classes(ea)!
	gen_native_structures(ea)!
	gen_virtual_bind(ea)!
}

fn json_replacements(original string) string {
	return original.replace('"type"', '"type_name"').replace('"match"', '"matche"').replace('"map"',
		'"mape"').replace('"Variant.Type"', '"VariantType"').replace('"Variant.Operator"',
		'"VariantOperator"')
}

fn virtual_method_name(class_name string, method_name string) string {
	mut mname := method_name.capitalize()
	for mname.contains('_') {
		i := mname.index("_") or { panic(err) }
		mname = "${mname[0..i]}${mname[i+1..].capitalize()}"
	}
	return "I${class_name}${mname}"
}

fn gen_virtual_bind(ea &ExtensionApi)!{
	mut f := os.File{}
	f = os.create('src/gdextension_api_virtual_bind.v')!
	defer {
		f.close()
	}

	f.write_string('module vgdextension\n\n')!

	for class in ea.classes {
		for method in class.methods {
			if !method.is_virtual {
				continue
			}

			virt_name := virtual_method_name(class.name, method.name)
			mut methodname := "virt_${convert_name(method.name)[1..]}"
			f.write_string('fn ${convert_type(class.name, "").to_lower()}_${convert_name(method.name)}[T] (instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {\n')!
			f.write_string('    mut i := &${virt_name}(unsafe{&T(voidptr(instance))})\n')!
			
			for i, arg in method.arguments {
				f.write_string('    ${convert_name(arg.name)} := unsafe{&${convert_type(arg.type_name, arg.meta)}(args[${i}])}\n')!
			}
			if method.return_value.type_name != "" {
				f.write_string('    *(&${convert_type(method.return_value.type_name, method.return_value.meta)}(ret)) := ')!
			}else {
				f.write_string('    ')!
			}
			f.write_string('i.${methodname}(')!
			for i, arg in method.arguments {
				if i != 0 {
					f.write_string(', ')!
				}
				f.write_string('${convert_name(arg.name)}')!
			}
			f.write_string(')\n')!
			f.write_string('}\n\n')!

		
		}
	}

	f.write_string('fn register_virtual_methods[T](mut ci ClassInfo) {\n')!

	for class in ea.classes {
		for method in class.methods {
			if !method.is_virtual {
				continue
			}

			virt_name := virtual_method_name(class.name, method.name)

			f.write_string('    \$if T is ${virt_name} {\n')!
			f.write_string('        ci.virtual_methods["${method.name}"] = ${convert_type(class.name, "").to_lower()}_${convert_name(method.name)}[T]\n')!
			f.write_string('    }\n')!
		}
	}

	f.write_string('}\n')!
}

fn gen_global_enums(ea &ExtensionApi) ! {
	for e in ea.global_enums {
		enum_name := convert_type(e.name, "")
		mut f := os.create('src/gdextension_api_${enum_name}.v')!
		defer {
			f.close()
		}
		f.write_string('module vgdextension\n\n')!
		f.write_string('pub enum ${enum_name} {\n')!
		mut written_values := []i64{cap: e.values.len}
		for v in e.values {
			if v.value !in written_values {
				written_values << v.value
				f.write_string('    ${v.name.to_lower()} = ${v.value}\n')!
			}
		}
		f.write_string('}\n')!
	}
}

fn gen_builtin_classes(ea &ExtensionApi) ! {
	// {
	// 	mut members := ea.builtin_class_member_offsets[platform_index].classes.map(it.name)
	// 	members << ea.builtin_classes.map(it.name)
	// 	for c in ea.builtin_class_sizes[platform_index].sizes {
	// 		if !(c.name in members) && !(c.name in ['f32', 'i32', 'bool']) {
	// 			f.write_string('@[heap]\n')!
	// 			f.write_string('pub struct ${c.name} {\n')!
	// 			f.write_string('        godot_data [${c.size}]u8 // filler\n')!
	// 			f.write_string('}\n\n')!
	// 		}
	// 	}
	// }
	object_names := ea.classes.map(convert_type(it.name, ""))

	for class in ea.builtin_classes {
		match class.name {
			'float', 'int32', 'int', 'bool' { continue }
			else {}
		}
		classname := convert_type(class.name, "")
		mut f := os.create('src/gdextension_api_${classname}.v')!
		defer {
			f.close()
		}
		f.write_string('module vgdextension\n\n')!

		// gen class enums
		{
			for class_enum in class.enums {
				mut written_values := []i64{cap: class_enum.values.len}
				f.write_string('pub enum ${class.name}${class_enum.name} {\n')!
				for value in class_enum.values {
					if value.value !in written_values {
						written_values << value.value
						f.write_string('    ${value.name.to_lower()} = ${value.value}\n')!
					}
				}
				f.write_string('}\n\n')!
			}
		}
		// gen class constants

		// TODO

		f.write_string('@[heap]\n')!
		f.write_string('pub struct ${class.name} {\n')!
		mut defined_size := 0
		if members := ea.builtin_class_member_offsets[platform_index].classes.filter(it.name == class.name)[0] {
			sorted_mem := members.members.sorted(a.offset < b.offset)
			f.write_string('    pub mut:\n')!

			for m in sorted_mem {
				if m.meta in ['int32', 'float'] {
					defined_size += 4
				} else {
					defined_size += ea.builtin_class_sizes[platform_index].sizes.filter(it.name == m.meta).first().size
				}
				f.write_string('        ${m.member} ${convert_type(m.meta, "")} // offset ${m.offset}\n')!
			}
		}
		class_size := ea.builtin_class_sizes[platform_index].sizes.filter(it.name == class.name).first().size
		if defined_size != class_size {
			f.write_string('        godot_data [${class_size - defined_size}]u8 // filler\n')!
		}
		f.write_string('}\n\n')!

		for c in class.constructors {
			f.write_string('pub fn ${class.name}.new${c.index} (')!
			for i, a in c.arguments {
				if i != 0 {
					f.write_string(', ')!
				}
				f.write_string('${a.name} &${convert_type(a.type_name, a.meta)}')!
			}
			f.write_string(') ${class.name} {\n')!
			f.write_string('    mut object_out := ${class.name}{}\n')!
			f.write_string('    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_${class.name.to_lower()}, ${c.index})\n')!
			if c.arguments.len > 0 {
				f.write_string('    mut args := unsafe { [${c.arguments.len}]voidptr{} }\n')!
				for i, a in c.arguments {
					f.write_string('    args[${i}] = ${a.name}\n')!
				}
				f.write_string('    constructor(voidptr(&object_out), voidptr(&args[0]))\n')!
			} else {
				f.write_string('    constructor(voidptr(&object_out), unsafe {nil})\n')!
			}

			f.write_string('    return object_out\n')!

			f.write_string('}\n\n')!
		}

		if class.has_destructor {
			f.write_string('pub fn (c &${class.name}) deinit () {\n')!
			f.write_string('    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_${class.name.to_lower()})\n')!
			f.write_string('    destructor(voidptr(c))\n')!
			f.write_string('}\n\n')!
		}

		for method in class.methods {
			if method.is_static {
				f.write_string('pub fn ${class.name}.${method.name}(')!
			} else if method.is_const {
				f.write_string('pub fn (r &${class.name}) ${method.name}(')!
			} else {
				f.write_string('pub fn (mut r ${class.name}) ${method.name}(')!
			}
			p_base := if method.is_static {
				'unsafe{nil}'
			} else {
				if class.name in object_names {
					'r.ptr'
				} else {
					'voidptr(r)'
				}
			}

			for i, arg in method.arguments {
				if i != 0 {
					f.write_string(', ')!
				}
				mut name := convert_name(arg.name)
				f.write_string('${name} ${convert_type(arg.type_name, arg.meta)}')!
			}
			has_return := method.return_type != ''
			if has_return {
				ret_type := convert_type(method.return_type, "")
				f.write_string(') ${ret_type} {\n')!
				if ret_type in v_numbers {
					f.write_string('    mut object_out := ${ret_type}(0)\n')!
				} else if ret_type == 'bool' {
					f.write_string('    mut object_out := false\n')!
				} else if ret_type == 'voidptr' {
					f.write_string('    mut object_out := unsafe{nil}\n')!
				} else {
					f.write_string('    mut object_out := ${ret_type}{}\n')!
				}

				f.write_string('    fnname := StringName.new("${method.name}")\n')!
				f.write_string('    defer { fnname.deinit() }\n')!

				f.write_string('    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})\n')!

				if method.arguments.len > 0 {
					f.write_string('    mut args := unsafe { [${method.arguments.len}]voidptr{} }\n')!
					for i, a in method.arguments {
						mut name := convert_name(a.name)
						f.write_string('    args[${i}] = voidptr(&${name})\n')!
					}

					f.write_string('    f(${p_base}, voidptr(&args[0]), voidptr(&object_out), ${method.arguments.len})\n')!
				} else {
					f.write_string('    f(${p_base}, unsafe{nil}, voidptr(&object_out), ${method.arguments.len})\n')!
				}

				f.write_string('   return object_out\n')!
			} else {
				f.write_string(') {\n')!
				f.write_string('    fnname := StringName.new("${method.name}")\n')!
				f.write_string('    defer { fnname.deinit() }\n')!

				f.write_string('    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})\n')!
				f.write_string('    f(${p_base}, unsafe{nil}, unsafe{nil}, ${method.arguments.len})\n')!
			}
			f.write_string('}\n')!
		}

		// to var
		f.write_string('pub fn (v &${class.name}) to_var() Variant {\n')!
		f.write_string('    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})\n')!
		f.write_string('    output := Variant{}\n')!
		f.write_string('    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))\n')!
		f.write_string('    return output\n')!
		f.write_string('}\n\n')!

		// set from var
		f.write_string('pub fn (mut t ${class.name}) set_from_var(var &Variant) {\n')!
		f.write_string('    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})\n')!
		f.write_string('    var_to_type(voidptr(&t), var)\n')!
		f.write_string('}\n\n')!

		// index
		if mut ret_type := class.indexing_return_type {
			ret_type = convert_type(ret_type, "")
			f.write_string('pub fn (v &${class.name}) index(i int) ${ret_type} {\n')!
			f.write_string('    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_${class.name.to_lower()})\n')!

			if ret_type in v_numbers {
				f.write_string('    mut output := ${ret_type}(0)\n')!
			} else {
				f.write_string('    mut output := ${ret_type}{}\n')!
			}
			f.write_string('    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))\n')! // GDExtensionConstTypePtr, GDExtensionInt, GDExtensionTypePtr
			f.write_string('    return output')!
			f.write_string('}\n\n')!
		}
	}
}

fn gen_utility_functions(ea &ExtensionApi, mut f os.File) ! {
	// TODO: is_vararg
	for mut fun in &ea.utility_functions {
		fun.name = convert_name(fun.name)
		f.write_string('pub fn ${fun.name}(')!

		for i, arg in fun.arguments {
			if i != 0 {
				f.write_string(', ')!
			}
			mut name := convert_name(arg.name)
			f.write_string('${name} ${convert_type(arg.type_name, arg.meta)}')!
		}

		has_return := fun.return_type != ''
		if has_return {
			ret_type := convert_type(fun.return_type, "")
			f.write_string(') ${ret_type} {\n')!
			if ret_type in v_numbers {
				f.write_string('    mut object_out := ${ret_type}(0)\n')!
			} else if ret_type == 'bool' {
				f.write_string('    mut object_out := false\n')!
			} else if ret_type == 'voidptr' {
				f.write_string('    mut object_out := unsafe{nil}\n')!
			} else {
				f.write_string('    mut object_out := ${ret_type}{}\n')!
			}

			f.write_string('    fnname := StringName.new("${fun.name}")\n')!
			f.write_string('    defer { fnname.deinit() }\n')!

			f.write_string('    f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), ${fun.hash})\n')!

			if fun.arguments.len > 0 {
				f.write_string('    mut args := unsafe { [${fun.arguments.len}]voidptr{} }\n')!
				for i, a in fun.arguments {
					mut name := convert_name(a.name)
					f.write_string('    args[${i}] = voidptr(&${name})\n')!
				}

				f.write_string('    f(voidptr(&object_out), voidptr(&args[0]),  ${fun.arguments.len})\n')!
			} else {
				f.write_string('    f(voidptr(&object_out), unsafe{nil}, ${fun.arguments.len})\n')!
			}

			f.write_string('   return object_out\n')!
		} else {
			f.write_string(') {\n')!
			f.write_string('    fnname := StringName.new("${fun.name}")\n')!
			f.write_string('    defer { fnname.deinit() }\n')!

			f.write_string('    f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), ${fun.hash})\n')!
			if fun.arguments.len > 0 {
				f.write_string('    mut args := unsafe { [${fun.arguments.len}]voidptr{} }\n')!
				for i, a in fun.arguments {
					mut name := convert_name(a.name)
					f.write_string('    args[${i}] = voidptr(&${name})\n')!
				}

				f.write_string('    f(unsafe{nil}, voidptr(&args[0]),  ${fun.arguments.len})\n')!
			} else {
				f.write_string('    f(unsafe{nil}, unsafe{nil}, ${fun.arguments.len})\n')!
			}
		}
		f.write_string('}\n')!
	}
}

fn gen_classes(ea &ExtensionApi) ! {
	object_names := ea.classes.map(convert_type(it.name, ""))
	mut enum_defaults := map[string]string{}
	for e in ea.global_enums {
		name := convert_type(e.name, "")
		enum_defaults[name] = convert_name(e.values.first().name)
	}

	for class in ea.classes {
		for class_enum in class.enums {
			enum_defaults['${class.name}${class_enum.name}'] = convert_name(class_enum.values.first().name)
		}
	}
	for class in ea.builtin_classes {
		for class_enum in class.enums {
			enum_defaults['${class.name}${class_enum.name}'] = convert_name(class_enum.values.first().name)
		}
	}

	for class in ea.classes {
		classname := convert_type(class.name, "")
		mut f := os.create('src/gdextension_api_${classname}.v')!
		defer {
			f.close()
		}
		f.write_string('module vgdextension\n\n')!
		// gen class enums
		{
			for class_enum in class.enums {
				mut written_values := []i64{cap: class_enum.values.len}

				f.write_string('pub enum ${class.name}${class_enum.name} {\n')!
				for value in class_enum.values {
					if value.value !in written_values {
						written_values << value.value
						f.write_string('    ${value.name.to_lower()} = ${value.value}\n')!
					}
				}
				f.write_string('}\n\n')!
			}
		}
		// gen class
		f.write_string('pub struct ${class.name} {\n')!
		if class.inherits != '' {
			f.write_string('    ${convert_type(class.inherits, "")}\n')!
		} else {
			f.write_string('    mut:\n')!
			f.write_string('    ptr voidptr = unsafe{nil}\n')!
		}
		f.write_string('}\n\n')!

		// singleton
		singletons := ea.singletons.filter(it.type_name == class.name)
		if singletons.len > 0 {
			f.write_string('pub fn ${class.name}.get_singleton() ${class.name} {\n')!
			f.write_string('    sn := StringName.new("${class.name}")\n')!
			f.write_string('    defer {sn.deinit()}\n')!
			f.write_string('    o := ${class.name}{\n')!
			f.write_string('        ptr: gdf.global_get_singleton(sn)\n')!
			f.write_string('    }\n')!
			f.write_string('    return o\n')!
			f.write_string('}\n\n')!
		}

		// gen class methods
		for method in class.methods {
			if method.is_vararg {
				// TODO
				continue
			}
			if method.is_virtual {
				virt_name := virtual_method_name(class.name, method.name)
				f.write_string('pub interface ${virt_name} {\n')!
				f.write_string('    mut:\n')!
				mut methodname := "virt_${convert_name(method.name)[1..]}"
				
				f.write_string('    ${methodname}(')!
				for i, arg in method.arguments {
					if i != 0 {
						f.write_string(', ')!
					}

					mut name := convert_name(arg.name)
					f.write_string('${name} ${convert_type(arg.type_name, arg.meta)}')!
				}
				has_return := method.return_value.type_name != ''
				if has_return {
					ret_type := convert_type(method.return_value.type_name, method.return_value.meta)
					f.write_string(') ${ret_type}\n')!
				}else {
					f.write_string(')\n')!
				}
				f.write_string('}\n\n')!
			}

			mut methodname := convert_name(method.name)

			if method.is_static {
				f.write_string('pub fn ${class.name}.${methodname}(')!
			} else if method.is_const {
				f.write_string('pub fn (r &${class.name}) ${methodname}(')!
			} else {
				f.write_string('pub fn (mut r ${class.name}) ${methodname}(')!
			}
			p_base := if method.is_static {
				'unsafe{nil}'
			} else {
				if class.name in object_names {
					'r.ptr'
				} else {
					'voidptr(r)'
				}
			}

			for i, arg in method.arguments {
				if i != 0 {
					f.write_string(', ')!
				}

				mut name := convert_name(arg.name)
				f.write_string('${name} ${convert_type(arg.type_name, arg.meta)}')!
			}
			has_return := method.return_value.type_name != ''
			if has_return {
				ret_type := convert_type(method.return_value.type_name, method.return_value.meta)
				f.write_string(') ${ret_type} {\n')!
				if ret_type in ['f32', 'f64', 'i8', 'u8', 'i16', 'u16', 'i32', 'u32', 'i64', 'u64'] {
					f.write_string('    mut object_out := ${ret_type}(0)\n')!
				} else if ret_type == 'bool' {
					f.write_string('    mut object_out := false\n')!
				} else if method.return_value.type_name.starts_with('enum::')
					|| method.return_value.type_name.starts_with('bitfield::') {
					f.write_string('    mut object_out := ${ret_type}.${enum_defaults[ret_type]}\n')!
				} else if ret_type in ["voidptr"] {
					f.write_string('    mut object_out := unsafe{nil}\n')!
				} else {
					f.write_string('    mut object_out := ${ret_type}{}\n')!
				}

				f.write_string('    classname := StringName.new("${class.name}")\n')!
				f.write_string('    defer { classname.deinit() }\n')!
				f.write_string('    fnname := StringName.new("${method.name}")\n')!
				f.write_string('    defer { fnname.deinit() }\n')!

				f.write_string('    mb := gdf.classdb_get_method_bind(&classname, &fnname, ${method.hash})\n')!

				if method.arguments.len > 0 {
					f.write_string('    mut args := unsafe { [${method.arguments.len}]voidptr{} }\n')!
					for i, a in method.arguments {
						mut name := convert_name(a.name)
						if convert_type(a.type_name, a.meta) in object_names {
							f.write_string('    args[${i}] = ${name}.ptr\n')!
						} else {
							f.write_string('    args[${i}] = unsafe{voidptr(&${name})}\n')!
						}
					}

					f.write_string('    gdf.object_method_bind_ptrcall(mb, ${p_base}, voidptr(&args[0]), voidptr(&object_out))\n')!
				} else {
					f.write_string('    gdf.object_method_bind_ptrcall(mb, ${p_base}, unsafe{nil}, voidptr(&object_out))\n')!
				}

				f.write_string('   return object_out\n')!
			} else {
				f.write_string(') {\n')!
				f.write_string('    classname := StringName.new("${class.name}")\n')!
				f.write_string('    defer { classname.deinit() }\n')!
				f.write_string('    fnname := StringName.new("${method.name}")\n')!
				f.write_string('    defer { fnname.deinit() }\n')!
				f.write_string('    mb := gdf.classdb_get_method_bind(&classname, &fnname, ${method.hash})\n')!
				if method.arguments.len > 0 {
					f.write_string('    mut args := unsafe { [${method.arguments.len}]voidptr{} }\n')!
					for i, a in method.arguments {
						mut name := convert_name(a.name)
						if convert_type(a.type_name, a.meta) in object_names {
							f.write_string('    args[${i}] = ${name}.ptr\n')!
						} else {
							f.write_string('    args[${i}] = unsafe{voidptr(&${name})}\n')!
						}
					}

					f.write_string('    gdf.object_method_bind_ptrcall(mb, ${p_base}, voidptr(&args[0]), unsafe{nil})\n')!
				}else{
					f.write_string('    gdf.object_method_bind_ptrcall(mb, ${p_base}, unsafe{nil}, unsafe{nil})\n')!
				}
				
			}
			f.write_string('}\n')!
		}
	}
}

fn gen_native_structures(ea &ExtensionApi) ! {
	for ns in ea.native_structures {
		name := convert_type(ns.name, "")
		mut f := os.create('src/gdextension_api_${name}.v')!
		defer {
			f.close()
		}
		f.write_string('module vgdextension\n\n')!

		f.write_string('pub struct ${name} {\n')!
		members := ns.format.split(';')
		f.write_string('    pub mut:\n')!
		for member in members {
			segments := member.split('=')
			parts := segments[0].trim_space().split(' ')

			mut mtype := convert_type(parts[..parts.len - 1].join(' '), "")
			mut mname := convert_name(parts.last())
			for mname.starts_with('*') {
				mtype = '&${mtype}'
				mname = mname[1..]
			}

			mut mvalue := (segments[1] or { '' }).trim_space()

			if mvalue.ends_with('f') {
				mvalue = mvalue[..mvalue.len - 1]
			}
			if mvalue.ends_with('.') {
				mvalue = mvalue[..mvalue.len - 1]
			}
			if segments.len > 1 && mvalue != '0' {
				f.write_string('    ${mname} ${mtype} = ${mvalue}\n')!
			} else {
				f.write_string('    ${mname} ${mtype}\n')!
			}
		}
		f.write_string('}\n\n')!
	}
}

fn convert_name(name string) string {
	mut ret := name.to_lower()
	if ret in v_keywords {
		ret = 'gd${ret}'
	}
	if ret.starts_with('_') {
		ret = 'u${ret[1..]}'
	}
	return ret
}

fn convert_type(name string, meta string) string {
	mut ret := name
	if meta != "" {
		ret = meta
	}

	ret = ret.replace('enum::', '')
	ret = ret.replace('.', '')
	ret = ret.replace('bitfield::', '')
	ret = ret.replace('const ', '')
	ret = ret.replace('void*', 'voidptr')
	ret = ret.replace('uint8_t', 'u8')
	ret = ret.replace('int8_t', 'i8')
	ret = ret.replace('uint16_t', 'u16')
	ret = ret.replace('int16_t', 'i16')
	ret = ret.replace('uint32_t', 'u32')
	ret = ret.replace('int32_t', 'i32')
	ret = ret.replace('uint64_t', 'u64')
	ret = ret.replace('int64_t', 'i64')
	ret = ret.replace('uint8', 'u8')
	ret = ret.replace('int8', 'i8')
	ret = ret.replace('uint16', 'u16')
	ret = ret.replace('int16', 'i16')
	ret = ret.replace('uint32', 'u32')
	ret = ret.replace('int32', 'i32')
	ret = ret.replace('uint64', 'u64')
	ret = ret.replace('int64', 'i64')
	ret = ret.replace('double', 'f64')
	ret = ret.replace('real_t', 'f64')

	if ret == 'Error' {
		ret = 'GD${ret}'
	}

	if ret.starts_with('typedarray::') {
		ret = 'Array'
	}
	ret = ret.replace('::', '')

	for ret.ends_with('*') {
		ret = '&${ret[..ret.len - 1]}'
	}

	if ret.replace("&", "") == "int" {
		ret = ret.replace('int', 'i32')
	}

	if ret.replace("&", "") == "float" {
		ret = ret.replace('float', 'f64')
	}

	return ret
}

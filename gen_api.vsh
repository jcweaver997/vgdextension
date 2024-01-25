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
	name           string
	indexing_return_type ?string
	is_keyed       bool
	operators      []ExtensionApiOperator
	constructors   []ExtensionApiBuiltinClassContructor
	has_destructor bool
	methods        []ExtensionApiClassBuiltinMethod
	members        []ExtensionApiMember
}

struct ExtensionApiClassMethodReturnValue {
	pub mut:
	type_name string
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

fn main() {
	mut ea := ExtensionApi{}
	ea = json.decode(ExtensionApi, json_replacements(os.read_file('extension_api.json')!))!
	
	gen_file(ea)!
	os.execute("v fmt -w src/gdextension_api.v")
}

fn gen_file(ea &ExtensionApi)!{
	mut f := os.File{}
	f = os.create('src/gdextension_api.v')!
	defer {
		f.close()
	}
	f.write_string('module vgdextension\n\n')!
	gen_builtin_toplevelfunc(ea, mut f)!
	gen_builtin_classes(ea, mut f)!
	gen_global_enums(ea, mut f)!
	gen_utility_functions(ea, mut f)!
}

fn json_replacements(original string) string {
	return original.replace('"type"', '"type_name"').replace('"float"', '"f32"').replace('"int32"',
		'"i32"').replace('"int"', '"i32"').replace('"match"', '"matche"').replace('"map"', '"mape"').replace('"Variant.Type"', '"VariantType"').replace('"Variant.Operator"', '"VariantOperator"')
}

fn gen_global_enums(ea &ExtensionApi, mut f os.File) ! {
	for e in ea.global_enums {
		f.write_string('pub enum ${e.name} {\n')!
		mut written_values := []i64{cap:e.values.len}
		for v in e.values {
			if v.value !in written_values {
				written_values << v.value
				f.write_string('    ${v.name.to_lower()} = ${v.value}\n')!
			}
		}
		f.write_string('}\n')!
	}
}

fn gen_builtin_toplevelfunc(ea &ExtensionApi, mut f os.File) ! {
}

fn gen_builtin_classes(ea &ExtensionApi, mut f os.File) ! {
	{
		mut members := ea.builtin_class_member_offsets[platform_index].classes.map(it.name)
		members << ea.builtin_classes.map(it.name)
		for c in ea.builtin_class_sizes[platform_index].sizes {
			if !(c.name in members) && !(c.name in ['f32', 'i32', 'bool']) {
				f.write_string('@[heap]\n')!
				f.write_string('pub struct ${c.name} {\n')!
				f.write_string('        godot_data [${c.size}]u8 // filler\n')!
				f.write_string('}\n\n')!
			}
		}
	}


	for class in ea.builtin_classes {
		match class.name {
			'f32', 'i32', 'bool' { continue }
			else {}
		}
		f.write_string('@[heap]\n')!
		f.write_string('pub struct ${class.name} {\n')!
		mut defined_size := 0
		if members := ea.builtin_class_member_offsets[platform_index].classes.filter(it.name == class.name)[0] {
			sorted_mem := members.members.sorted(a.offset < b.offset)
			f.write_string('    pub mut:\n')!
			
			for m in sorted_mem {
				if m.meta in ['f32', 'i32'] {
					defined_size += 4
				}else {
					defined_size += ea.builtin_class_sizes[platform_index].sizes.filter(it.name == m.meta).first().size
				}
				f.write_string('        ${m.member} ${m.meta} // offset ${m.offset}\n')!
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
				f.write_string('${a.name} &${a.type_name}')!
				
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
			}else{
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
			p_base := if method.is_static {"unsafe{nil}"} else {"voidptr(r)"}

			for i, arg in method.arguments {
				if i != 0 {
					f.write_string(', ')!
				}
				mut name := arg.name
				if name in ["char"]{
					name = "gd${name}"
				}
				f.write_string('${name} ${arg.type_name}')!
			}
			has_return := method.return_type != ''
			if has_return {
				f.write_string(') ${method.return_type} {\n')!
				if method.return_type in ['f32', 'i32'] {
					f.write_string('    mut object_out := ${method.return_type}(0)\n')!
				} else if method.return_type == "bool" {
					f.write_string('    mut object_out := false\n')!
				} else {
					f.write_string('    mut object_out := ${method.return_type}{}\n')!
				}
				
				f.write_string('    fnname := StringName.new("${method.name}")\n')!
				f.write_string('    defer { fnname.deinit() }\n')!
				
				f.write_string('    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})\n')!

				
				if method.arguments.len > 0 {
					f.write_string('    mut args := unsafe { [${method.arguments.len}]voidptr{} }\n')!
					for i, a in method.arguments {
						mut name := a.name
						if name in ["char"]{
							name = "gd${name}"
						}
						f.write_string('    args[${i}] = voidptr(&${name})\n')!
					}

					
					f.write_string('    f(${p_base}, voidptr(&args[0]), voidptr(&object_out), ${method.arguments.len})\n')!
				}else {
					f.write_string('    f(${p_base}, unsafe{nil}, voidptr(&object_out), ${method.arguments.len})\n')!
				}
				
				f.write_string('   return object_out\n')!
			}else {
				f.write_string(') {\n')!
				f.write_string('    fnname := StringName.new("${method.name}")\n')!
				f.write_string('    defer { fnname.deinit() }\n')!
				
				f.write_string('    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_${class.name.to_lower()}, voidptr(&fnname), ${method.hash})\n')!
				f.write_string('    f(${p_base}, unsafe{nil}, unsafe{nil}, ${method.arguments.len})\n')!
			}
			f.write_string('}\n')!
		}


		// to var
		f.write_string("pub fn (v &${class.name}) to_var() Variant {\n")!
		f.write_string("    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_${class.name.to_lower()})\n")!
		f.write_string("    output := Variant{}\n")!
		f.write_string("    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))\n")!
		f.write_string("    return output\n")!
		f.write_string('}\n\n')!

		// index
		if ret_type := class.indexing_return_type {
			f.write_string("pub fn (v &${class.name}) index(i int) ${ret_type} {\n")!
			f.write_string("    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_${class.name.to_lower()})\n")!

			if ret_type in ['f32', 'i32', 'int'] {
				f.write_string('    mut output := ${ret_type}(0)\n')!
			} else {
				f.write_string('    mut output := ${ret_type}{}\n')!
			}
			f.write_string("    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))\n")! // GDExtensionConstTypePtr, GDExtensionInt, GDExtensionTypePtr
			f.write_string("    return output")!
			f.write_string('}\n\n')!
		}
	}
}


fn gen_utility_functions(ea &ExtensionApi, mut f os.File) ! {
	// TODO: is_vararg
	for mut fun in &ea.utility_functions {
		if fun.name in ["typeof"] {
			fun.name = "gd${fun.name}"
		}
		f.write_string('pub fn ${fun.name}(')!

		for i, arg in fun.arguments {
			if i != 0 {
				f.write_string(', ')!
			}
			mut name := arg.name
			if name in ["char", "string"]{
				name = "gd${name}"
			}
			f.write_string('${name} ${arg.type_name}')!
		}

		has_return := fun.return_type != ''
		if has_return {
			f.write_string(') ${fun.return_type} {\n')!
			if fun.return_type in ['f32', 'i32'] {
				f.write_string('    mut object_out := ${fun.return_type}(0)\n')!
			} else if fun.return_type == "bool" {
				f.write_string('    mut object_out := false\n')!
			} else {
				f.write_string('    mut object_out := ${fun.return_type}{}\n')!
			}
			
			f.write_string('    fnname := StringName.new("${fun.name}")\n')!
			f.write_string('    defer { fnname.deinit() }\n')!
			
			f.write_string('    f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), ${fun.hash})\n')!

			
			if fun.arguments.len > 0 {
				f.write_string('    mut args := unsafe { [${fun.arguments.len}]voidptr{} }\n')!
				for i, a in fun.arguments {
					mut name := a.name
					if name in ["char", "string"]{
						name = "gd${name}"
					}
					f.write_string('    args[${i}] = voidptr(&${name})\n')!
				}

				
				f.write_string('    f(voidptr(&object_out), voidptr(&args[0]),  ${fun.arguments.len})\n')!
			}else {
				f.write_string('    f(voidptr(&object_out), unsafe{nil}, ${fun.arguments.len})\n')!
			}
			
			f.write_string('   return object_out\n')!
		}else {
			f.write_string(') {\n')!
			f.write_string('    fnname := StringName.new("${fun.name}")\n')!
			f.write_string('    defer { fnname.deinit() }\n')!
			
			f.write_string('    f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), ${fun.hash})\n')!
			if fun.arguments.len > 0 {
				f.write_string('    mut args := unsafe { [${fun.arguments.len}]voidptr{} }\n')!
				for i, a in fun.arguments {
					mut name := a.name
					if name in ["char", "string"]{
						name = "gd${name}"
					}
					f.write_string('    args[${i}] = voidptr(&${name})\n')!
				}

				
				f.write_string('    f(unsafe{nil}, voidptr(&args[0]),  ${fun.arguments.len})\n')!
			}else {
				f.write_string('    f(unsafe{nil}, unsafe{nil}, ${fun.arguments.len})\n')!
			}
		}
		f.write_string('}\n')!
		
	}
}

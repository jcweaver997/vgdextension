module vgdextension

import log

__global (
	gdf = &GdExtensionInterfaceFunctions(unsafe { nil })
)

pub fn String.new(str string) String {
	output := String{}
	gdf.string_new_with_utf8_chars_and_len(voidptr(&output), str.str, str.len)
	return output
}

pub fn StringName.new(str string) StringName {
	s := String.new(str)
	defer {
		s.deinit()
	}
	return StringName.new2(s)
}

pub fn NodePath.new(path string) NodePath {
	s := String.new(path)
	defer {
		s.deinit()
	}
	return NodePath.new2(s)
}

pub fn (s &StringName) to_v() string {
	pba := s.to_utf8_buffer()
	defer {
		pba.deinit()
	}
	length := pba.size()
	mut array := []u8{cap: int(length)}
	for i in 0 .. length {
		array << u8(pba.index(i))
	}
	return array.bytestr()
}

pub fn (s &String) to_v() string {
	pba := s.to_utf8_buffer()
	defer {
		pba.deinit()
	}
	length := pba.size()
	mut array := []u8{cap: int(length)}
	for i in 0 .. length {
		array << u8(pba.index(i))
	}
	return array.bytestr()
}

pub struct GodotLogger {
	mut:
	level log.Level
}

pub fn (l GodotLogger) get_level() log.Level {
	return l.level
}

pub fn (mut l GodotLogger) fatal(s string) {
	str := String.new(s)
	defer { str.deinit() }
	v := str.to_var()
	defer { v.deinit() }
	printerr(v)
}

pub fn (mut l GodotLogger) error(s string) {
	str := String.new(s)
	defer { str.deinit() }
	v := str.to_var()
	defer { v.deinit() }
	printerr(v)
}

pub fn (mut l GodotLogger) warn(s string) {
	str := String.new(s)
	defer { str.deinit() }
	v := str.to_var()
	defer { v.deinit() }
	print(v)
}

pub fn (mut l GodotLogger) info(s string) {
	str := String.new(s)
	defer { str.deinit() }
	v := str.to_var()
	defer { v.deinit() }
	print(v)
}

pub fn (mut l GodotLogger) debug(s string) {
	str := String.new(s)
	defer { str.deinit() }
	v := str.to_var()
	defer { v.deinit() }
	print(v)
}

pub fn (mut l GodotLogger) set_level(level log.Level) {
	l.level = level
}

pub fn (mut l GodotLogger) set_always_flush(should_flush bool) {
}

pub fn (mut l GodotLogger) free() {
}

@[heap]
pub struct GdExtensionInterfaceFunctions {
pub:
	gpaddr                                             fn (&i8) GDExtensionInterfaceFunctionPtr                          @[required]
	clp                                                GDExtensionClassLibraryPtr                                        @[required]
	get_godot_version                                  GDExtensionInterfaceGetGodotVersion                               @[required]
	mem_alloc                                          GDExtensionInterfaceMemAlloc                                      @[required]
	mem_realloc                                        GDExtensionInterfaceMemRealloc                                    @[required]
	mem_free                                           GDExtensionInterfaceMemFree                                       @[required]
	print_error                                        GDExtensionInterfacePrintError                                    @[required]
	print_error_with_message                           GDExtensionInterfacePrintErrorWithMessage                         @[required]
	print_warning                                      GDExtensionInterfacePrintWarning                                  @[required]
	print_warning_with_message                         GDExtensionInterfacePrintWarningWithMessage                       @[required]
	print_script_error                                 GDExtensionInterfacePrintScriptError                              @[required]
	print_script_error_with_message                    GDExtensionInterfacePrintScriptErrorWithMessage                   @[required]
	get_native_struct_size                             GDExtensionInterfaceGetNativeStructSize                           @[required]
	variant_new_copy                                   GDExtensionInterfaceVariantNewCopy                                @[required]
	variant_new_nil                                    GDExtensionInterfaceVariantNewNil                                 @[required]
	variant_destroy                                    GDExtensionInterfaceVariantDestroy                                @[required]
	variant_call                                       GDExtensionInterfaceVariantCall                                   @[required]
	variant_call_static                                GDExtensionInterfaceVariantCallStatic                             @[required]
	variant_evaluate                                   GDExtensionInterfaceVariantEvaluate                               @[required]
	variant_set                                        GDExtensionInterfaceVariantSet                                    @[required]
	variant_set_named                                  GDExtensionInterfaceVariantSetNamed                               @[required]
	variant_set_keyed                                  GDExtensionInterfaceVariantSetKeyed                               @[required]
	variant_set_indexed                                GDExtensionInterfaceVariantSetIndexed                             @[required]
	variant_get                                        GDExtensionInterfaceVariantGet                                    @[required]
	variant_get_named                                  GDExtensionInterfaceVariantGetNamed                               @[required]
	variant_get_keyed                                  GDExtensionInterfaceVariantGetKeyed                               @[required]
	variant_get_indexed                                GDExtensionInterfaceVariantGetIndexed                             @[required]
	variant_iter_init                                  GDExtensionInterfaceVariantIterInit                               @[required]
	variant_iter_next                                  GDExtensionInterfaceVariantIterNext                               @[required]
	variant_iter_get                                   GDExtensionInterfaceVariantIterGet                                @[required]
	variant_hash                                       GDExtensionInterfaceVariantHash                                   @[required]
	variant_recursive_hash                             GDExtensionInterfaceVariantRecursiveHash                          @[required]
	variant_hash_compare                               GDExtensionInterfaceVariantHashCompare                            @[required]
	variant_booleanize                                 GDExtensionInterfaceVariantBooleanize                             @[required]
	variant_duplicate                                  GDExtensionInterfaceVariantDuplicate                              @[required]
	variant_stringify                                  GDExtensionInterfaceVariantStringify                              @[required]
	variant_get_type                                   GDExtensionInterfaceVariantGetType                                @[required]
	variant_has_method                                 GDExtensionInterfaceVariantHasMethod                              @[required]
	variant_has_member                                 GDExtensionInterfaceVariantHasMember                              @[required]
	variant_has_key                                    GDExtensionInterfaceVariantHasKey                                 @[required]
	variant_get_type_name                              GDExtensionInterfaceVariantGetTypeName                            @[required]
	variant_can_convert                                GDExtensionInterfaceVariantCanConvert                             @[required]
	variant_can_convert_strict                         GDExtensionInterfaceVariantCanConvertStrict                       @[required]
	get_variant_from_type_constructor                  GDExtensionInterfaceGetVariantFromTypeConstructor                 @[required]
	get_variant_to_type_constructor                    GDExtensionInterfaceGetVariantToTypeConstructor                   @[required]
	variant_get_ptr_operator_evaluator                 GDExtensionInterfaceVariantGetPtrOperatorEvaluator                @[required]
	variant_get_ptr_builtin_method                     GDExtensionInterfaceVariantGetPtrBuiltinMethod                    @[required]
	variant_get_ptr_constructor                        GDExtensionInterfaceVariantGetPtrConstructor                      @[required]
	variant_get_ptr_destructor                         GDExtensionInterfaceVariantGetPtrDestructor                       @[required]
	variant_construct                                  GDExtensionInterfaceVariantConstruct                              @[required]
	variant_get_ptr_setter                             GDExtensionInterfaceVariantGetPtrSetter                           @[required]
	variant_get_ptr_getter                             GDExtensionInterfaceVariantGetPtrGetter                           @[required]
	variant_get_ptr_indexed_setter                     GDExtensionInterfaceVariantGetPtrIndexedSetter                    @[required]
	variant_get_ptr_indexed_getter                     GDExtensionInterfaceVariantGetPtrIndexedGetter                    @[required]
	variant_get_ptr_keyed_setter                       GDExtensionInterfaceVariantGetPtrKeyedSetter                      @[required]
	variant_get_ptr_keyed_getter                       GDExtensionInterfaceVariantGetPtrKeyedGetter                      @[required]
	variant_get_ptr_keyed_checker                      GDExtensionInterfaceVariantGetPtrKeyedChecker                     @[required]
	variant_get_constant_value                         GDExtensionInterfaceVariantGetConstantValue                       @[required]
	variant_get_ptr_utility_function                   GDExtensionInterfaceVariantGetPtrUtilityFunction                  @[required]
	string_new_with_latin1_chars                       GDExtensionInterfaceStringNewWithLatin1Chars                      @[required]
	string_new_with_utf8_chars                         GDExtensionInterfaceStringNewWithUtf8Chars                        @[required]
	string_new_with_utf16_chars                        GDExtensionInterfaceStringNewWithUtf16Chars                       @[required]
	string_new_with_utf32_chars                        GDExtensionInterfaceStringNewWithUtf32Chars                       @[required]
	string_new_with_wide_chars                         GDExtensionInterfaceStringNewWithWideChars                        @[required]
	string_new_with_latin1_chars_and_len               GDExtensionInterfaceStringNewWithLatin1CharsAndLen                @[required]
	string_new_with_utf8_chars_and_len                 GDExtensionInterfaceStringNewWithUtf8CharsAndLen                  @[required]
	string_new_with_utf16_chars_and_len                GDExtensionInterfaceStringNewWithUtf16CharsAndLen                 @[required]
	string_new_with_utf32_chars_and_len                GDExtensionInterfaceStringNewWithUtf32CharsAndLen                 @[required]
	string_new_with_wide_chars_and_len                 GDExtensionInterfaceStringNewWithWideCharsAndLen                  @[required]
	string_to_latin1_chars                             GDExtensionInterfaceStringToLatin1Chars                           @[required]
	string_to_utf8_chars                               GDExtensionInterfaceStringToUtf8Chars                             @[required]
	string_to_utf16_chars                              GDExtensionInterfaceStringToUtf16Chars                            @[required]
	string_to_utf32_chars                              GDExtensionInterfaceStringToUtf32Chars                            @[required]
	string_to_wide_chars                               GDExtensionInterfaceStringToWideChars                             @[required]
	string_operator_index                              GDExtensionInterfaceStringOperatorIndex                           @[required]
	string_operator_index_const                        GDExtensionInterfaceStringOperatorIndexConst                      @[required]
	string_operator_plus_eq_string                     GDExtensionInterfaceStringOperatorPlusEqString                    @[required]
	string_operator_plus_eq_char                       GDExtensionInterfaceStringOperatorPlusEqChar                      @[required]
	string_operator_plus_eq_cstr                       GDExtensionInterfaceStringOperatorPlusEqCstr                      @[required]
	string_operator_plus_eq_wcstr                      GDExtensionInterfaceStringOperatorPlusEqWcstr                     @[required]
	string_operator_plus_eq_c32str                     GDExtensionInterfaceStringOperatorPlusEqC32str                    @[required]
	xml_parser_open_buffer                             GDExtensionInterfaceXmlParserOpenBuffer                           @[required]
	file_access_store_buffer                           GDExtensionInterfaceFileAccessStoreBuffer                         @[required]
	file_access_get_buffer                             GDExtensionInterfaceFileAccessGetBuffer                           @[required]
	packed_byte_array_operator_index_const             GDExtensionInterfacePackedByteArrayOperatorIndexConst             @[required]
	packed_color_array_operator_index                  GDExtensionInterfacePackedColorArrayOperatorIndex                 @[required]
	packed_color_array_operator_index_const            GDExtensionInterfacePackedColorArrayOperatorIndexConst            @[required]
	packed_float32_array_operator_index                GDExtensionInterfacePackedFloat32ArrayOperatorIndex               @[required]
	packed_float32_array_operator_index_const          GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst          @[required]
	packed_float64_array_operator_index                GDExtensionInterfacePackedFloat64ArrayOperatorIndex               @[required]
	packed_float64_array_operator_index_const          GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst          @[required]
	packed_int32_array_operator_index                  GDExtensionInterfacePackedInt32ArrayOperatorIndex                 @[required]
	packed_int32_array_operator_index_const            GDExtensionInterfacePackedInt32ArrayOperatorIndexConst            @[required]
	packed_int64_array_operator_index                  GDExtensionInterfacePackedInt64ArrayOperatorIndex                 @[required]
	packed_int64_array_operator_index_const            GDExtensionInterfacePackedInt64ArrayOperatorIndexConst            @[required]
	packed_string_array_operator_index                 GDExtensionInterfacePackedStringArrayOperatorIndex                @[required]
	packed_string_array_operator_index_const           GDExtensionInterfacePackedStringArrayOperatorIndexConst           @[required]
	packed_vector2_array_operator_index                GDExtensionInterfacePackedVector2ArrayOperatorIndex               @[required]
	packed_vector2_array_operator_index_const          GDExtensionInterfacePackedVector2ArrayOperatorIndexConst          @[required]
	packed_vector3_array_operator_index                GDExtensionInterfacePackedVector3ArrayOperatorIndex               @[required]
	packed_vector3_array_operator_index_const          GDExtensionInterfacePackedVector3ArrayOperatorIndexConst          @[required]
	array_operator_index                               GDExtensionInterfaceArrayOperatorIndex                            @[required]
	array_operator_index_const                         GDExtensionInterfaceArrayOperatorIndexConst                       @[required]
	array_ref                                          GDExtensionInterfaceArrayRef                                      @[required]
	array_set_typed                                    GDExtensionInterfaceArraySetTyped                                 @[required]
	dictionary_operator_index                          GDExtensionInterfaceDictionaryOperatorIndex                       @[required]
	dictionary_operator_index_const                    GDExtensionInterfaceDictionaryOperatorIndexConst                  @[required]
	object_method_bind_call                            GDExtensionInterfaceObjectMethodBindCall                          @[required]
	object_method_bind_ptrcall                         GDExtensionInterfaceObjectMethodBindPtrcall                       @[required]
	object_destroy                                     GDExtensionInterfaceObjectDestroy                                 @[required]
	global_get_singleton                               GDExtensionInterfaceGlobalGetSingleton                            @[required]
	object_get_instance_binding                        GDExtensionInterfaceObjectGetInstanceBinding                      @[required]
	object_set_instance_binding                        GDExtensionInterfaceObjectSetInstanceBinding                      @[required]
	object_set_instance                                GDExtensionInterfaceObjectSetInstance                             @[required]
	object_get_class_name                              GDExtensionInterfaceObjectGetClassName                            @[required]
	object_cast_to                                     GDExtensionInterfaceObjectCastTo                                  @[required]
	object_get_instance_from_id                        GDExtensionInterfaceObjectGetInstanceFromId                       @[required]
	object_get_instance_id                             GDExtensionInterfaceObjectGetInstanceId                           @[required]
	ref_get_object                                     GDExtensionInterfaceRefGetObject                                  @[required]
	ref_set_object                                     GDExtensionInterfaceRefSetObject                                  @[required]
	script_instance_create                             GDExtensionInterfaceScriptInstanceCreate                          @[required]
	classdb_construct_object                           GDExtensionInterfaceClassdbConstructObject                        @[required]
	classdb_get_method_bind                            GDExtensionInterfaceClassdbGetMethodBind                          @[required]
	classdb_get_class_tag                              GDExtensionInterfaceClassdbGetClassTag                            @[required]
	classdb_register_extension_class                   GDExtensionInterfaceClassdbRegisterExtensionClass                 @[required]
	classdb_register_extension_class_method            GDExtensionInterfaceClassdbRegisterExtensionClassMethod           @[required]
	classdb_register_extension_class_integer_constant  GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant  @[required]
	classdb_register_extension_class_property          GDExtensionInterfaceClassdbRegisterExtensionClassProperty         @[required]
	classdb_register_extension_class_property_group    GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup    @[required]
	classdb_register_extension_class_property_subgroup GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup @[required]
	classdb_register_extension_class_signal            GDExtensionInterfaceClassdbRegisterExtensionClassSignal           @[required]
	classdb_unregister_extension_class                 GDExtensionInterfaceClassdbUnregisterExtensionClass               @[required]
	get_library_path                                   GDExtensionInterfaceGetLibraryPath                                @[required]
	editor_add_plugin                                  GDExtensionInterfaceEditorAddPlugin                               @[required]
	editor_remove_plugin                               GDExtensionInterfaceEditorRemovePlugin                            @[required]
}

fn C._vinit(int, voidptr)

pub fn setup_lib(gpaddr fn (&i8) GDExtensionInterfaceFunctionPtr, clp GDExtensionClassLibraryPtr) {
	// Call vinit to setup V for windows
	$if windows {
		C._vinit(0, unsafe{nil})
	}

	gdf = &GdExtensionInterfaceFunctions{
		gpaddr: gpaddr
		clp: clp
		get_godot_version: unsafe { GDExtensionInterfaceGetGodotVersion(gpaddr(c'get_godot_version')) }
		mem_alloc: unsafe { GDExtensionInterfaceMemAlloc(gpaddr(c'mem_alloc')) }
		mem_realloc: unsafe { GDExtensionInterfaceMemRealloc(gpaddr(c'mem_realloc')) }
		mem_free: unsafe { GDExtensionInterfaceMemFree(gpaddr(c'mem_free')) }
		print_error: unsafe { GDExtensionInterfacePrintError(gpaddr(c'print_error')) }
		print_error_with_message: unsafe { GDExtensionInterfacePrintErrorWithMessage(gpaddr(c'print_error_with_message')) }
		print_warning: unsafe { GDExtensionInterfacePrintWarning(gpaddr(c'print_warning')) }
		print_warning_with_message: unsafe { GDExtensionInterfacePrintWarningWithMessage(gpaddr(c'print_warning_with_message')) }
		print_script_error: unsafe { GDExtensionInterfacePrintScriptError(gpaddr(c'print_script_error')) }
		print_script_error_with_message: unsafe { GDExtensionInterfacePrintScriptErrorWithMessage(gpaddr(c'print_script_error_with_message')) }
		get_native_struct_size: unsafe { GDExtensionInterfaceGetNativeStructSize(gpaddr(c'get_native_struct_size')) }
		variant_new_copy: unsafe { GDExtensionInterfaceVariantNewCopy(gpaddr(c'variant_new_copy')) }
		variant_new_nil: unsafe { GDExtensionInterfaceVariantNewNil(gpaddr(c'variant_new_nil')) }
		variant_destroy: unsafe { GDExtensionInterfaceVariantDestroy(gpaddr(c'variant_destroy')) }
		variant_call: unsafe { GDExtensionInterfaceVariantCall(gpaddr(c'variant_call')) }
		variant_call_static: unsafe { GDExtensionInterfaceVariantCallStatic(gpaddr(c'variant_call_static')) }
		variant_evaluate: unsafe { GDExtensionInterfaceVariantEvaluate(gpaddr(c'variant_evaluate')) }
		variant_set: unsafe { GDExtensionInterfaceVariantSet(gpaddr(c'variant_set')) }
		variant_set_named: unsafe { GDExtensionInterfaceVariantSetNamed(gpaddr(c'variant_set_named')) }
		variant_set_keyed: unsafe { GDExtensionInterfaceVariantSetKeyed(gpaddr(c'variant_set_keyed')) }
		variant_set_indexed: unsafe { GDExtensionInterfaceVariantSetIndexed(gpaddr(c'variant_set_indexed')) }
		variant_get: unsafe { GDExtensionInterfaceVariantGet(gpaddr(c'variant_get')) }
		variant_get_named: unsafe { GDExtensionInterfaceVariantGetNamed(gpaddr(c'variant_get_named')) }
		variant_get_keyed: unsafe { GDExtensionInterfaceVariantGetKeyed(gpaddr(c'variant_get_keyed')) }
		variant_get_indexed: unsafe { GDExtensionInterfaceVariantGetIndexed(gpaddr(c'variant_get_indexed')) }
		variant_iter_init: unsafe { GDExtensionInterfaceVariantIterInit(gpaddr(c'variant_iter_init')) }
		variant_iter_next: unsafe { GDExtensionInterfaceVariantIterNext(gpaddr(c'variant_iter_next')) }
		variant_iter_get: unsafe { GDExtensionInterfaceVariantIterGet(gpaddr(c'variant_iter_get')) }
		variant_hash: unsafe { GDExtensionInterfaceVariantHash(gpaddr(c'variant_hash')) }
		variant_recursive_hash: unsafe { GDExtensionInterfaceVariantRecursiveHash(gpaddr(c'variant_recursive_hash')) }
		variant_hash_compare: unsafe { GDExtensionInterfaceVariantHashCompare(gpaddr(c'variant_hash_compare')) }
		variant_booleanize: unsafe { GDExtensionInterfaceVariantBooleanize(gpaddr(c'variant_booleanize')) }
		variant_duplicate: unsafe { GDExtensionInterfaceVariantDuplicate(gpaddr(c'variant_duplicate')) }
		variant_stringify: unsafe { GDExtensionInterfaceVariantStringify(gpaddr(c'variant_stringify')) }
		variant_get_type: unsafe { GDExtensionInterfaceVariantGetType(gpaddr(c'variant_get_type')) }
		variant_has_method: unsafe { GDExtensionInterfaceVariantHasMethod(gpaddr(c'variant_has_method')) }
		variant_has_member: unsafe { GDExtensionInterfaceVariantHasMember(gpaddr(c'variant_has_member')) }
		variant_has_key: unsafe { GDExtensionInterfaceVariantHasKey(gpaddr(c'variant_has_key')) }
		variant_get_type_name: unsafe { GDExtensionInterfaceVariantGetTypeName(gpaddr(c'variant_get_type_name')) }
		variant_can_convert: unsafe { GDExtensionInterfaceVariantCanConvert(gpaddr(c'variant_can_convert')) }
		variant_can_convert_strict: unsafe { GDExtensionInterfaceVariantCanConvertStrict(gpaddr(c'variant_can_convert_strict')) }
		get_variant_from_type_constructor: unsafe { GDExtensionInterfaceGetVariantFromTypeConstructor(gpaddr(c'get_variant_from_type_constructor')) }
		get_variant_to_type_constructor: unsafe { GDExtensionInterfaceGetVariantToTypeConstructor(gpaddr(c'get_variant_to_type_constructor')) }
		variant_get_ptr_operator_evaluator: unsafe { GDExtensionInterfaceVariantGetPtrOperatorEvaluator(gpaddr(c'variant_get_ptr_operator_evaluator')) }
		variant_get_ptr_builtin_method: unsafe { GDExtensionInterfaceVariantGetPtrBuiltinMethod(gpaddr(c'variant_get_ptr_builtin_method')) }
		variant_get_ptr_constructor: unsafe { GDExtensionInterfaceVariantGetPtrConstructor(gpaddr(c'variant_get_ptr_constructor')) }
		variant_get_ptr_destructor: unsafe { GDExtensionInterfaceVariantGetPtrDestructor(gpaddr(c'variant_get_ptr_destructor')) }
		variant_construct: unsafe { GDExtensionInterfaceVariantConstruct(gpaddr(c'variant_construct')) }
		variant_get_ptr_setter: unsafe { GDExtensionInterfaceVariantGetPtrSetter(gpaddr(c'variant_get_ptr_setter')) }
		variant_get_ptr_getter: unsafe { GDExtensionInterfaceVariantGetPtrGetter(gpaddr(c'variant_get_ptr_getter')) }
		variant_get_ptr_indexed_setter: unsafe { GDExtensionInterfaceVariantGetPtrIndexedSetter(gpaddr(c'variant_get_ptr_indexed_setter')) }
		variant_get_ptr_indexed_getter: unsafe { GDExtensionInterfaceVariantGetPtrIndexedGetter(gpaddr(c'variant_get_ptr_indexed_getter')) }
		variant_get_ptr_keyed_setter: unsafe { GDExtensionInterfaceVariantGetPtrKeyedSetter(gpaddr(c'variant_get_ptr_keyed_setter')) }
		variant_get_ptr_keyed_getter: unsafe { GDExtensionInterfaceVariantGetPtrKeyedGetter(gpaddr(c'variant_get_ptr_keyed_getter')) }
		variant_get_ptr_keyed_checker: unsafe { GDExtensionInterfaceVariantGetPtrKeyedChecker(gpaddr(c'variant_get_ptr_keyed_checker')) }
		variant_get_constant_value: unsafe { GDExtensionInterfaceVariantGetConstantValue(gpaddr(c'variant_get_constant_value')) }
		variant_get_ptr_utility_function: unsafe { GDExtensionInterfaceVariantGetPtrUtilityFunction(gpaddr(c'variant_get_ptr_utility_function')) }
		string_new_with_latin1_chars: unsafe { GDExtensionInterfaceStringNewWithLatin1Chars(gpaddr(c'string_new_with_latin1_chars')) }
		string_new_with_utf8_chars: unsafe { GDExtensionInterfaceStringNewWithUtf8Chars(gpaddr(c'string_new_with_utf8_chars')) }
		string_new_with_utf16_chars: unsafe { GDExtensionInterfaceStringNewWithUtf16Chars(gpaddr(c'string_new_with_utf16_chars')) }
		string_new_with_utf32_chars: unsafe { GDExtensionInterfaceStringNewWithUtf32Chars(gpaddr(c'string_new_with_utf32_chars')) }
		string_new_with_wide_chars: unsafe { GDExtensionInterfaceStringNewWithWideChars(gpaddr(c'string_new_with_wide_chars')) }
		string_new_with_latin1_chars_and_len: unsafe { GDExtensionInterfaceStringNewWithLatin1CharsAndLen(gpaddr(c'string_new_with_latin1_chars_and_len')) }
		string_new_with_utf8_chars_and_len: unsafe { GDExtensionInterfaceStringNewWithUtf8CharsAndLen(gpaddr(c'string_new_with_utf8_chars_and_len')) }
		string_new_with_utf16_chars_and_len: unsafe { GDExtensionInterfaceStringNewWithUtf16CharsAndLen(gpaddr(c'string_new_with_utf16_chars_and_len')) }
		string_new_with_utf32_chars_and_len: unsafe { GDExtensionInterfaceStringNewWithUtf32CharsAndLen(gpaddr(c'string_new_with_utf32_chars_and_len')) }
		string_new_with_wide_chars_and_len: unsafe { GDExtensionInterfaceStringNewWithWideCharsAndLen(gpaddr(c'string_new_with_wide_chars_and_len')) }
		string_to_latin1_chars: unsafe { GDExtensionInterfaceStringToLatin1Chars(gpaddr(c'string_to_latin1_chars')) }
		string_to_utf8_chars: unsafe { GDExtensionInterfaceStringToUtf8Chars(gpaddr(c'string_to_utf8_chars')) }
		string_to_utf16_chars: unsafe { GDExtensionInterfaceStringToUtf16Chars(gpaddr(c'string_to_utf16_chars')) }
		string_to_utf32_chars: unsafe { GDExtensionInterfaceStringToUtf32Chars(gpaddr(c'string_to_utf32_chars')) }
		string_to_wide_chars: unsafe { GDExtensionInterfaceStringToWideChars(gpaddr(c'string_to_wide_chars')) }
		string_operator_index: unsafe { GDExtensionInterfaceStringOperatorIndex(gpaddr(c'string_operator_index')) }
		string_operator_index_const: unsafe { GDExtensionInterfaceStringOperatorIndexConst(gpaddr(c'string_operator_index_const')) }
		string_operator_plus_eq_string: unsafe { GDExtensionInterfaceStringOperatorPlusEqString(gpaddr(c'string_operator_plus_eq_string')) }
		string_operator_plus_eq_char: unsafe { GDExtensionInterfaceStringOperatorPlusEqChar(gpaddr(c'string_operator_plus_eq_char')) }
		string_operator_plus_eq_cstr: unsafe { GDExtensionInterfaceStringOperatorPlusEqCstr(gpaddr(c'string_operator_plus_eq_cstr')) }
		string_operator_plus_eq_wcstr: unsafe { GDExtensionInterfaceStringOperatorPlusEqWcstr(gpaddr(c'string_operator_plus_eq_wcstr')) }
		string_operator_plus_eq_c32str: unsafe { GDExtensionInterfaceStringOperatorPlusEqC32str(gpaddr(c'string_operator_plus_eq_c32str')) }
		xml_parser_open_buffer: unsafe { GDExtensionInterfaceXmlParserOpenBuffer(gpaddr(c'xml_parser_open_buffer')) }
		file_access_store_buffer: unsafe { GDExtensionInterfaceFileAccessStoreBuffer(gpaddr(c'file_access_store_buffer')) }
		file_access_get_buffer: unsafe { GDExtensionInterfaceFileAccessGetBuffer(gpaddr(c'file_access_get_buffer')) }
		packed_byte_array_operator_index_const: unsafe { GDExtensionInterfacePackedByteArrayOperatorIndexConst(gpaddr(c'packed_byte_array_operator_index_const')) }
		packed_color_array_operator_index: unsafe { GDExtensionInterfacePackedColorArrayOperatorIndex(gpaddr(c'packed_color_array_operator_index')) }
		packed_color_array_operator_index_const: unsafe { GDExtensionInterfacePackedColorArrayOperatorIndexConst(gpaddr(c'packed_color_array_operator_index_const')) }
		packed_float32_array_operator_index: unsafe { GDExtensionInterfacePackedFloat32ArrayOperatorIndex(gpaddr(c'packed_float32_array_operator_index')) }
		packed_float32_array_operator_index_const: unsafe { GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst(gpaddr(c'packed_float32_array_operator_index_const')) }
		packed_float64_array_operator_index: unsafe { GDExtensionInterfacePackedFloat64ArrayOperatorIndex(gpaddr(c'packed_float64_array_operator_index')) }
		packed_float64_array_operator_index_const: unsafe { GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst(gpaddr(c'packed_float64_array_operator_index_const')) }
		packed_int32_array_operator_index: unsafe { GDExtensionInterfacePackedInt32ArrayOperatorIndex(gpaddr(c'packed_int32_array_operator_index')) }
		packed_int32_array_operator_index_const: unsafe { GDExtensionInterfacePackedInt32ArrayOperatorIndexConst(gpaddr(c'packed_int32_array_operator_index_const')) }
		packed_int64_array_operator_index: unsafe { GDExtensionInterfacePackedInt64ArrayOperatorIndex(gpaddr(c'packed_int64_array_operator_index')) }
		packed_int64_array_operator_index_const: unsafe { GDExtensionInterfacePackedInt64ArrayOperatorIndexConst(gpaddr(c'packed_int64_array_operator_index_const')) }
		packed_string_array_operator_index: unsafe { GDExtensionInterfacePackedStringArrayOperatorIndex(gpaddr(c'packed_string_array_operator_index')) }
		packed_string_array_operator_index_const: unsafe { GDExtensionInterfacePackedStringArrayOperatorIndexConst(gpaddr(c'packed_string_array_operator_index_const')) }
		packed_vector2_array_operator_index: unsafe { GDExtensionInterfacePackedVector2ArrayOperatorIndex(gpaddr(c'packed_vector2_array_operator_index')) }
		packed_vector2_array_operator_index_const: unsafe { GDExtensionInterfacePackedVector2ArrayOperatorIndexConst(gpaddr(c'packed_vector2_array_operator_index_const')) }
		packed_vector3_array_operator_index: unsafe { GDExtensionInterfacePackedVector3ArrayOperatorIndex(gpaddr(c'packed_vector3_array_operator_index')) }
		packed_vector3_array_operator_index_const: unsafe { GDExtensionInterfacePackedVector3ArrayOperatorIndexConst(gpaddr(c'packed_vector3_array_operator_index_const')) }
		array_operator_index: unsafe { GDExtensionInterfaceArrayOperatorIndex(gpaddr(c'array_operator_index')) }
		array_operator_index_const: unsafe { GDExtensionInterfaceArrayOperatorIndexConst(gpaddr(c'array_operator_index_const')) }
		array_ref: unsafe { GDExtensionInterfaceArrayRef(gpaddr(c'array_ref')) }
		array_set_typed: unsafe { GDExtensionInterfaceArraySetTyped(gpaddr(c'array_set_typed')) }
		dictionary_operator_index: unsafe { GDExtensionInterfaceDictionaryOperatorIndex(gpaddr(c'dictionary_operator_index')) }
		dictionary_operator_index_const: unsafe { GDExtensionInterfaceDictionaryOperatorIndexConst(gpaddr(c'dictionary_operator_index_const')) }
		object_method_bind_call: unsafe { GDExtensionInterfaceObjectMethodBindCall(gpaddr(c'object_method_bind_call')) }
		object_method_bind_ptrcall: unsafe { GDExtensionInterfaceObjectMethodBindPtrcall(gpaddr(c'object_method_bind_ptrcall')) }
		object_destroy: unsafe { GDExtensionInterfaceObjectDestroy(gpaddr(c'object_destroy')) }
		global_get_singleton: unsafe { GDExtensionInterfaceGlobalGetSingleton(gpaddr(c'global_get_singleton')) }
		object_get_instance_binding: unsafe { GDExtensionInterfaceObjectGetInstanceBinding(gpaddr(c'object_get_instance_binding')) }
		object_set_instance_binding: unsafe { GDExtensionInterfaceObjectSetInstanceBinding(gpaddr(c'object_set_instance_binding')) }
		object_set_instance: unsafe { GDExtensionInterfaceObjectSetInstance(gpaddr(c'object_set_instance')) }
		object_get_class_name: unsafe { GDExtensionInterfaceObjectGetClassName(gpaddr(c'object_get_class_name')) }
		object_cast_to: unsafe { GDExtensionInterfaceObjectCastTo(gpaddr(c'object_cast_to')) }
		object_get_instance_from_id: unsafe { GDExtensionInterfaceObjectGetInstanceFromId(gpaddr(c'object_get_instance_from_id')) }
		object_get_instance_id: unsafe { GDExtensionInterfaceObjectGetInstanceId(gpaddr(c'object_get_instance_id')) }
		ref_get_object: unsafe { GDExtensionInterfaceRefGetObject(gpaddr(c'ref_get_object')) }
		ref_set_object: unsafe { GDExtensionInterfaceRefSetObject(gpaddr(c'ref_set_object')) }
		script_instance_create: unsafe { GDExtensionInterfaceScriptInstanceCreate(gpaddr(c'script_instance_create')) }
		classdb_construct_object: unsafe { GDExtensionInterfaceClassdbConstructObject(gpaddr(c'classdb_construct_object')) }
		classdb_get_method_bind: unsafe { GDExtensionInterfaceClassdbGetMethodBind(gpaddr(c'classdb_get_method_bind')) }
		classdb_get_class_tag: unsafe { GDExtensionInterfaceClassdbGetClassTag(gpaddr(c'classdb_get_class_tag')) }
		classdb_register_extension_class: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClass(gpaddr(c'classdb_register_extension_class')) }
		classdb_register_extension_class_method: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClassMethod(gpaddr(c'classdb_register_extension_class_method')) }
		classdb_register_extension_class_integer_constant: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant(gpaddr(c'classdb_register_extension_class_integer_constant')) }
		classdb_register_extension_class_property: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClassProperty(gpaddr(c'classdb_register_extension_class_property')) }
		classdb_register_extension_class_property_group: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup(gpaddr(c'classdb_register_extension_class_property_group')) }
		classdb_register_extension_class_property_subgroup: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup(gpaddr(c'classdb_register_extension_class_property_subgroup')) }
		classdb_register_extension_class_signal: unsafe { GDExtensionInterfaceClassdbRegisterExtensionClassSignal(gpaddr(c'classdb_register_extension_class_signal')) }
		classdb_unregister_extension_class: unsafe { GDExtensionInterfaceClassdbUnregisterExtensionClass(gpaddr(c'classdb_unregister_extension_class')) }
		get_library_path: unsafe { GDExtensionInterfaceGetLibraryPath(gpaddr(c'get_library_path')) }
		editor_add_plugin: unsafe { GDExtensionInterfaceEditorAddPlugin(gpaddr(c'editor_add_plugin')) }
		editor_remove_plugin: unsafe { GDExtensionInterfaceEditorRemovePlugin(gpaddr(c'editor_remove_plugin')) }
	}
}

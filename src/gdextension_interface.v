module vgdextension

pub enum GDExtensionVariantType {
	type_nil
	type_bool
	type_i64
	type_f64
	type_string
	type_vector2
	type_vector2i
	type_rect2
	type_rect2i
	type_vector3
	type_vector3i
	type_transform2d
	type_vector4
	type_vector4i
	type_plane
	type_quaternion
	type_aabb
	type_basis
	type_transform3d
	type_projection
	type_color
	type_stringname
	type_nodepath
	type_rid
	type_object
	type_callable
	type_signal
	type_dictionary
	type_array
	type_packedbytearray
	type_packedint32array
	type_packedint64array
	type_packedfloat32array
	type_packedfloat64array
	type_packedstringarray
	type_packedvector2array
	type_packedvector3array
	type_packedcolorarray
	type_variantmax
}

pub enum GDExtensionVariantOperator {
	op_equal
	op_not_equal
	op_less
	op_less_equal
	op_greater
	op_greater_equal
	op_add
	op_subtract
	op_multiply
	op_divide
	op_negate
	op_positive
	op_module
	op_power
	op_shift_left
	op_shift_right
	op_bit_and
	op_bit_or
	op_bit_xor
	op_bit_negate
	op_and
	op_or
	op_xor
	op_not
	op_in
	op_max
}

pub type GDExtensionUninitializedVariantPtr = voidptr
pub type GDExtensionUninitializedStringNamePtr = voidptr
pub type GDExtensionUninitializedStringPtr = voidptr
pub type GDExtensionUninitializedObjectPtr = voidptr
pub type GDExtensionTypePtr = voidptr
pub type GDExtensionConstTypePtr = voidptr
pub type GDExtensionUninitializedTypePtr = voidptr
pub type GDExtensionMethodBindPtr = voidptr
pub type GDExtensionInt = i64
pub type GDExtensionBool = u8
pub type GDObjectInstanceID = u64
pub type GDExtensionRefPtr = voidptr
pub type GDExtensionConstRefPtr = voidptr

pub enum GDExtensionCallErrorType {
	gdextension_call_ok
	gdextension_call_error_invalid_method
	gdextension_call_error_invalid_argument
	gdextension_call_error_too_many_arguments
	gdextension_call_error_too_few_arguments
	gdextension_call_error_instance_is_null
	gdextension_call_error_method_not_const
}

pub struct GDExtensionCallError {
	error    GDExtensionCallErrorType
	argument int
	expected int
}

pub type GDExtensionVariantFromTypeConstructorFunc = fn (GDExtensionUninitializedVariantPtr, GDExtensionTypePtr)

pub type GDExtensionTypeFromVariantConstructorFunc = fn (GDExtensionUninitializedTypePtr, &Variant)

pub type GDExtensionPtrOperatorEvaluator = fn (GDExtensionConstTypePtr, GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionPtrBuiltInMethod = fn (GDExtensionTypePtr, &GDExtensionConstTypePtr, GDExtensionTypePtr, int)

pub type GDExtensionPtrConstructor = fn (GDExtensionUninitializedTypePtr, &GDExtensionConstTypePtr)

pub type GDExtensionPtrDestructor = fn (GDExtensionTypePtr)

pub type GDExtensionPtrSetter = fn (GDExtensionTypePtr, GDExtensionConstTypePtr)

pub type GDExtensionPtrGetter = fn (GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionPtrIndexedSetter = fn (GDExtensionTypePtr, GDExtensionInt, GDExtensionConstTypePtr)

pub type GDExtensionPtrIndexedGetter = fn (GDExtensionConstTypePtr, GDExtensionInt, GDExtensionTypePtr)

pub type GDExtensionPtrKeyedSetter = fn (GDExtensionTypePtr, GDExtensionConstTypePtr, GDExtensionConstTypePtr)

pub type GDExtensionPtrKeyedGetter = fn (GDExtensionConstTypePtr, GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionPtrKeyedChecker = fn (&Variant, &Variant) u32

pub type GDExtensionPtrUtilityFunction = fn (GDExtensionTypePtr, &GDExtensionConstTypePtr, int)

pub type GDExtensionClassConstructor = fn () &Object

pub type GDExtensionInstanceBindingCreateCallback = fn (voidptr, voidptr) voidptr

pub type GDExtensionInstanceBindingFreeCallback = fn (voidptr, voidptr, voidptr)

pub type GDExtensionInstanceBindingReferenceCallback = fn (voidptr, voidptr, GDExtensionBool) GDExtensionBool

pub struct GDExtensionInstanceBindingCallbacks {
	create_callback    GDExtensionInstanceBindingCreateCallback    = unsafe { nil }
	free_callback      GDExtensionInstanceBindingFreeCallback      = unsafe { nil }
	reference_callback GDExtensionInstanceBindingReferenceCallback = unsafe { nil }
}

pub type GDExtensionClassInstancePtr = voidptr
pub type GDExtensionClassSet = fn (GDExtensionClassInstancePtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionClassGet = fn (GDExtensionClassInstancePtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionClassGetRID = fn (GDExtensionClassInstancePtr) u64

pub struct GDExtensionPropertyInfo {
	type_       GDExtensionVariantType
	name        &StringName
	class_name  &StringName
	hint        u32
	hint_string &String
	usage       u32
}

pub struct GDExtensionMethodInfo {
	name                   &StringName
	return_value           GDExtensionPropertyInfo
	flags                  u32
	id                     int
	argument_count         u32
	arguments              &GDExtensionPropertyInfo
	default_argument_count u32
	default_arguments      &&Variant
}

pub type GDExtensionClassGetPropertyList = fn (GDExtensionClassInstancePtr, &u32) &GDExtensionPropertyInfo

pub type GDExtensionClassFreePropertyList = fn (GDExtensionClassInstancePtr, &GDExtensionPropertyInfo)

pub type GDExtensionClassPropertyCanRevert = fn (GDExtensionClassInstancePtr, &StringName) GDExtensionBool

pub type GDExtensionClassPropertyGetRevert = fn (GDExtensionClassInstancePtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionClassNotification = fn (GDExtensionClassInstancePtr, int)

pub type GDExtensionClassToString = fn (GDExtensionClassInstancePtr, &GDExtensionBool, &String)

pub type GDExtensionClassReference = fn (GDExtensionClassInstancePtr)

pub type GDExtensionClassUnreference = fn (GDExtensionClassInstancePtr)

pub type GDExtensionClassCallVirtual = fn (GDExtensionClassInstancePtr, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionClassCreateInstance = fn (voidptr) &Object

pub type GDExtensionClassFreeInstance = fn (voidptr, GDExtensionClassInstancePtr)

pub type GDExtensionClassGetVirtual = fn (voidptr, &StringName) GDExtensionClassCallVirtual

pub struct GDExtensionClassCreationInfo {
	is_virtual               GDExtensionBool
	is_abstract              GDExtensionBool
	set_func                 GDExtensionClassSet = unsafe { nil }
	get_func                 GDExtensionClassGet = unsafe { nil }
	get_property_list_func   GDExtensionClassGetPropertyList   = unsafe { nil }
	free_property_list_func  GDExtensionClassFreePropertyList  = unsafe { nil }
	property_can_revert_func GDExtensionClassPropertyCanRevert = unsafe { nil }
	property_get_revert_func GDExtensionClassPropertyGetRevert = unsafe { nil }
	notification_func        GDExtensionClassNotification      = unsafe { nil }
	to_string_func           GDExtensionClassToString       = unsafe { nil }
	reference_func           GDExtensionClassReference      = unsafe { nil }
	unreference_func         GDExtensionClassUnreference    = unsafe { nil }
	create_instance_func     GDExtensionClassCreateInstance = unsafe { nil }
	free_instance_func       GDExtensionClassFreeInstance   = unsafe { nil }
	get_virtual_func         GDExtensionClassGetVirtual     = unsafe { nil }
	get_rid_func             GDExtensionClassGetRID = unsafe { nil }
	class_userdata           voidptr
}

pub type GDExtensionClassLibraryPtr = voidptr

pub enum GDExtensionClassMethodFlags {
	gdextension_method_flag_normal  = 1
	gdextension_method_flag_editor  = 2
	gdextension_method_flag_const   = 4
	gdextension_method_flag_virtual = 8
	gdextension_method_flag_vararg  = 16
	gdextension_method_flag_static  = 32
}

pub enum GDExtensionClassMethodArgumentMetadata {
	gdextension_method_argument_metadata_none
	gdextension_method_argument_metadata_int_is_int8
	gdextension_method_argument_metadata_int_is_int16
	gdextension_method_argument_metadata_int_is_int32
	gdextension_method_argument_metadata_int_is_int64
	gdextension_method_argument_metadata_int_is_uint8
	gdextension_method_argument_metadata_int_is_uint16
	gdextension_method_argument_metadata_int_is_uint32
	gdextension_method_argument_metadata_int_is_uint64
	gdextension_method_argument_metadata_real_is_float
	gdextension_method_argument_metadata_real_is_double
}

pub type GDExtensionClassMethodCall = fn (voidptr, GDExtensionClassInstancePtr, &&Variant, GDExtensionInt, &Variant, &GDExtensionCallError)

pub type GDExtensionClassMethodValidatedCall = fn (voidptr, GDExtensionClassInstancePtr, &&Variant, &Variant)

pub type GDExtensionClassMethodPtrCall = fn (voidptr, GDExtensionClassInstancePtr, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub struct GDExtensionClassMethodInfo {
	name                   &StringName
	method_userdata        voidptr
	call_func              GDExtensionClassMethodCall    = unsafe { nil }
	ptrcall_func           GDExtensionClassMethodPtrCall = unsafe { nil }
	method_flags           u32
	has_return_value       GDExtensionBool
	return_value_info      &GDExtensionPropertyInfo
	return_value_metadata  GDExtensionClassMethodArgumentMetadata
	argument_count         u32
	arguments_info         &GDExtensionPropertyInfo
	arguments_metadata     &GDExtensionClassMethodArgumentMetadata
	default_argument_count u32
	default_arguments      &&Variant
}

pub type GDExtensionScriptInstanceDataPtr = usize
pub type GDExtensionScriptInstanceSet = fn (GDExtensionScriptInstanceDataPtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionScriptInstanceGet = fn (GDExtensionScriptInstanceDataPtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionScriptInstanceGetPropertyList = fn (GDExtensionScriptInstanceDataPtr, &u32) &GDExtensionPropertyInfo

pub type GDExtensionScriptInstanceFreePropertyList = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionPropertyInfo)

pub type GDExtensionScriptInstanceGetPropertyType = fn (GDExtensionScriptInstanceDataPtr, &StringName, &GDExtensionBool) GDExtensionVariantType

pub type GDExtensionScriptInstancePropertyCanRevert = fn (GDExtensionScriptInstanceDataPtr, &StringName) GDExtensionBool

pub type GDExtensionScriptInstancePropertyGetRevert = fn (GDExtensionScriptInstanceDataPtr, &StringName, &Variant) GDExtensionBool

pub type GDExtensionScriptInstanceGetOwner = fn (GDExtensionScriptInstanceDataPtr) &Object

pub type GDExtensionScriptInstancePropertyStateAdd = fn (&StringName, &Variant, voidptr)

pub type GDExtensionScriptInstanceGetPropertyState = fn (GDExtensionScriptInstanceDataPtr, GDExtensionScriptInstancePropertyStateAdd, voidptr)

pub type GDExtensionScriptInstanceGetMethodList = fn (GDExtensionScriptInstanceDataPtr, &u32) &GDExtensionMethodInfo

pub type GDExtensionScriptInstanceFreeMethodList = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionMethodInfo)

pub type GDExtensionScriptInstanceHasMethod = fn (GDExtensionScriptInstanceDataPtr, &StringName) GDExtensionBool

pub type GDExtensionScriptInstanceCall = fn (GDExtensionScriptInstanceDataPtr, &StringName, &&Variant, GDExtensionInt, &Variant, &GDExtensionCallError)

pub type GDExtensionScriptInstanceNotification = fn (GDExtensionScriptInstanceDataPtr, int)

pub type GDExtensionScriptInstanceToString = fn (GDExtensionScriptInstanceDataPtr, &GDExtensionBool, &String)

pub type GDExtensionScriptInstanceRefCountIncremented = fn (GDExtensionScriptInstanceDataPtr)

pub type GDExtensionScriptInstanceRefCountDecremented = fn (GDExtensionScriptInstanceDataPtr) GDExtensionBool

pub type GDExtensionScriptInstanceGetScript = fn (GDExtensionScriptInstanceDataPtr) &Object

pub type GDExtensionScriptInstanceIsPlaceholder = fn (GDExtensionScriptInstanceDataPtr) GDExtensionBool

pub type GDExtensionScriptLanguagePtr = voidptr
pub type GDExtensionScriptInstanceGetLanguage = fn (GDExtensionScriptInstanceDataPtr) GDExtensionScriptLanguagePtr

pub type GDExtensionScriptInstanceFree = fn (GDExtensionScriptInstanceDataPtr)

pub type GDExtensionScriptInstancePtr = voidptr

pub struct GDExtensionScriptInstanceInfo {
	set_func                  GDExtensionScriptInstanceSet = unsafe { nil }
	get_func                  GDExtensionScriptInstanceGet = unsafe { nil }
	get_property_list_func    GDExtensionScriptInstanceGetPropertyList   = unsafe { nil }
	free_property_list_func   GDExtensionScriptInstanceFreePropertyList  = unsafe { nil }
	property_can_revert_func  GDExtensionScriptInstancePropertyCanRevert = unsafe { nil }
	property_get_revert_func  GDExtensionScriptInstancePropertyGetRevert = unsafe { nil }
	get_owner_func            GDExtensionScriptInstanceGetOwner = unsafe { nil }
	get_property_state_func   GDExtensionScriptInstanceGetPropertyState = unsafe { nil }
	get_method_list_func      GDExtensionScriptInstanceGetMethodList    = unsafe { nil }
	free_method_list_func     GDExtensionScriptInstanceFreeMethodList   = unsafe { nil }
	get_property_type_func    GDExtensionScriptInstanceGetPropertyType  = unsafe { nil }
	has_method_func           GDExtensionScriptInstanceHasMethod        = unsafe { nil }
	call_func                 GDExtensionScriptInstanceCall = unsafe { nil }
	notification_func         GDExtensionScriptInstanceNotification        = unsafe { nil }
	to_string_func            GDExtensionScriptInstanceToString            = unsafe { nil }
	refcount_incremented_func GDExtensionScriptInstanceRefCountIncremented = unsafe { nil }
	refcount_decremented_func GDExtensionScriptInstanceRefCountDecremented = unsafe { nil }
	get_script_func           GDExtensionScriptInstanceGetScript     = unsafe { nil }
	is_placeholder_func       GDExtensionScriptInstanceIsPlaceholder = unsafe { nil }
	set_fallback_func         GDExtensionScriptInstanceSet = unsafe { nil }
	get_fallback_func         GDExtensionScriptInstanceGet = unsafe { nil }
	get_language_func         GDExtensionScriptInstanceGetLanguage = unsafe { nil }
	free_func                 GDExtensionScriptInstanceFree        = unsafe { nil }
}

pub struct GDExtensionInitialization {
	minimum_initialization_level GDExtensionInitializationLevel
	userdata                     voidptr
pub mut:
	initialize   fn (voidptr, GDExtensionInitializationLevel) = unsafe { nil }
	deinitialize fn (voidptr, GDExtensionInitializationLevel) = unsafe { nil }
}

pub type GDExtensionInterfaceFunctionPtr = fn ()

pub type GDExtensionInterfaceGetProcAddress = fn (&i8) GDExtensionInterfaceFunctionPtr

pub type GDExtensionInitializationFunction = fn (GDExtensionInterfaceGetProcAddress, GDExtensionClassLibraryPtr, &GDExtensionInitialization) GDExtensionBool

pub struct GDExtensionGodotVersion {
pub mut:
	major   u32
	minor   u32
	patch   u32
	string_ &i8 = unsafe { nil }
}

pub type GDExtensionInterfaceGetGodotVersion = fn (&GDExtensionGodotVersion)

pub type GDExtensionInterfaceMemAlloc = fn (usize) voidptr

pub type GDExtensionInterfaceMemRealloc = fn (voidptr, usize) voidptr

pub type GDExtensionInterfaceMemFree = fn (voidptr)

pub type GDExtensionInterfacePrintError = fn (&i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintErrorWithMessage = fn (&i8, &i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintWarning = fn (&i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintWarningWithMessage = fn (&i8, &i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintScriptError = fn (&i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfacePrintScriptErrorWithMessage = fn (&i8, &i8, &i8, &i8, int, GDExtensionBool)

pub type GDExtensionInterfaceGetNativeStructSize = fn (&StringName) u64

pub type GDExtensionInterfaceVariantNewCopy = fn (GDExtensionUninitializedVariantPtr, &Variant)

pub type GDExtensionInterfaceVariantNewNil = fn (GDExtensionUninitializedVariantPtr)

pub type GDExtensionInterfaceVariantDestroy = fn (&Variant)

pub type GDExtensionInterfaceVariantCall = fn (&Variant, &StringName, &&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionCallError)

pub type GDExtensionInterfaceVariantCallStatic = fn (GDExtensionVariantType, &StringName, &&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionCallError)

pub type GDExtensionInterfaceVariantEvaluate = fn (GDExtensionVariantOperator, &Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSet = fn (&Variant, &Variant, &Variant, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSetNamed = fn (&Variant, &StringName, &Variant, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSetKeyed = fn (&Variant, &Variant, &Variant, &GDExtensionBool)

pub type GDExtensionInterfaceVariantSetIndexed = fn (&Variant, GDExtensionInt, &Variant, &GDExtensionBool, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGet = fn (&Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGetNamed = fn (&Variant, &StringName, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGetKeyed = fn (&Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantGetIndexed = fn (&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionBool, &GDExtensionBool)

pub type GDExtensionInterfaceVariantIterInit = fn (&Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool) GDExtensionBool

pub type GDExtensionInterfaceVariantIterNext = fn (&Variant, &Variant, &GDExtensionBool) GDExtensionBool

pub type GDExtensionInterfaceVariantIterGet = fn (&Variant, &Variant, GDExtensionUninitializedVariantPtr, &GDExtensionBool)

pub type GDExtensionInterfaceVariantHash = fn (&Variant) GDExtensionInt

pub type GDExtensionInterfaceVariantRecursiveHash = fn (&Variant, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceVariantHashCompare = fn (&Variant, &Variant) GDExtensionBool

pub type GDExtensionInterfaceVariantBooleanize = fn (&Variant) GDExtensionBool

pub type GDExtensionInterfaceVariantDuplicate = fn (&Variant, &Variant, GDExtensionBool)

pub type GDExtensionInterfaceVariantStringify = fn (&Variant, &String)

pub type GDExtensionInterfaceVariantGetType = fn (&Variant) GDExtensionVariantType

pub type GDExtensionInterfaceVariantHasMethod = fn (&Variant, &StringName) GDExtensionBool

pub type GDExtensionInterfaceVariantHasMember = fn (GDExtensionVariantType, &StringName) GDExtensionBool

pub type GDExtensionInterfaceVariantHasKey = fn (&Variant, &Variant, &GDExtensionBool) GDExtensionBool

pub type GDExtensionInterfaceVariantGetTypeName = fn (GDExtensionVariantType, GDExtensionUninitializedStringPtr)

pub type GDExtensionInterfaceVariantCanConvert = fn (GDExtensionVariantType, GDExtensionVariantType) GDExtensionBool

pub type GDExtensionInterfaceVariantCanConvertStrict = fn (GDExtensionVariantType, GDExtensionVariantType) GDExtensionBool

pub type GDExtensionInterfaceGetVariantFromTypeConstructor = fn (GDExtensionVariantType) GDExtensionVariantFromTypeConstructorFunc

pub type GDExtensionInterfaceGetVariantToTypeConstructor = fn (GDExtensionVariantType) GDExtensionTypeFromVariantConstructorFunc

pub type GDExtensionInterfaceVariantGetPtrOperatorEvaluator = fn (GDExtensionVariantOperator, GDExtensionVariantType, GDExtensionVariantType) GDExtensionPtrOperatorEvaluator

pub type GDExtensionInterfaceVariantGetPtrBuiltinMethod = fn (GDExtensionVariantType, &StringName, GDExtensionInt) GDExtensionPtrBuiltInMethod

pub type GDExtensionInterfaceVariantGetPtrConstructor = fn (GDExtensionVariantType, int) GDExtensionPtrConstructor

pub type GDExtensionInterfaceVariantGetPtrDestructor = fn (GDExtensionVariantType) GDExtensionPtrDestructor

pub type GDExtensionInterfaceVariantConstruct = fn (GDExtensionVariantType, GDExtensionUninitializedVariantPtr, &&Variant, int, &GDExtensionCallError)

pub type GDExtensionInterfaceVariantGetPtrSetter = fn (GDExtensionVariantType, &StringName) GDExtensionPtrSetter

pub type GDExtensionInterfaceVariantGetPtrGetter = fn (GDExtensionVariantType, &StringName) GDExtensionPtrGetter

pub type GDExtensionInterfaceVariantGetPtrIndexedSetter = fn (GDExtensionVariantType) GDExtensionPtrIndexedSetter

pub type GDExtensionInterfaceVariantGetPtrIndexedGetter = fn (GDExtensionVariantType) GDExtensionPtrIndexedGetter

pub type GDExtensionInterfaceVariantGetPtrKeyedSetter = fn (GDExtensionVariantType) GDExtensionPtrKeyedSetter

pub type GDExtensionInterfaceVariantGetPtrKeyedGetter = fn (GDExtensionVariantType) GDExtensionPtrKeyedGetter

pub type GDExtensionInterfaceVariantGetPtrKeyedChecker = fn (GDExtensionVariantType) GDExtensionPtrKeyedChecker

pub type GDExtensionInterfaceVariantGetConstantValue = fn (GDExtensionVariantType, &StringName, GDExtensionUninitializedVariantPtr)

pub type GDExtensionInterfaceVariantGetPtrUtilityFunction = fn (&StringName, GDExtensionInt) GDExtensionPtrUtilityFunction

pub type GDExtensionInterfaceStringNewWithLatin1Chars = fn (GDExtensionUninitializedStringPtr, &i8)

pub type GDExtensionInterfaceStringNewWithUtf8Chars = fn (GDExtensionUninitializedStringPtr, &i8)

pub type GDExtensionInterfaceStringNewWithUtf16Chars = fn (GDExtensionUninitializedStringPtr, &i16)

pub type GDExtensionInterfaceStringNewWithUtf32Chars = fn (GDExtensionUninitializedStringPtr, &i32)

pub type GDExtensionInterfaceStringNewWithWideChars = fn (GDExtensionUninitializedStringPtr, &u16)

pub type GDExtensionInterfaceStringNewWithLatin1CharsAndLen = fn (GDExtensionUninitializedStringPtr, &i8, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithUtf8CharsAndLen = fn (GDExtensionUninitializedStringPtr, &i8, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithUtf16CharsAndLen = fn (GDExtensionUninitializedStringPtr, &u16, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithUtf32CharsAndLen = fn (GDExtensionUninitializedStringPtr, &u32, GDExtensionInt)

pub type GDExtensionInterfaceStringNewWithWideCharsAndLen = fn (GDExtensionUninitializedStringPtr, &u16, GDExtensionInt)

pub type GDExtensionInterfaceStringToLatin1Chars = fn (&String, &i8, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToUtf8Chars = fn (&String, &i8, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToUtf16Chars = fn (&String, &u16, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToUtf32Chars = fn (&String, &u32, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringToWideChars = fn (&String, &u16, GDExtensionInt) GDExtensionInt

pub type GDExtensionInterfaceStringOperatorIndex = fn (&String, GDExtensionInt) &u32

pub type GDExtensionInterfaceStringOperatorIndexConst = fn (&String, GDExtensionInt) &u32

pub type GDExtensionInterfaceStringOperatorPlusEqString = fn (&String, &String)

pub type GDExtensionInterfaceStringOperatorPlusEqChar = fn (&String, u32)

pub type GDExtensionInterfaceStringOperatorPlusEqCstr = fn (&String, &i8)

pub type GDExtensionInterfaceStringOperatorPlusEqWcstr = fn (&String, &u16)

pub type GDExtensionInterfaceStringOperatorPlusEqC32str = fn (&String, &u32)

pub type GDExtensionInterfaceXmlParserOpenBuffer = fn (&Object, &u8, usize) GDExtensionInt

pub type GDExtensionInterfaceFileAccessStoreBuffer = fn (&Object, &u8, u64)

pub type GDExtensionInterfaceFileAccessGetBuffer = fn (&Object, &u8, u64) u64

pub type GDExtensionInterfacePackedByteArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &u8

pub type GDExtensionInterfacePackedColorArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedColorArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedFloat32ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &f32

pub type GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &f32

pub type GDExtensionInterfacePackedFloat64ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &f64

pub type GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &f64

pub type GDExtensionInterfacePackedInt32ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &int

pub type GDExtensionInterfacePackedInt32ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &int

pub type GDExtensionInterfacePackedInt64ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &i64

pub type GDExtensionInterfacePackedInt64ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &i64

pub type GDExtensionInterfacePackedStringArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &String

pub type GDExtensionInterfacePackedStringArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &String

pub type GDExtensionInterfacePackedVector2ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedVector2ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedVector3ArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfacePackedVector3ArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) GDExtensionTypePtr

pub type GDExtensionInterfaceArrayOperatorIndex = fn (GDExtensionTypePtr, GDExtensionInt) &Variant

pub type GDExtensionInterfaceArrayOperatorIndexConst = fn (GDExtensionConstTypePtr, GDExtensionInt) &Variant

pub type GDExtensionInterfaceArrayRef = fn (GDExtensionTypePtr, GDExtensionConstTypePtr)

pub type GDExtensionInterfaceArraySetTyped = fn (GDExtensionTypePtr, GDExtensionVariantType, &StringName, &Variant)

pub type GDExtensionInterfaceDictionaryOperatorIndex = fn (GDExtensionTypePtr, &Variant) &Variant

pub type GDExtensionInterfaceDictionaryOperatorIndexConst = fn (GDExtensionConstTypePtr, &Variant) &Variant

pub type GDExtensionInterfaceObjectMethodBindCall = fn (GDExtensionMethodBindPtr, &Object, &&Variant, GDExtensionInt, GDExtensionUninitializedVariantPtr, &GDExtensionCallError)

pub type GDExtensionInterfaceObjectMethodBindPtrcall = fn (GDExtensionMethodBindPtr, &Object, &GDExtensionConstTypePtr, GDExtensionTypePtr)

pub type GDExtensionInterfaceObjectDestroy = fn (&Object)

pub type GDExtensionInterfaceGlobalGetSingleton = fn (&StringName) &Object

pub type GDExtensionInterfaceObjectGetInstanceBinding = fn (&Object, voidptr, &GDExtensionInstanceBindingCallbacks) voidptr

pub type GDExtensionInterfaceObjectSetInstanceBinding = fn (&Object, voidptr, voidptr, &GDExtensionInstanceBindingCallbacks)

pub type GDExtensionInterfaceObjectSetInstance = fn (&Object, &StringName, GDExtensionClassInstancePtr)

pub type GDExtensionInterfaceObjectGetClassName = fn (&Object, GDExtensionClassLibraryPtr, GDExtensionUninitializedStringNamePtr) GDExtensionBool

pub type GDExtensionInterfaceObjectCastTo = fn (&Object, voidptr) &Object

pub type GDExtensionInterfaceObjectGetInstanceFromId = fn (GDObjectInstanceID) &Object

pub type GDExtensionInterfaceObjectGetInstanceId = fn (&Object) GDObjectInstanceID

pub type GDExtensionInterfaceRefGetObject = fn (GDExtensionConstRefPtr) &Object

pub type GDExtensionInterfaceRefSetObject = fn (GDExtensionRefPtr, &Object)

pub type GDExtensionInterfaceScriptInstanceCreate = fn (&GDExtensionScriptInstanceInfo, GDExtensionScriptInstanceDataPtr) GDExtensionScriptInstancePtr

pub type GDExtensionInterfaceClassdbConstructObject = fn (&StringName) &Object

pub type GDExtensionInterfaceClassdbGetMethodBind = fn (&StringName, &StringName, GDExtensionInt) GDExtensionMethodBindPtr

pub type GDExtensionInterfaceClassdbGetClassTag = fn (&StringName) voidptr

pub type GDExtensionInterfaceClassdbRegisterExtensionClass = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionClassCreationInfo)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassMethod = fn (GDExtensionClassLibraryPtr, &StringName, &GDExtensionClassMethodInfo)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &StringName, GDExtensionInt, GDExtensionBool)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassProperty = fn (GDExtensionClassLibraryPtr, &StringName, &GDExtensionPropertyInfo, &StringName, &StringName)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup = fn (GDExtensionClassLibraryPtr, &StringName, &String, &String)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup = fn (GDExtensionClassLibraryPtr, &StringName, &String, &String)

pub type GDExtensionInterfaceClassdbRegisterExtensionClassSignal = fn (GDExtensionClassLibraryPtr, &StringName, &StringName, &GDExtensionPropertyInfo, GDExtensionInt)

pub type GDExtensionInterfaceClassdbUnregisterExtensionClass = fn (GDExtensionClassLibraryPtr, &StringName)

pub type GDExtensionInterfaceGetLibraryPath = fn (GDExtensionClassLibraryPtr, GDExtensionUninitializedStringPtr)

pub type GDExtensionInterfaceEditorAddPlugin = fn (&StringName)

pub type GDExtensionInterfaceEditorRemovePlugin = fn (&StringName)

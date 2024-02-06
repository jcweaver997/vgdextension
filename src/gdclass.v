module vgdextension

pub struct Wrapped{
	mut:
	owner &Object
}

pub interface IWrapped {
	mut:
	owner &Object
}

pub fn register_class[T](parent_class string) {
	C.printf(c'registering class %s...\n', T.name.str)

	sn := StringName.new(T.name)
	pn := StringName.new(parent_class)
	defer {
		sn.deinit()
		pn.deinit()
	}
	info := GDExtensionClassCreationInfo{
		is_virtual: GDExtensionBool(false)
		is_abstract: GDExtensionBool(false)
		set_func: class_set_func[T]
		get_func: class_get_func[T]
		get_property_list_func: class_get_property_list[T]
		free_property_list_func: class_free_property_list[T]
		property_can_revert_func: class_property_can_revert[T]
		// property_get_revert_func GDExtensionClassPropertyGetRevert = unsafe { nil }
		// notification_func GDExtensionClassNotification = unsafe { nil }
		to_string_func: class_to_string[T]
		reference_func: class_reference[T]
		unreference_func: class_unreference[T]
		create_instance_func: class_create_instance[T]
		free_instance_func: class_free_instance[T]
		get_virtual_func: class_get_virtual_func[T]
		// get_rid_func GDExtensionClassGetRID = unsafe { nil }
		// class_userdata voidptr
	}

	gdf.classdb_register_extension_class(gdf.clp, &sn, &pn, &info)
}


fn class_set_func[T](instance GDExtensionClassInstancePtr, name &StringName, variant &Variant) GDExtensionBool {
	println("setfunc ${T.name}")
	return GDExtensionBool(false)
}

fn class_get_func[T](instance GDExtensionClassInstancePtr, name &StringName, mut variant Variant) GDExtensionBool {
	println("getfunc ${T.name}")
	return GDExtensionBool(false)
}

fn class_get_property_list[T](instance GDExtensionClassInstancePtr, return_count &u32) &GDExtensionPropertyInfo {
	println("getproplist ${T.name}")
	mut infos := []GDExtensionPropertyInfo{}
	$for field in T.fields {
		field_name := StringName.new(field.name)
		class_name := StringName.new(T.name)
		hint := String.new("test hint")

		info := GDExtensionPropertyInfo {
			type_:       field_to_variant_type(field.name)
			name:        &field_name
			class_name:  &class_name
			hint:        u32(PropertyHint.property_hint_none)
			hint_string: &hint
			usage:       u32(PropertyUsageFlags.property_usage_default)
		}
		infos << info
	}
	unsafe {
		*return_count = u32(infos.len)
		if infos.len > 0 {
			return &infos[0]
		}else{
			return nil
		}
	}
}

fn class_free_property_list[T](instance GDExtensionClassInstancePtr, info &GDExtensionPropertyInfo) {
	println("freegetproplist ${T.name}")
	mut index := 0
	unsafe {
		$for _ in T.fields {
			info[index].name.deinit()
			info[index].class_name.deinit()
			info[index].hint_string.deinit()
			index += 1
		}
	}
}

fn class_property_can_revert[T](instance GDExtensionClassInstancePtr, prop_name &StringName) GDExtensionBool {
	println("canrevert ${T.name}")
	return GDExtensionBool(false)
}

fn class_to_string[T](instance GDExtensionClassInstancePtr, valid &GDExtensionBool, out &String){
	println("tostring ${T.name}")
	unsafe {
		*valid = GDExtensionBool(true)
		*out = String.new(T.name)
	}
}

fn class_reference[T](instance GDExtensionClassInstancePtr){
	println("reference ${T.name}")
	// what is this for?
}

fn class_unreference[T](instance GDExtensionClassInstancePtr){
	println("unreference ${T.name}")
	// what is this for?
}

@[manualfree]
fn class_create_instance[T](user_data voidptr) &Object {
	println("createinstance ${T.name}")
	t := &T{}
	mut w := IWrapped(t)
	sn := StringName.new(T.name)
	defer {sn.deinit()}
	// how create?????????
	w.owner = gdf.mem_alloc(sizeof[Object]())
	return w.owner
}

fn class_free_instance[T](user_data voidptr, instance GDExtensionClassInstancePtr) {
	println("freeinstance ${T.name}") 
	unsafe {
		t := &T(instance)
		free(t)
	}
}

fn class_get_virtual_func[T](user_data voidptr, method_name &StringName) GDExtensionClassCallVirtual {
	println("getvirtfunc ${T.name}")
	// m_name := method_name.to_v()
	// $for m in T.methods {
	// 	if m.name == m_name {
	// 		fn_ptr := T.$m
	// 		return fn [fn_ptr] (instance GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
	// 			fn_ptr()
	// 		}
	// 	}
	// }
	return GDExtensionClassCallVirtual(unsafe {nil})
}

fn field_to_variant_type(field_type_name string) GDExtensionVariantType {
	return match field_type_name {
		"Nil" {
			.type_nil
		}
		"bool" {
			.type_bool
		}
		"i32" {
			.type_i32
		}
		"f32" {
			.type_f32
		}
		"String" {
			.type_string
		}
		"Vector2" {
			.type_vector2
		}
		"Vector2i" {
			.type_vector2i
		}
		"Rect2" {
			.type_rect2
		}
		"Rect2i" {
			.type_rect2i
		}
		"Vector3" {
			.type_vector3
		}
		"Vector3i" {
			.type_vector3i
		}
		"Transform2D" {
			.type_transform2d
		}
		"Vector4" {
			.type_vector4
		}
		"Vector4i" {
			.type_vector4i
		}
		"Plane" {
			.type_plane
		}
		"Quaternion" {
			.type_quaternion
		}
		"AABB" {
			.type_aabb
		}
		"Basis" {
			.type_basis
		}
		"Transform3D" {
			.type_transform3d
		}
		"Projection" {
			.type_projection
		}
		"Color" {
			.type_color
		}
		"StringName" {
			.type_stringname
		}
		"NodePath" {
			.type_nodepath
		}
		"RID" {
			.type_rid
		}
		"Object" {
			.type_object
		}
		"Callable" {
			.type_callable
		}
		"Signal" {
			.type_signal
		}
		"Dictionary" {
			.type_dictionary
		}
		"Array" {
			.type_array
		}
		"PackedByteArray" {
			.type_packedbytearray
		}
		"PackedInt32Array" {
			.type_packedint32array
		}
		"PackedInt64Array" {
			.type_packedint64array
		}
		"PackedFloat32Array" {
			.type_packedfloat32array
		}
		"PackedFloat64Array" {
			.type_packedfloat64array
		}
		"PackedStringArray" {
			.type_packedstringarray
		}
		"PackedVector2Array" {
			.type_packedvector2array
		}
		"PackedVector3Array" {
			.type_packedvector3array
		}
		"PackedColorArray" {
			.type_packedcolorarray
		}
		else {
			.type_nil
		}
	}
}
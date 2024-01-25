module vgdextension

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
		// get_property_list_func GDExtensionClassGetPropertyList = unsafe { nil }
		// free_property_list_func GDExtensionClassFreePropertyList = unsafe { nil }
		// property_can_revert_func GDExtensionClassPropertyCanRevert = unsafe { nil }
		// property_get_revert_func GDExtensionClassPropertyGetRevert = unsafe { nil }
		// notification_func GDExtensionClassNotification = unsafe { nil }
		// to_string_func GDExtensionClassToString = unsafe { nil }
		// reference_func GDExtensionClassReference = unsafe { nil }
		// unreference_func GDExtensionClassUnreference = unsafe { nil }
		// create_instance_func GDExtensionClassCreateInstance = unsafe { nil }
		// free_instance_func GDExtensionClassFreeInstance = unsafe { nil }
		// get_virtual_func GDExtensionClassGetVirtual = unsafe { nil }
		// get_rid_func GDExtensionClassGetRID = unsafe { nil }
		// class_userdata voidptr
	}

	gdf.classdb_register_extension_class(gdf.clp, &sn, &pn, &info)
}

fn class_set_func[T](class GDExtensionClassInstancePtr, name &StringName, variant &Variant) GDExtensionBool {
	return GDExtensionBool(false)
}

fn class_get_func[T](class GDExtensionClassInstancePtr, name &StringName, mut variant Variant) GDExtensionBool {
	return GDExtensionBool(false)
}

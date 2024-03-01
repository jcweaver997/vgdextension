module main

import log
import vgdextension as gd

pub fn init_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	// Register classes at scene initialization
	if l == .initialization_level_scene {
		gd.register_class_with_name[FollowCamera]('Camera2D', 'FollowCamera')
		gd.register_class_with_name[Player]('CharacterBody2D', 'Player')
		gd.register_class_with_name[Enemy]('CharacterBody2D', 'Enemy')
		gd.register_class_with_name[Bullet]('Area2D', 'Bullet')
		gd.register_class_with_name[Smoother2D]('Node', 'Smoother2D')
		gd.register_class_with_name[Spawner]('Node', 'Spawner')
	}
}

pub fn deinit_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		println('deinit')
	}
}

// Godot entry function, is called by godot when our shared library is loaded
@[export: 'hello_extension_entry']
pub fn hello_extension_entry(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	gd.setup_lib(gpaddr, clp)
	ver := gd.GDExtensionGodotVersion{}

	gdf.get_godot_version(&ver)

	println('version ${ver}')

	// setup the `initialize` function
	gdnit.initialize = init_gd
	// setup the `deinitialize` function
	gdnit.deinitialize = deinit_gd

	// setup godot logger
	log.set_logger(&gd.GodotLogger{})
	return 1
}

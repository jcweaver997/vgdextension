# vgdextension
gdextension for vlang

## Status

|Feature|Status|Description|
|--|--|--|
|Godot Builtin FFI|&check;|FFI of godot's builtin types and functions like StringName|
|Godot Class FFI|&check;|FFI of godot's classes like Node3D|
|Class Registration|&check;|You can register classes with V|
|Class Virtual Functions|&check;|You can override class virtual functions with V, like ready() and process() by prepending virt_ to it like 'virt_ready()'|
|Signals|Partial|Right now only GD signals can be listened to, and those functions need specific names, like for the 'area_entered' signal, you must name your function 'signal_area_entered'. This is due to the same issue described in 'Class Function Export'|
|Class Function Export|&cross;|Right now only functions with arguments known api_gen time like signals and virtual functions can be exported. A generic way to export functions will require more V compile time features|
|Member Variable Export to Inspector|Partial|Right now only builtin godot types (not godot classes that are derived from an Object), can be exported|
|Build Support|&check;|Builds and runs on Windows and Linux|
|Overall Usability|Low|V-analyzer autocomplete doesn't work https://github.com/jcweaver997/vgdextension/issues/4<br>Godot crashes when calling functions on Objects that don't exist anymore rather than providing an error in the log<br>If you create a godot object manually, you must manually free it using deinit() (i.e. StringName)<br>Compile times are longer than I would like them to be
|


### vgdextension layout
`./gen_api.vsh` API binding generator<br>
`./extension_api.json` the godot extension api json the api generator will use<br>
`./src/gdclass.v` class and classdb related functionality<br>
`./src/gdextension_api*.v` the generated godot api<br>
`./src/gdextension_interface.v` interface file, defines the gdextension interface functions and types<br>
`./src/gdextension.v` binds the gdextension interface functions<br>
`./src/variant.v` variant and other helper functions<br>
`./src/gdextension_api_virtual_bind.v` interfaces for virtual functions<br>
`./src/gdextension_api_method_export.v` handles exporting functions to godot, currently only supports signals<br>

### Generate Your Own Bindings
1. Run `godot --dump-extension-api` to generate your `extension_api.json`<br>
1. Overwrite `extension_api.json` at the root of vgdextension with your generated version
1. Run `v run gen_api.vsh`. This will overwrite `src/gdextension_api.v`


### Example
Please check the examples/shooter2d example for a more in depth example<br>
Note: -d no_backtrace is used to allow tcc to work. It's not needed if you use gcc/clang<br>
Compile with `v -shared -enable-globals -d no_backtrace .`
```v
module main

import log
import vgdextension as gd

@[heap]
pub struct ExampleClass {
	gd.Sprite2D
	mut:
	rot f64
}

fn (mut e ExampleClass) init() {
	if gd.Engine.get_singleton().is_editor_hint() {
		e.set_process_mode(.process_mode_disabled)
	}
}

fn (mut e ExampleClass) deinit() {
}

fn (mut e ExampleClass) virt_ready() {
	e.rot = e.get_rotation_degrees()
}

fn (mut e ExampleClass) virt_process(delta f64) {
	i := gd.Input.get_singleton()

	if i.is_anything_pressed() {
		e.rot += delta * 180
		e.set_rotation_degrees(e.rot)
		log.info("pressed")
	}else{
		log.info("not")
	}
}

pub fn init_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		gd.register_class[ExampleClass]('Sprite2D')
	}
}

pub fn deinit_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		println('deinit')
	}
}

@[export: 'hello_extension_entry']
pub fn hello_extension_entry(gpaddr fn (&i8) gd.GDExtensionInterfaceFunctionPtr, clp gd.GDExtensionClassLibraryPtr, mut gdnit gd.GDExtensionInitialization) gd.GDExtensionBool {
	gd.setup_lib(gpaddr, clp)

	// setup the `initialize` function
	gdnit.initialize = init_gd
	// setup the `deinitialize` function
	gdnit.deinitialize = deinit_gd

	// setup godot logger
	log.set_logger(&gd.GodotLogger{})
	return 1
}

```

You also need to tell godot to load it. Create a `gdexample.gdextension` file in your godot project folder. Inside should look something like this:
```
[configuration]

entry_symbol = "hello_extension_entry"
compatibility_minimum = "4.1"

[libraries]
windows.debug.x86_64 = "res://<path to your built library>.dll"
windows.release.x86_64 = "res://<path to your built library>.dll"
linux.debug.x86_64 = "res://<path to your built library>.so"
linux.release.x86_64 = "res://<path to your built library>.so"
```

If things worked, you should see something like the following in the console:
```
PS C:\Users\jcwea\Desktop\Godot_v4.2.1-stable_mono_win64> .\Godot_v4.2.1-stable_mono_win64.exe
PS C:\Users\jcwea\Desktop\Godot_v4.2.1-stable_mono_win64> Godot Engine v4.2.1.stable.mono.official.b09f793f5 - https://godotengine.org
OpenGL API 3.3.0 NVIDIA 546.65 - Compatibility - Using Device: NVIDIA - NVIDIA GeForce RTX 4080

Editing project: C:/Users/jcwea/Documents/vgdextension_test
hello_extension_entry v4.2.1
Godot Engine v4.2.1.stable.mono.official.b09f793f5 - https://godotengine.org
Vulkan API 1.3.260 - Forward+ - Using Vulkan Device #0: NVIDIA - NVIDIA GeForce RTX 4080

registering class ExampleClass...
```

Learn more about GDExtension https://docs.godotengine.org/en/stable/tutorials/scripting/gdextension/what_is_gdextension.html
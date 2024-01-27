# vgdextension
gdextension for vlang
## WIP

### vgdextension layout
`./gen_api.vsh` API binding generator<br>
`./extension_api.json` the godot extension api json the api generator will use<br>
`./src/gdclass.v` class and classdb related functionality<br>
`./src/gdextension_api.v` the generated godot api<br>
`./src/gdextension_interface/v` interface file, defines the gdextension interface functions and types<br>
`./src/gdextension.v` binds the gdextension interface functions<br>


### Generate Your Own Bindings
1. Run `godot --dump-extension-api` to generate your `extension_api.json`<br>
1. Overwrite `extension_api.json` at the root of vgdextension with your generated version
1. Run `v run gen_api.vsh`. This will overwrite `src/gdextension_api.v`


### Example
Note: You can't register classes yet, its just an example, a lot of work still needs to be done to make a valid demo<br>
Compile with `v -shared -enable-globals -cc gcc .`
```v
module main

import vgdextension as gd

struct ExampleClass {
	pos gd.Vector3

}

fn (e ExampleClass) test_method(){
	
}


pub fn init_gd(v voidptr, l gd.GDExtensionInitializationLevel) {
	if l == .initialization_level_scene {
		gd.register_class[ExampleClass]("Node")
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
	ver := gd.GDExtensionGodotVersion{}
	
	gdf.get_godot_version(&ver)

	// For some reason println formatting doesn't work, so use C.printf for formatting for now
	C.printf('hello_extension_entry v%d.%d.%d\n'.str, ver.major, ver.minor, ver.patch)
	

	// setup the `initialize` function
	gdnit.initialize = init_gd
	// setup the `deinitialize` function
	gdnit.deinitialize = deinit_gd
	
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
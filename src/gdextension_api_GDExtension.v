pub enum GDExtensionInitializationLevel {
    initialization_level_core = 0
    initialization_level_servers = 1
    initialization_level_scene = 2
    initialization_level_editor = 3
}

pub type GDExtension = voidptr

pub fn (mut r GDExtension) open_library(path String, entry_symbol String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GDExtension")
    defer { classname.deinit() }
    fnname := StringName.new("open_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&entry_symbol)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GDExtension) close_library() {
    classname := StringName.new("GDExtension")
    defer { classname.deinit() }
    fnname := StringName.new("close_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GDExtension) is_library_open() bool {
    mut object_out := false
    classname := StringName.new("GDExtension")
    defer { classname.deinit() }
    fnname := StringName.new("is_library_open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GDExtension) get_minimum_library_initialization_level() GDExtensionInitializationLevel {
    mut object_out := GDExtensionInitializationLevel.initialization_level_core
    classname := StringName.new("GDExtension")
    defer { classname.deinit() }
    fnname := StringName.new("get_minimum_library_initialization_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 964858755)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GDExtension) initialize_library(level GDExtensionInitializationLevel) {
    classname := StringName.new("GDExtension")
    defer { classname.deinit() }
    fnname := StringName.new("initialize_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3409922941)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

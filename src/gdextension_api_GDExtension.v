module vgdextension

pub enum GDExtensionInitializationLevel as i64 {
    initialization_level_core = 0
    initialization_level_servers = 1
    initialization_level_scene = 2
    initialization_level_editor = 3
}

@[noinit]
pub struct GDExtension {
    Resource
}

pub fn (mut r GDExtension) open_library(path String, entry_symbol String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GDExtension")
    fnname := StringName.new("open_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&entry_symbol)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r GDExtension) close_library() {
    classname := StringName.new("GDExtension")
    fnname := StringName.new("close_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GDExtension) is_library_open() bool {
    mut object_out := false
    classname := StringName.new("GDExtension")
    fnname := StringName.new("is_library_open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GDExtension) get_minimum_library_initialization_level() GDExtensionInitializationLevel {
    mut object_out := i64(GDExtensionInitializationLevel.initialization_level_core)
    classname := StringName.new("GDExtension")
    fnname := StringName.new("get_minimum_library_initialization_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 964858755)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDExtensionInitializationLevel(object_out)}
}
pub fn (mut r GDExtension) initialize_library(level GDExtensionInitializationLevel) {
    classname := StringName.new("GDExtension")
    fnname := StringName.new("initialize_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3409922941)
    mut args := unsafe { [1]voidptr{} }
    i64_level := i64(level)
    args[0] = unsafe{voidptr(&i64_level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

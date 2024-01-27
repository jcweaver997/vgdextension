pub enum GDExtensionManagerLoadStatus {
    load_status_ok = 0
    load_status_failed = 1
    load_status_already_loaded = 2
    load_status_not_loaded = 3
    load_status_needs_restart = 4
}

pub type GDExtensionManager = voidptr

pub fn (mut r GDExtensionManager) load_extension(path String) GDExtensionManagerLoadStatus {
    mut object_out := GDExtensionManagerLoadStatus.load_status_ok
    classname := StringName.new("GDExtensionManager")
    defer { classname.deinit() }
    fnname := StringName.new("load_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GDExtensionManager) reload_extension(path String) GDExtensionManagerLoadStatus {
    mut object_out := GDExtensionManagerLoadStatus.load_status_ok
    classname := StringName.new("GDExtensionManager")
    defer { classname.deinit() }
    fnname := StringName.new("reload_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GDExtensionManager) unload_extension(path String) GDExtensionManagerLoadStatus {
    mut object_out := GDExtensionManagerLoadStatus.load_status_ok
    classname := StringName.new("GDExtensionManager")
    defer { classname.deinit() }
    fnname := StringName.new("unload_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GDExtensionManager) is_extension_loaded(path String) bool {
    mut object_out := false
    classname := StringName.new("GDExtensionManager")
    defer { classname.deinit() }
    fnname := StringName.new("is_extension_loaded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GDExtensionManager) get_loaded_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("GDExtensionManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_loaded_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GDExtensionManager) get_extension(path String) GDExtension {
    mut object_out := GDExtension(unsafe{nil})
    classname := StringName.new("GDExtensionManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 49743343)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

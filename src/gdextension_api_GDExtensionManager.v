module vgdextension

pub enum GDExtensionManagerLoadStatus as i64 {
    load_status_ok = 0
    load_status_failed = 1
    load_status_already_loaded = 2
    load_status_not_loaded = 3
    load_status_needs_restart = 4
}

@[noinit]
pub struct GDExtensionManager {
    Object
}

pub fn GDExtensionManager.get_singleton() GDExtensionManager {
    sn := StringName.new("GDExtensionManager")
    o := GDExtensionManager{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r GDExtensionManager) load_extension(path string) GDExtensionManagerLoadStatus {
    mut object_out := i64(GDExtensionManagerLoadStatus.load_status_ok)
    classname := StringName.new("GDExtensionManager")
    fnname := StringName.new("load_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDExtensionManagerLoadStatus(object_out)}
}
pub fn (mut r GDExtensionManager) reload_extension(path string) GDExtensionManagerLoadStatus {
    mut object_out := i64(GDExtensionManagerLoadStatus.load_status_ok)
    classname := StringName.new("GDExtensionManager")
    fnname := StringName.new("reload_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDExtensionManagerLoadStatus(object_out)}
}
pub fn (mut r GDExtensionManager) unload_extension(path string) GDExtensionManagerLoadStatus {
    mut object_out := i64(GDExtensionManagerLoadStatus.load_status_ok)
    classname := StringName.new("GDExtensionManager")
    fnname := StringName.new("unload_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4024158731)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDExtensionManagerLoadStatus(object_out)}
}
pub fn (r &GDExtensionManager) is_extension_loaded(path string) bool {
    mut object_out := false
    classname := StringName.new("GDExtensionManager")
    fnname := StringName.new("is_extension_loaded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GDExtensionManager) get_loaded_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("GDExtensionManager")
    fnname := StringName.new("get_loaded_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GDExtensionManager) get_extension(path string) GDExtension {
    mut object_out := GDExtension{}
    classname := StringName.new("GDExtensionManager")
    fnname := StringName.new("get_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 49743343)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}

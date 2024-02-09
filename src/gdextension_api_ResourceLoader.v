module vgdextension

pub enum ResourceLoaderThreadLoadStatus {
    thread_load_invalid_resource = 0
    thread_load_in_progress = 1
    thread_load_failed = 2
    thread_load_loaded = 3
}

pub enum ResourceLoaderCacheMode {
    cache_mode_ignore = 0
    cache_mode_reuse = 1
    cache_mode_replace = 2
}

pub struct ResourceLoader {
    Object
}

pub fn ResourceLoader.get_singleton() ResourceLoader {
    sn := StringName.new("ResourceLoader")
    defer {sn.deinit()}
    o := ResourceLoader{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r ResourceLoader) load_threaded_request(path String, type_hint String, use_sub_threads bool, cache_mode ResourceLoaderCacheMode) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("load_threaded_request")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1939848623)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&type_hint)}
    args[2] = unsafe{voidptr(&use_sub_threads)}
    args[3] = unsafe{voidptr(&cache_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) load_threaded_get_status(path String, progress Array) ResourceLoaderThreadLoadStatus {
    mut object_out := ResourceLoaderThreadLoadStatus.thread_load_invalid_resource
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("load_threaded_get_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3931021148)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&progress)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) load_threaded_get(path String) Resource {
    mut object_out := Resource{}
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("load_threaded_get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1748875256)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) load(path String, type_hint String, cache_mode ResourceLoaderCacheMode) Resource {
    mut object_out := Resource{}
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2622212233)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&type_hint)}
    args[2] = unsafe{voidptr(&cache_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) get_recognized_extensions_for_type(type_name String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("get_recognized_extensions_for_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) add_resource_format_loader(format_loader ResourceFormatLoader, at_front bool) {
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("add_resource_format_loader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2896595483)
    mut args := unsafe { [2]voidptr{} }
    args[0] = format_loader.ptr
    args[1] = unsafe{voidptr(&at_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ResourceLoader) remove_resource_format_loader(format_loader ResourceFormatLoader) {
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("remove_resource_format_loader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 405397102)
    mut args := unsafe { [1]voidptr{} }
    args[0] = format_loader.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ResourceLoader) set_abort_on_missing_resources(abort bool) {
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("set_abort_on_missing_resources")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&abort)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ResourceLoader) get_dependencies(path String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("get_dependencies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) has_cached(path String) bool {
    mut object_out := false
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("has_cached")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) exists(path String, type_hint String) bool {
    mut object_out := false
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("exists")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2220807150)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&type_hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceLoader) get_resource_uid(path String) i64 {
    mut object_out := i64(0)
    classname := StringName.new("ResourceLoader")
    defer { classname.deinit() }
    fnname := StringName.new("get_resource_uid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

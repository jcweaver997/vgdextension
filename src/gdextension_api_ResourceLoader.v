module vgdextension

pub enum ResourceLoaderThreadLoadStatus as i64 {
    thread_load_invalid_resource = 0
    thread_load_in_progress = 1
    thread_load_failed = 2
    thread_load_loaded = 3
}

pub enum ResourceLoaderCacheMode as i64 {
    cache_mode_ignore = 0
    cache_mode_reuse = 1
    cache_mode_replace = 2
}

@[noinit]
pub struct ResourceLoader {
    Object
}

pub fn ResourceLoader.get_singleton() ResourceLoader {
    sn := StringName.new("ResourceLoader")
    o := ResourceLoader{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &ResourceLoader) load_threaded_request(path string, type_hint string, use_sub_threads bool, cache_mode ResourceLoaderCacheMode) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("load_threaded_request")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614384323)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(type_hint)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&use_sub_threads)}
    i64_cache_mode := i64(cache_mode)
    args[3] = unsafe{voidptr(&i64_cache_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ResourceLoader) load_threaded_get_status(path string, progress Array) ResourceLoaderThreadLoadStatus {
    mut object_out := i64(ResourceLoaderThreadLoadStatus.thread_load_invalid_resource)
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("load_threaded_get_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4137685479)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&progress)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{ResourceLoaderThreadLoadStatus(object_out)}
}
pub fn (r &ResourceLoader) load_threaded_get(path string) Resource {
    mut object_out := Resource{}
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("load_threaded_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1748875256)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceLoader) load(path string, type_hint string, cache_mode ResourceLoaderCacheMode) Resource {
    mut object_out := Resource{}
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3358495409)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(type_hint)
    args[1] = unsafe{voidptr(&arg_sn1)}
    i64_cache_mode := i64(cache_mode)
    args[2] = unsafe{voidptr(&i64_cache_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceLoader) get_recognized_extensions_for_type(type_name string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("get_recognized_extensions_for_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceLoader) add_resource_format_loader(format_loader ResourceFormatLoader, at_front bool) {
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("add_resource_format_loader")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2896595483)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&format_loader.ptr)
    args[1] = unsafe{voidptr(&at_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ResourceLoader) remove_resource_format_loader(format_loader ResourceFormatLoader) {
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("remove_resource_format_loader")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 405397102)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&format_loader.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ResourceLoader) set_abort_on_missing_resources(abort bool) {
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("set_abort_on_missing_resources")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&abort)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ResourceLoader) get_dependencies(path string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("get_dependencies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceLoader) has_cached(path string) bool {
    mut object_out := false
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("has_cached")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceLoader) exists(path string, type_hint string) bool {
    mut object_out := false
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4185558881)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(type_hint)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceLoader) get_resource_uid(path string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("ResourceLoader")
    fnname := StringName.new("get_resource_uid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}

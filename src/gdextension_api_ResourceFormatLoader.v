module vgdextension

pub enum ResourceFormatLoaderCacheMode as i64 {
    cache_mode_ignore = 0
    cache_mode_reuse = 1
    cache_mode_replace = 2
}

@[noinit]
pub struct ResourceFormatLoader {
    RefCounted
}

pub interface IResourceFormatLoaderGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions() PackedStringArray
}

pub fn (r &ResourceFormatLoader) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderRecognizePath {
    mut:
    virt_recognize_path(path String, type_name StringName) bool
}

pub fn (r &ResourceFormatLoader) urecognize_path(path String, type_name StringName) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_recognize_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderHandlesType {
    mut:
    virt_handles_type(type_name StringName) bool
}

pub fn (r &ResourceFormatLoader) uhandles_type(type_name StringName) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_handles_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetResourceType {
    mut:
    virt_get_resource_type(path String) String
}

pub fn (r &ResourceFormatLoader) uget_resource_type(path String) String {
    mut object_out := String{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_resource_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetResourceScriptClass {
    mut:
    virt_get_resource_script_class(path String) String
}

pub fn (r &ResourceFormatLoader) uget_resource_script_class(path String) String {
    mut object_out := String{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_resource_script_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetResourceUid {
    mut:
    virt_get_resource_uid(path String) i64
}

pub fn (r &ResourceFormatLoader) uget_resource_uid(path String) i64 {
    mut object_out := i64(0)
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_resource_uid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetDependencies {
    mut:
    virt_get_dependencies(path String, add_types bool) PackedStringArray
}

pub fn (r &ResourceFormatLoader) uget_dependencies(path String, add_types bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_dependencies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&add_types)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderRenameDependencies {
    mut:
    virt_rename_dependencies(path String, renames Dictionary) GDError
}

pub fn (r &ResourceFormatLoader) urename_dependencies(path String, renames Dictionary) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_rename_dependencies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&renames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IResourceFormatLoaderExists {
    mut:
    virt_exists(path String) bool
}

pub fn (r &ResourceFormatLoader) uexists(path String) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetClassesUsed {
    mut:
    virt_get_classes_used(path String) PackedStringArray
}

pub fn (r &ResourceFormatLoader) uget_classes_used(path String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_classes_used")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderLoad {
    mut:
    virt_load(path String, original_path String, use_sub_threads bool, cache_mode i32) Variant
}

pub fn (r &ResourceFormatLoader) uload(path String, original_path String, use_sub_threads bool, cache_mode i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&original_path)}
    args[2] = unsafe{voidptr(&use_sub_threads)}
    args[3] = unsafe{voidptr(&cache_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

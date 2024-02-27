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

pub fn (r &ResourceFormatLoader) urecognize_path(path string, type_name string) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_recognize_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(type_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderHandlesType {
    mut:
    virt_handles_type(type_name StringName) bool
}

pub fn (r &ResourceFormatLoader) uhandles_type(type_name string) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_handles_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetResourceType {
    mut:
    virt_get_resource_type(path String) String
}

pub fn (r &ResourceFormatLoader) uget_resource_type(path string) string {
    mut object_out := String{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_resource_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IResourceFormatLoaderGetResourceScriptClass {
    mut:
    virt_get_resource_script_class(path String) String
}

pub fn (r &ResourceFormatLoader) uget_resource_script_class(path string) string {
    mut object_out := String{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_resource_script_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IResourceFormatLoaderGetResourceUid {
    mut:
    virt_get_resource_uid(path String) i64
}

pub fn (r &ResourceFormatLoader) uget_resource_uid(path string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_resource_uid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetDependencies {
    mut:
    virt_get_dependencies(path String, add_types bool) PackedStringArray
}

pub fn (r &ResourceFormatLoader) uget_dependencies(path string, add_types bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_dependencies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&add_types)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderRenameDependencies {
    mut:
    virt_rename_dependencies(path String, renames Dictionary) GDError
}

pub fn (r &ResourceFormatLoader) urename_dependencies(path string, renames Dictionary) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_rename_dependencies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&renames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IResourceFormatLoaderExists {
    mut:
    virt_exists(path String) bool
}

pub fn (r &ResourceFormatLoader) uexists(path string) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderGetClassesUsed {
    mut:
    virt_get_classes_used(path String) PackedStringArray
}

pub fn (r &ResourceFormatLoader) uget_classes_used(path string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_get_classes_used")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatLoaderLoad {
    mut:
    virt_load(path String, original_path String, use_sub_threads bool, cache_mode i32) Variant
}

pub fn (r &ResourceFormatLoader) uload(path string, original_path string, use_sub_threads bool, cache_mode i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ResourceFormatLoader")
    fnname := StringName.new("_load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(original_path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&use_sub_threads)}
    args[3] = unsafe{voidptr(&cache_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

pub enum ResourceFormatLoaderCacheMode {
    cache_mode_ignore = 0
    cache_mode_reuse = 1
    cache_mode_replace = 2
}

pub type ResourceFormatLoader = voidptr

pub fn (r &ResourceFormatLoader) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) urecognize_path(path String, type_name StringName) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_recognize_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uhandles_type(type_name StringName) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_handles_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uget_resource_type(path String) String {
    mut object_out := String{}
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_get_resource_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uget_resource_script_class(path String) String {
    mut object_out := String{}
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_get_resource_script_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uget_resource_uid(path String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_get_resource_uid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uget_dependencies(path String, add_types bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_get_dependencies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&add_types)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) urename_dependencies(path String, renames Dictionary) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_rename_dependencies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&renames)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uexists(path String) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_exists")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uget_classes_used(path String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_get_classes_used")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatLoader) uload(path String, original_path String, use_sub_threads bool, cache_mode i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ResourceFormatLoader")
    defer { classname.deinit() }
    fnname := StringName.new("_load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&original_path)}
    args[2] = unsafe{voidptr(&use_sub_threads)}
    args[3] = unsafe{voidptr(&cache_mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

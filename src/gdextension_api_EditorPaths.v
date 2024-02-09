module vgdextension

pub struct EditorPaths {
    Object
}

pub fn (r &EditorPaths) get_data_dir() String {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    defer { classname.deinit() }
    fnname := StringName.new("get_data_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorPaths) get_config_dir() String {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    defer { classname.deinit() }
    fnname := StringName.new("get_config_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorPaths) get_cache_dir() String {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorPaths) is_self_contained() bool {
    mut object_out := false
    classname := StringName.new("EditorPaths")
    defer { classname.deinit() }
    fnname := StringName.new("is_self_contained")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorPaths) get_self_contained_file() String {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    defer { classname.deinit() }
    fnname := StringName.new("get_self_contained_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorPaths) get_project_settings_dir() String {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    defer { classname.deinit() }
    fnname := StringName.new("get_project_settings_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

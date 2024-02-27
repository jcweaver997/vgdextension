module vgdextension

@[noinit]
pub struct EditorPaths {
    Object
}

pub fn (r &EditorPaths) get_data_dir() string {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    fnname := StringName.new("get_data_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorPaths) get_config_dir() string {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    fnname := StringName.new("get_config_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorPaths) get_cache_dir() string {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    fnname := StringName.new("get_cache_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorPaths) is_self_contained() bool {
    mut object_out := false
    classname := StringName.new("EditorPaths")
    fnname := StringName.new("is_self_contained")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPaths) get_self_contained_file() string {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    fnname := StringName.new("get_self_contained_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorPaths) get_project_settings_dir() string {
    mut object_out := String{}
    classname := StringName.new("EditorPaths")
    fnname := StringName.new("get_project_settings_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}

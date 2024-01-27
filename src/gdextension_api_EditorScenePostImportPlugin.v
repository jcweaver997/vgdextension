pub enum EditorScenePostImportPluginInternalImportCategory {
    internal_import_category_node = 0
    internal_import_category_mesh_3d_node = 1
    internal_import_category_mesh = 2
    internal_import_category_material = 3
    internal_import_category_animation = 4
    internal_import_category_animation_node = 5
    internal_import_category_skeleton_3d_node = 6
    internal_import_category_max = 7
}

pub type EditorScenePostImportPlugin = voidptr

pub fn (mut r EditorScenePostImportPlugin) uget_internal_import_options(category i32) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_internal_import_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorScenePostImportPlugin) uget_internal_option_visibility(category i32, for_animation bool, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_internal_option_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    args[1] = unsafe{voidptr(&for_animation)}
    args[2] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorScenePostImportPlugin) uget_internal_option_update_view_required(category i32, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_internal_option_update_view_required")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    args[1] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorScenePostImportPlugin) uinternal_process(category i32, base_node Node, node Node, resource Resource) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_internal_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorScenePostImportPlugin) uget_import_options(path String) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_import_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorScenePostImportPlugin) uget_option_visibility(path String, for_animation bool, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_option_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&for_animation)}
    args[2] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorScenePostImportPlugin) upre_process(scene Node) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_pre_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorScenePostImportPlugin) upost_process(scene Node) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_post_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorScenePostImportPlugin) get_option_value(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_option_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorScenePostImportPlugin) add_import_option(name String, value Variant) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_import_option")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorScenePostImportPlugin) add_import_option_advanced(type_name VariantType, name String, default_value Variant, hint PropertyHint, hint_string String, usage_flags i32) {
    classname := StringName.new("EditorScenePostImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_import_option_advanced")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774155785)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

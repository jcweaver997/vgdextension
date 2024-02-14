module vgdextension

pub enum EditorScenePostImportPluginInternalImportCategory as i64 {
    internal_import_category_node = 0
    internal_import_category_mesh_3d_node = 1
    internal_import_category_mesh = 2
    internal_import_category_material = 3
    internal_import_category_animation = 4
    internal_import_category_animation_node = 5
    internal_import_category_skeleton_3d_node = 6
    internal_import_category_max = 7
}

@[noinit]
pub struct EditorScenePostImportPlugin {
    RefCounted
}

pub interface IEditorScenePostImportPluginGetInternalImportOptions {
    mut:
    virt_get_internal_import_options(category i32)
}

pub fn (mut r EditorScenePostImportPlugin) uget_internal_import_options(category i32) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_internal_import_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorScenePostImportPluginGetInternalOptionVisibility {
    mut:
    virt_get_internal_option_visibility(category i32, for_animation bool, option String) Variant
}

pub fn (r &EditorScenePostImportPlugin) uget_internal_option_visibility(category i32, for_animation bool, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_internal_option_visibility")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    args[1] = unsafe{voidptr(&for_animation)}
    args[2] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorScenePostImportPluginGetInternalOptionUpdateViewRequired {
    mut:
    virt_get_internal_option_update_view_required(category i32, option String) Variant
}

pub fn (r &EditorScenePostImportPlugin) uget_internal_option_update_view_required(category i32, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_internal_option_update_view_required")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    args[1] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorScenePostImportPluginInternalProcess {
    mut:
    virt_internal_process(category i32, base_node Node, node Node, resource Resource)
}

pub fn (mut r EditorScenePostImportPlugin) uinternal_process(category i32, base_node Node, node Node, resource Resource) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_internal_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    args[1] = base_node.ptr
    args[2] = node.ptr
    args[3] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorScenePostImportPluginGetImportOptions {
    mut:
    virt_get_import_options(path String)
}

pub fn (mut r EditorScenePostImportPlugin) uget_import_options(path String) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_import_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorScenePostImportPluginGetOptionVisibility {
    mut:
    virt_get_option_visibility(path String, for_animation bool, option String) Variant
}

pub fn (r &EditorScenePostImportPlugin) uget_option_visibility(path String, for_animation bool, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_option_visibility")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&for_animation)}
    args[2] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorScenePostImportPluginPreProcess {
    mut:
    virt_pre_process(scene Node)
}

pub fn (mut r EditorScenePostImportPlugin) upre_process(scene Node) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_pre_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = scene.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorScenePostImportPluginPostProcess {
    mut:
    virt_post_process(scene Node)
}

pub fn (mut r EditorScenePostImportPlugin) upost_process(scene Node) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_post_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = scene.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorScenePostImportPlugin) get_option_value(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("get_option_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorScenePostImportPlugin) add_import_option(name String, value Variant) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("add_import_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorScenePostImportPlugin) add_import_option_advanced(type_name VariantType, name String, default_value Variant, hint PropertyHint, hint_string String, usage_flags i32) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("add_import_option_advanced")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674075649)
    mut args := unsafe { [6]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&default_value)}
    i64_hint := i64(hint)
    args[3] = unsafe{voidptr(&i64_hint)}
    args[4] = unsafe{voidptr(&hint_string)}
    args[5] = unsafe{voidptr(&usage_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

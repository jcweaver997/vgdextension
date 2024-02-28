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

pub fn (r &EditorScenePostImportPlugin) uget_internal_import_options(category i32) {
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

pub fn (r &EditorScenePostImportPlugin) uget_internal_option_visibility(category i32, for_animation bool, option string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_internal_option_visibility")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    args[1] = unsafe{voidptr(&for_animation)}
    arg_sn2 := String.new(option)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorScenePostImportPluginGetInternalOptionUpdateViewRequired {
    mut:
    virt_get_internal_option_update_view_required(category i32, option String) Variant
}

pub fn (r &EditorScenePostImportPlugin) uget_internal_option_update_view_required(category i32, option string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_internal_option_update_view_required")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&category)}
    arg_sn1 := String.new(option)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorScenePostImportPluginInternalProcess {
    mut:
    virt_internal_process(category i32, base_node Node, node Node, resource Resource)
}

pub fn (r &EditorScenePostImportPlugin) uinternal_process(category i32, base_node Node, node Node, resource Resource) {
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

pub fn (r &EditorScenePostImportPlugin) uget_import_options(path string) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_import_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorScenePostImportPluginGetOptionVisibility {
    mut:
    virt_get_option_visibility(path String, for_animation bool, option String) Variant
}

pub fn (r &EditorScenePostImportPlugin) uget_option_visibility(path string, for_animation bool, option string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_get_option_visibility")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&for_animation)}
    arg_sn2 := String.new(option)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorScenePostImportPluginPreProcess {
    mut:
    virt_pre_process(scene Node)
}

pub fn (r &EditorScenePostImportPlugin) upre_process(scene Node) {
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

pub fn (r &EditorScenePostImportPlugin) upost_process(scene Node) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("_post_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = scene.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorScenePostImportPlugin) get_option_value(name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("get_option_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorScenePostImportPlugin) add_import_option(name string, value Variant) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("add_import_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorScenePostImportPlugin) add_import_option_advanced(type_name VariantType, name string, default_value Variant, hint PropertyHint, hint_string string, usage_flags i32) {
    classname := StringName.new("EditorScenePostImportPlugin")
    fnname := StringName.new("add_import_option_advanced")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674075649)
    mut args := unsafe { [6]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&default_value)}
    i64_hint := i64(hint)
    args[3] = unsafe{voidptr(&i64_hint)}
    arg_sn4 := String.new(hint_string)
    args[4] = unsafe{voidptr(&arg_sn4)}
    args[5] = unsafe{voidptr(&usage_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn4.deinit()
    classname.deinit()
    fnname.deinit()
}

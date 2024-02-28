module vgdextension

@[noinit]
pub struct EditorImportPlugin {
    ResourceImporter
}

pub interface IEditorImportPluginGetImporterName {
    mut:
    virt_get_importer_name() String
}

pub fn (r &EditorImportPlugin) uget_importer_name() string {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_importer_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorImportPluginGetVisibleName {
    mut:
    virt_get_visible_name() String
}

pub fn (r &EditorImportPlugin) uget_visible_name() string {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_visible_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorImportPluginGetPresetCount {
    mut:
    virt_get_preset_count() i32
}

pub fn (r &EditorImportPlugin) uget_preset_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_preset_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorImportPluginGetPresetName {
    mut:
    virt_get_preset_name(preset_index i32) String
}

pub fn (r &EditorImportPlugin) uget_preset_name(preset_index i32) string {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_preset_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&preset_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorImportPluginGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions() PackedStringArray
}

pub fn (r &EditorImportPlugin) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorImportPluginGetImportOptions {
    mut:
    virt_get_import_options(path String, preset_index i32) Array
}

pub fn (r &EditorImportPlugin) uget_import_options(path string, preset_index i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_import_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&preset_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorImportPluginGetSaveExtension {
    mut:
    virt_get_save_extension() String
}

pub fn (r &EditorImportPlugin) uget_save_extension() string {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_save_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorImportPluginGetResourceType {
    mut:
    virt_get_resource_type() String
}

pub fn (r &EditorImportPlugin) uget_resource_type() string {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_resource_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorImportPluginGetPriority {
    mut:
    virt_get_priority() f64
}

pub fn (r &EditorImportPlugin) uget_priority() f64 {
    mut object_out := f64(0)
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorImportPluginGetImportOrder {
    mut:
    virt_get_import_order() i32
}

pub fn (r &EditorImportPlugin) uget_import_order() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_import_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorImportPluginGetOptionVisibility {
    mut:
    virt_get_option_visibility(path String, option_name StringName, options Dictionary) bool
}

pub fn (r &EditorImportPlugin) uget_option_visibility(path string, option_name string, options Dictionary) bool {
    mut object_out := false
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_get_option_visibility")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(option_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorImportPluginImport {
    mut:
    virt_import(source_file String, save_path String, options Dictionary, platform_variants Array, gen_files Array) GDError
}

pub fn (r &EditorImportPlugin) uimport(source_file string, save_path string, options Dictionary, platform_variants Array, gen_files Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("_import")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(source_file)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(save_path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&options)}
    args[3] = unsafe{voidptr(&platform_variants)}
    args[4] = unsafe{voidptr(&gen_files)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &EditorImportPlugin) append_import_external_resource(path string, custom_options Dictionary, custom_importer string, generator_parameters Variant) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("EditorImportPlugin")
    fnname := StringName.new("append_import_external_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 320493106)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&custom_options)}
    arg_sn2 := String.new(custom_importer)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&generator_parameters)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}

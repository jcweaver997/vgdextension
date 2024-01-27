pub type EditorImportPlugin = voidptr

pub fn (r &EditorImportPlugin) uget_importer_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_importer_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_visible_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_visible_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_preset_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_preset_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_preset_name(preset_index i32) String {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_preset_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&preset_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_import_options(path String, preset_index i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_import_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&preset_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_save_extension() String {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_save_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_resource_type() String {
    mut object_out := String{}
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_resource_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_priority() f32 {
    mut object_out := f32(0)
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_import_order() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_import_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uget_option_visibility(path String, option_name StringName, options Dictionary) bool {
    mut object_out := false
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_option_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&option_name)}
    args[2] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorImportPlugin) uimport(source_file String, save_path String, options Dictionary, platform_variants Array, gen_files Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_import")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&source_file)}
    args[1] = unsafe{voidptr(&save_path)}
    args[2] = unsafe{voidptr(&options)}
    args[3] = unsafe{voidptr(&platform_variants)}
    args[4] = unsafe{voidptr(&gen_files)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorImportPlugin) append_import_external_resource(path String, custom_options Dictionary, custom_importer String, generator_parameters Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("EditorImportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("append_import_external_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3645925746)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&custom_options)}
    args[2] = unsafe{voidptr(&custom_importer)}
    args[3] = unsafe{voidptr(&generator_parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

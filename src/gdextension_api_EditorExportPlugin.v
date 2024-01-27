pub type EditorExportPlugin = voidptr

pub fn (mut r EditorExportPlugin) uexport_file(path String, type_name String, features PackedStringArray) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_export_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) uexport_begin(features PackedStringArray, is_debug bool, path String, flags i32) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_export_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) uexport_end() {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_export_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorExportPlugin) ubegin_customize_resources(platform EditorExportPlatform, features PackedStringArray) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_begin_customize_resources")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&platform)}
    args[1] = unsafe{voidptr(&features)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorExportPlugin) ucustomize_resource(resource Resource, path String) Resource {
    mut object_out := Resource(unsafe{nil})
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_customize_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorExportPlugin) ubegin_customize_scenes(platform EditorExportPlatform, features PackedStringArray) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_begin_customize_scenes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&platform)}
    args[1] = unsafe{voidptr(&features)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorExportPlugin) ucustomize_scene(scene Node, path String) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_customize_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scene)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorExportPlugin) uget_customization_configuration_hash() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_customization_configuration_hash")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorExportPlugin) uend_customize_scenes() {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_end_customize_scenes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) uend_customize_resources() {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_end_customize_resources")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorExportPlugin) uget_export_options(platform EditorExportPlatform) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_export_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&platform)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorExportPlugin) ushould_update_export_options(platform EditorExportPlatform) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_should_update_export_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&platform)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorExportPlugin) uget_export_features(platform EditorExportPlatform, debug bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_export_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&platform)}
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorExportPlugin) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorExportPlugin) add_shared_object(path String, tags PackedStringArray, target String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_shared_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3098291045)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_project_static_lib(path String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_project_static_lib")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_file(path String, file PackedByteArray, remap bool) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 527928637)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_framework(path String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_framework")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_embedded_framework(path String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_embedded_framework")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_plist_content(plist_content String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_plist_content")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_linker_flags(flags String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_linker_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_bundle_file(path String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_bundle_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_ios_cpp_code(code String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_ios_cpp_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) add_macos_plugin_file(path String) {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_macos_plugin_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorExportPlugin) skip() {
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("skip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorExportPlugin) get_option(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorExportPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_option")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

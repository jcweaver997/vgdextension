module vgdextension

@[noinit]
pub struct EditorExportPlugin {
    RefCounted
}

pub interface IEditorExportPluginExportFile {
    mut:
    virt_export_file(path String, type_name String, features PackedStringArray)
}

pub fn (mut r EditorExportPlugin) uexport_file(path String, type_name String, features PackedStringArray) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_export_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&features)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorExportPluginExportBegin {
    mut:
    virt_export_begin(features PackedStringArray, is_debug bool, path String, flags u32)
}

pub fn (mut r EditorExportPlugin) uexport_begin(features PackedStringArray, is_debug bool, path String, flags u32) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_export_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&features)}
    args[1] = unsafe{voidptr(&is_debug)}
    args[2] = unsafe{voidptr(&path)}
    args[3] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorExportPluginExportEnd {
    mut:
    virt_export_end()
}

pub fn (mut r EditorExportPlugin) uexport_end() {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_export_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorExportPluginBeginCustomizeResources {
    mut:
    virt_begin_customize_resources(platform EditorExportPlatform, features PackedStringArray) bool
}

pub fn (r &EditorExportPlugin) ubegin_customize_resources(platform EditorExportPlatform, features PackedStringArray) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_begin_customize_resources")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&features)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginCustomizeResource {
    mut:
    virt_customize_resource(resource Resource, path String) Resource
}

pub fn (mut r EditorExportPlugin) ucustomize_resource(resource Resource, path String) Resource {
    mut object_out := Resource{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_customize_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = resource.ptr
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginBeginCustomizeScenes {
    mut:
    virt_begin_customize_scenes(platform EditorExportPlatform, features PackedStringArray) bool
}

pub fn (r &EditorExportPlugin) ubegin_customize_scenes(platform EditorExportPlatform, features PackedStringArray) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_begin_customize_scenes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&features)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginCustomizeScene {
    mut:
    virt_customize_scene(scene Node, path String) Node
}

pub fn (mut r EditorExportPlugin) ucustomize_scene(scene Node, path String) Node {
    mut object_out := Node{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_customize_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = scene.ptr
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetCustomizationConfigurationHash {
    mut:
    virt_get_customization_configuration_hash() u64
}

pub fn (r &EditorExportPlugin) uget_customization_configuration_hash() u64 {
    mut object_out := u64(0)
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_customization_configuration_hash")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginEndCustomizeScenes {
    mut:
    virt_end_customize_scenes()
}

pub fn (mut r EditorExportPlugin) uend_customize_scenes() {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_end_customize_scenes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorExportPluginEndCustomizeResources {
    mut:
    virt_end_customize_resources()
}

pub fn (mut r EditorExportPlugin) uend_customize_resources() {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_end_customize_resources")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorExportPluginGetExportOptions {
    mut:
    virt_get_export_options(platform EditorExportPlatform) Array
}

pub fn (r &EditorExportPlugin) uget_export_options(platform EditorExportPlatform) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_export_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = platform.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginShouldUpdateExportOptions {
    mut:
    virt_should_update_export_options(platform EditorExportPlatform) bool
}

pub fn (r &EditorExportPlugin) ushould_update_export_options(platform EditorExportPlatform) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_should_update_export_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = platform.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetExportOptionWarning {
    mut:
    virt_get_export_option_warning(platform EditorExportPlatform, option String) String
}

pub fn (r &EditorExportPlugin) uget_export_option_warning(platform EditorExportPlatform, option String) String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_export_option_warning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetExportFeatures {
    mut:
    virt_get_export_features(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (r &EditorExportPlugin) uget_export_features(platform EditorExportPlatform, debug bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_export_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetName {
    mut:
    virt_get_name() String
}

pub fn (r &EditorExportPlugin) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginSupportsPlatform {
    mut:
    virt_supports_platform(platform EditorExportPlatform) bool
}

pub fn (r &EditorExportPlugin) usupports_platform(platform EditorExportPlatform) bool {
    mut object_out := false
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_supports_platform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = platform.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetAndroidDependencies {
    mut:
    virt_get_android_dependencies(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (r &EditorExportPlugin) uget_android_dependencies(platform EditorExportPlatform, debug bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_android_dependencies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetAndroidDependenciesMavenRepos {
    mut:
    virt_get_android_dependencies_maven_repos(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (r &EditorExportPlugin) uget_android_dependencies_maven_repos(platform EditorExportPlatform, debug bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_android_dependencies_maven_repos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetAndroidLibraries {
    mut:
    virt_get_android_libraries(platform EditorExportPlatform, debug bool) PackedStringArray
}

pub fn (r &EditorExportPlugin) uget_android_libraries(platform EditorExportPlatform, debug bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_android_libraries")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetAndroidManifestActivityElementContents {
    mut:
    virt_get_android_manifest_activity_element_contents(platform EditorExportPlatform, debug bool) String
}

pub fn (r &EditorExportPlugin) uget_android_manifest_activity_element_contents(platform EditorExportPlatform, debug bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_android_manifest_activity_element_contents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetAndroidManifestApplicationElementContents {
    mut:
    virt_get_android_manifest_application_element_contents(platform EditorExportPlatform, debug bool) String
}

pub fn (r &EditorExportPlugin) uget_android_manifest_application_element_contents(platform EditorExportPlatform, debug bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_android_manifest_application_element_contents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorExportPluginGetAndroidManifestElementContents {
    mut:
    virt_get_android_manifest_element_contents(platform EditorExportPlatform, debug bool) String
}

pub fn (r &EditorExportPlugin) uget_android_manifest_element_contents(platform EditorExportPlatform, debug bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("_get_android_manifest_element_contents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = platform.ptr
    args[1] = unsafe{voidptr(&debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorExportPlugin) add_shared_object(path String, tags PackedStringArray, target String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_shared_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3098291045)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&tags)}
    args[2] = unsafe{voidptr(&target)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_project_static_lib(path String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_project_static_lib")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_file(path String, file PackedByteArray, remap bool) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 527928637)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&file)}
    args[2] = unsafe{voidptr(&remap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_framework(path String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_framework")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_embedded_framework(path String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_embedded_framework")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_plist_content(plist_content String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_plist_content")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&plist_content)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_linker_flags(flags String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_linker_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_bundle_file(path String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_bundle_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_ios_cpp_code(code String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_ios_cpp_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) add_macos_plugin_file(path String) {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("add_macos_plugin_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorExportPlugin) skip() {
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("skip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorExportPlugin) get_option(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorExportPlugin")
    fnname := StringName.new("get_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

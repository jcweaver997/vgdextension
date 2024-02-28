module vgdextension

@[noinit]
pub struct EditorInterface {
    Object
}

pub fn EditorInterface.get_singleton() EditorInterface {
    sn := StringName.new("EditorInterface")
    o := EditorInterface{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &EditorInterface) restart_editor(save bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("restart_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&save)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) get_command_palette() EditorCommandPalette {
    mut object_out := EditorCommandPalette{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_command_palette")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2471163807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_resource_filesystem() EditorFileSystem {
    mut object_out := EditorFileSystem{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_resource_filesystem")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 780151678)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_paths() EditorPaths {
    mut object_out := EditorPaths{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_paths")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1595760068)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_resource_previewer() EditorResourcePreview {
    mut object_out := EditorResourcePreview{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_resource_previewer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 943486957)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_selection() EditorSelection {
    mut object_out := EditorSelection{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2690272531)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_settings() EditorSettings {
    mut object_out := EditorSettings{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_settings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4086932459)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) make_mesh_previews(meshes Array, preview_size i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("make_mesh_previews")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 878078554)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&meshes)}
    args[1] = unsafe{voidptr(&preview_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) set_plugin_enabled(plugin string, enabled bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("set_plugin_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(plugin)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) is_plugin_enabled(plugin string) bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("is_plugin_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(plugin)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_theme() Theme {
    mut object_out := Theme{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_theme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3846893731)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_base_control() Control {
    mut object_out := Control{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_base_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_main_screen() VBoxContainer {
    mut object_out := VBoxContainer{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_main_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706218421)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_script_editor() ScriptEditor {
    mut object_out := ScriptEditor{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_script_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 90868003)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_viewport_2d() SubViewport {
    mut object_out := SubViewport{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_viewport_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3750751911)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_viewport_3d(idx i32) SubViewport {
    mut object_out := SubViewport{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_viewport_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1970834490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) set_main_screen_editor(name string) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("set_main_screen_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) set_distraction_free_mode(enter bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("set_distraction_free_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) is_distraction_free_mode_enabled() bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("is_distraction_free_mode_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_editor_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_editor_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) popup_dialog(dialog Window, rect Rect2i) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("popup_dialog")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2015770942)
    mut args := unsafe { [2]voidptr{} }
    args[0] = dialog.ptr
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) popup_dialog_centered(dialog Window, minsize Vector2i) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("popup_dialog_centered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 346557367)
    mut args := unsafe { [2]voidptr{} }
    args[0] = dialog.ptr
    args[1] = unsafe{voidptr(&minsize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) popup_dialog_centered_ratio(dialog Window, ratio f64) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("popup_dialog_centered_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2093669136)
    mut args := unsafe { [2]voidptr{} }
    args[0] = dialog.ptr
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) popup_dialog_centered_clamped(dialog Window, minsize Vector2i, fallback_ratio f64) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("popup_dialog_centered_clamped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3763385571)
    mut args := unsafe { [3]voidptr{} }
    args[0] = dialog.ptr
    args[1] = unsafe{voidptr(&minsize)}
    args[2] = unsafe{voidptr(&fallback_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) get_current_feature_profile() string {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_current_feature_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorInterface) set_current_feature_profile(profile_name string) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("set_current_feature_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(profile_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) get_file_system_dock() FileSystemDock {
    mut object_out := FileSystemDock{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_file_system_dock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3751012327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) select_file(file string) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("select_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(file)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) get_selected_paths() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_selected_paths")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_current_path() string {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_current_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorInterface) get_current_directory() string {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_current_directory")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorInterface) get_inspector() EditorInspector {
    mut object_out := EditorInspector{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_inspector")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3517113938)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) inspect_object(object Object, for_property string, inspector_only bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("inspect_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 127962172)
    mut args := unsafe { [3]voidptr{} }
    args[0] = object.ptr
    arg_sn1 := String.new(for_property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&inspector_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) edit_resource(resource Resource) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("edit_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) edit_node(node Node) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("edit_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) edit_script(script Script, line i32, column i32, grab_focus bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("edit_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 219829402)
    mut args := unsafe { [4]voidptr{} }
    args[0] = script.ptr
    args[1] = unsafe{voidptr(&line)}
    args[2] = unsafe{voidptr(&column)}
    args[3] = unsafe{voidptr(&grab_focus)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) open_scene_from_path(scene_filepath string) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("open_scene_from_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(scene_filepath)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) reload_scene_from_path(scene_filepath string) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("reload_scene_from_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(scene_filepath)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) get_open_scenes() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_open_scenes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_edited_scene_root() Node {
    mut object_out := Node{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_edited_scene_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) save_scene() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("save_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &EditorInterface) save_scene_as(path string, with_preview bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("save_scene_as")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3647332257)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&with_preview)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) save_all_scenes() {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("save_all_scenes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) mark_scene_as_unsaved() {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("mark_scene_as_unsaved")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) play_main_scene() {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("play_main_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) play_current_scene() {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("play_current_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) play_custom_scene(scene_filepath string) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("play_custom_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(scene_filepath)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) stop_playing_scene() {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("stop_playing_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) is_playing_scene() bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("is_playing_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorInterface) get_playing_scene() string {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("get_playing_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorInterface) set_movie_maker_enabled(enabled bool) {
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("set_movie_maker_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInterface) is_movie_maker_enabled() bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    fnname := StringName.new("is_movie_maker_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

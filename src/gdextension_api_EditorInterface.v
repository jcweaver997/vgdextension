pub type EditorInterface = voidptr

pub fn (mut r EditorInterface) restart_editor(save bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("restart_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) get_command_palette() EditorCommandPalette {
    mut object_out := EditorCommandPalette(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_command_palette")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2471163807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_resource_filesystem() EditorFileSystem {
    mut object_out := EditorFileSystem(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_resource_filesystem")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 780151678)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_editor_paths() EditorPaths {
    mut object_out := EditorPaths(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_paths")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1595760068)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_resource_previewer() EditorResourcePreview {
    mut object_out := EditorResourcePreview(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_resource_previewer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 943486957)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_selection() EditorSelection {
    mut object_out := EditorSelection(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2690272531)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_editor_settings() EditorSettings {
    mut object_out := EditorSettings(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_settings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4086932459)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) make_mesh_previews(meshes Array, preview_size i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("make_mesh_previews")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 878078554)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&meshes)}
    args[1] = unsafe{voidptr(&preview_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) set_plugin_enabled(plugin String, enabled bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_plugin_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) is_plugin_enabled(plugin String) bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_plugin_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&plugin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_base_control() Control {
    mut object_out := Control(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_editor_main_screen() VBoxContainer {
    mut object_out := VBoxContainer(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_main_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706218421)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_script_editor() ScriptEditor {
    mut object_out := ScriptEditor(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 90868003)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) set_main_screen_editor(name String) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_main_screen_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) set_distraction_free_mode(enter bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_distraction_free_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) is_distraction_free_mode_enabled() bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_distraction_free_mode_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_editor_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) popup_dialog(dialog Window, rect Rect2i) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("popup_dialog")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2478844058)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) popup_dialog_centered(dialog Window, minsize Vector2i) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("popup_dialog_centered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1723337679)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) popup_dialog_centered_ratio(dialog Window, ratio f32) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("popup_dialog_centered_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1310934579)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) popup_dialog_centered_clamped(dialog Window, minsize Vector2i, fallback_ratio f32) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("popup_dialog_centered_clamped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3433759678)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) get_file_system_dock() FileSystemDock {
    mut object_out := FileSystemDock(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_system_dock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3751012327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) select_file(file String) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("select_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) get_selected_paths() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected_paths")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_current_path() String {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_current_directory() String {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_directory")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_inspector() EditorInspector {
    mut object_out := EditorInspector(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_inspector")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3517113938)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) inspect_object(object Object, for_property String, inspector_only bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("inspect_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2564140749)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) edit_resource(resource Resource) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("edit_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) edit_node(node Node) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("edit_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) edit_script(script Script, line i32, column i32, grab_focus bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("edit_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3664508569)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) open_scene_from_path(scene_filepath String) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("open_scene_from_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) reload_scene_from_path(scene_filepath String) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("reload_scene_from_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) get_open_scenes() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_open_scenes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_edited_scene_root() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_edited_scene_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) save_scene() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("save_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) save_scene_as(path String, with_preview bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("save_scene_as")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168363258)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) mark_scene_as_unsaved() {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("mark_scene_as_unsaved")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) play_main_scene() {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("play_main_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) play_current_scene() {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("play_current_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) play_custom_scene(scene_filepath String) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("play_custom_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInterface) stop_playing_scene() {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("stop_playing_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) is_playing_scene() bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_playing_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorInterface) get_playing_scene() String {
    mut object_out := String{}
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_playing_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInterface) set_movie_maker_enabled(enabled bool) {
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_movie_maker_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorInterface) is_movie_maker_enabled() bool {
    mut object_out := false
    classname := StringName.new("EditorInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_movie_maker_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

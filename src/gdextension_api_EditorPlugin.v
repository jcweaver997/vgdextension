module vgdextension

pub enum EditorPluginCustomControlContainer as i64 {
    container_toolbar = 0
    container_spatial_editor_menu = 1
    container_spatial_editor_side_left = 2
    container_spatial_editor_side_right = 3
    container_spatial_editor_bottom = 4
    container_canvas_editor_menu = 5
    container_canvas_editor_side_left = 6
    container_canvas_editor_side_right = 7
    container_canvas_editor_bottom = 8
    container_inspector_bottom = 9
    container_project_setting_tab_left = 10
    container_project_setting_tab_right = 11
}

pub enum EditorPluginDockSlot as i64 {
    dock_slot_left_ul = 0
    dock_slot_left_bl = 1
    dock_slot_left_ur = 2
    dock_slot_left_br = 3
    dock_slot_right_ul = 4
    dock_slot_right_bl = 5
    dock_slot_right_ur = 6
    dock_slot_right_br = 7
    dock_slot_max = 8
}

pub enum EditorPluginAfterGUIInput as i64 {
    after_gui_input_pass = 0
    after_gui_input_stop = 1
    after_gui_input_custom = 2
}

@[noinit]
pub struct EditorPlugin {
    Node
}

pub interface IEditorPluginForwardCanvasGuiInput {
    mut:
    virt_forward_canvas_gui_input(event InputEvent) bool
}

pub fn (r &EditorPlugin) uforward_canvas_gui_input(event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_forward_canvas_gui_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&event.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginForwardCanvasDrawOverViewport {
    mut:
    virt_forward_canvas_draw_over_viewport(viewport_control Control)
}

pub fn (r &EditorPlugin) uforward_canvas_draw_over_viewport(viewport_control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_forward_canvas_draw_over_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&viewport_control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginForwardCanvasForceDrawOverViewport {
    mut:
    virt_forward_canvas_force_draw_over_viewport(viewport_control Control)
}

pub fn (r &EditorPlugin) uforward_canvas_force_draw_over_viewport(viewport_control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_forward_canvas_force_draw_over_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&viewport_control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginForward3dGuiInput {
    mut:
    virt_forward_3d_gui_input(viewport_camera Camera3D, event InputEvent) i32
}

pub fn (r &EditorPlugin) uforward_3d_gui_input(viewport_camera Camera3D, event InputEvent) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_forward_3d_gui_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&viewport_camera.ptr)
    args[1] = voidptr(&event.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginForward3dDrawOverViewport {
    mut:
    virt_forward_3d_draw_over_viewport(viewport_control Control)
}

pub fn (r &EditorPlugin) uforward_3d_draw_over_viewport(viewport_control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_forward_3d_draw_over_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&viewport_control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginForward3dForceDrawOverViewport {
    mut:
    virt_forward_3d_force_draw_over_viewport(viewport_control Control)
}

pub fn (r &EditorPlugin) uforward_3d_force_draw_over_viewport(viewport_control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_forward_3d_force_draw_over_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&viewport_control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginGetPluginName {
    mut:
    virt_get_plugin_name() String
}

pub fn (r &EditorPlugin) uget_plugin_name() string {
    mut object_out := String{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_get_plugin_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorPluginGetPluginIcon {
    mut:
    virt_get_plugin_icon() Texture2D
}

pub fn (r &EditorPlugin) uget_plugin_icon() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_get_plugin_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginHasMainScreen {
    mut:
    virt_has_main_screen() bool
}

pub fn (r &EditorPlugin) uhas_main_screen() bool {
    mut object_out := false
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_has_main_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginMakeVisible {
    mut:
    virt_make_visible(visible bool)
}

pub fn (r &EditorPlugin) umake_visible(visible bool) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_make_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginEdit {
    mut:
    virt_edit(object Object)
}

pub fn (r &EditorPlugin) uedit(object Object) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_edit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&object.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginHandles {
    mut:
    virt_handles(object Object) bool
}

pub fn (r &EditorPlugin) uhandles(object Object) bool {
    mut object_out := false
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_handles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&object.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginGetState {
    mut:
    virt_get_state() Dictionary
}

pub fn (r &EditorPlugin) uget_state() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginSetState {
    mut:
    virt_set_state(state Dictionary)
}

pub fn (r &EditorPlugin) uset_state(state Dictionary) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_set_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginClear {
    mut:
    virt_clear()
}

pub fn (r &EditorPlugin) uclear() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginGetUnsavedStatus {
    mut:
    virt_get_unsaved_status(for_scene String) String
}

pub fn (r &EditorPlugin) uget_unsaved_status(for_scene string) string {
    mut object_out := String{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_get_unsaved_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(for_scene)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorPluginSaveExternalData {
    mut:
    virt_save_external_data()
}

pub fn (r &EditorPlugin) usave_external_data() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_save_external_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginApplyChanges {
    mut:
    virt_apply_changes()
}

pub fn (r &EditorPlugin) uapply_changes() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_apply_changes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginGetBreakpoints {
    mut:
    virt_get_breakpoints() PackedStringArray
}

pub fn (r &EditorPlugin) uget_breakpoints() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_get_breakpoints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginSetWindowLayout {
    mut:
    virt_set_window_layout(configuration ConfigFile)
}

pub fn (r &EditorPlugin) uset_window_layout(configuration ConfigFile) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_set_window_layout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&configuration.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginGetWindowLayout {
    mut:
    virt_get_window_layout(configuration ConfigFile)
}

pub fn (r &EditorPlugin) uget_window_layout(configuration ConfigFile) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_get_window_layout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&configuration.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginBuild {
    mut:
    virt_build() bool
}

pub fn (r &EditorPlugin) ubuild() bool {
    mut object_out := false
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_build")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorPluginEnablePlugin {
    mut:
    virt_enable_plugin()
}

pub fn (r &EditorPlugin) uenable_plugin() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_enable_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPluginDisablePlugin {
    mut:
    virt_disable_plugin()
}

pub fn (r &EditorPlugin) udisable_plugin() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("_disable_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_control_to_container(container EditorPluginCustomControlContainer, control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_control_to_container")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3092750152)
    mut args := unsafe { [2]voidptr{} }
    i64_container := i64(container)
    args[0] = unsafe{voidptr(&i64_container)}
    args[1] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_control_to_bottom_panel(control Control, title string) Button {
    mut object_out := Button{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_control_to_bottom_panel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3526039376)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&control.ptr)
    arg_sn1 := String.new(title)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPlugin) add_control_to_dock(slot EditorPluginDockSlot, control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_control_to_dock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354871258)
    mut args := unsafe { [2]voidptr{} }
    i64_slot := i64(slot)
    args[0] = unsafe{voidptr(&i64_slot)}
    args[1] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_control_from_docks(control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_control_from_docks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_control_from_bottom_panel(control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_control_from_bottom_panel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_control_from_container(container EditorPluginCustomControlContainer, control Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_control_from_container")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3092750152)
    mut args := unsafe { [2]voidptr{} }
    i64_container := i64(container)
    args[0] = unsafe{voidptr(&i64_container)}
    args[1] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_tool_menu_item(name string, callable Callable) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_tool_menu_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137474292)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_tool_submenu_item(name string, submenu PopupMenu) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_tool_submenu_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1019428915)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&submenu.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_tool_menu_item(name string) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_tool_menu_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) get_export_as_menu() PopupMenu {
    mut object_out := PopupMenu{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("get_export_as_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1775878644)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPlugin) add_custom_type(type_name string, base string, script Script, icon Texture2D) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_custom_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1986814599)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(base)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = voidptr(&script.ptr)
    args[3] = voidptr(&icon.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_custom_type(type_name string) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_custom_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_autoload_singleton(name string, path string) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_autoload_singleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_autoload_singleton(name string) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_autoload_singleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) update_overlays() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("update_overlays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPlugin) make_bottom_panel_item_visible(item Control) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("make_bottom_panel_item_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&item.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) hide_bottom_panel() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("hide_bottom_panel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) get_undo_redo() EditorUndoRedoManager {
    mut object_out := EditorUndoRedoManager{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("get_undo_redo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 773492341)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPlugin) add_undo_redo_inspector_hook_callback(callable Callable) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_undo_redo_inspector_hook_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_undo_redo_inspector_hook_callback(callable Callable) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_undo_redo_inspector_hook_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) queue_save_layout() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("queue_save_layout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_translation_parser_plugin(parser EditorTranslationParserPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_translation_parser_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3116463128)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&parser.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_translation_parser_plugin(parser EditorTranslationParserPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_translation_parser_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3116463128)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&parser.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_import_plugin(importer EditorImportPlugin, first_priority bool) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_import_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3113975762)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&importer.ptr)
    args[1] = unsafe{voidptr(&first_priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_import_plugin(importer EditorImportPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_import_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312482773)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&importer.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_scene_format_importer_plugin(scene_format_importer EditorSceneFormatImporter, first_priority bool) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_scene_format_importer_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2764104752)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&scene_format_importer.ptr)
    args[1] = unsafe{voidptr(&first_priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_scene_format_importer_plugin(scene_format_importer EditorSceneFormatImporter) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_scene_format_importer_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637776123)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scene_format_importer.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_scene_post_import_plugin(scene_import_plugin EditorScenePostImportPlugin, first_priority bool) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_scene_post_import_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3492436322)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&scene_import_plugin.ptr)
    args[1] = unsafe{voidptr(&first_priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_scene_post_import_plugin(scene_import_plugin EditorScenePostImportPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_scene_post_import_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3045178206)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scene_import_plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_export_plugin(plugin EditorExportPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_export_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4095952207)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_export_plugin(plugin EditorExportPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_export_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4095952207)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_node_3d_gizmo_plugin(plugin EditorNode3DGizmoPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_node_3d_gizmo_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1541015022)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_node_3d_gizmo_plugin(plugin EditorNode3DGizmoPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_node_3d_gizmo_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1541015022)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_inspector_plugin(plugin EditorInspectorPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_inspector_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 546395733)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_inspector_plugin(plugin EditorInspectorPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_inspector_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 546395733)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) add_resource_conversion_plugin(plugin EditorResourceConversionPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_resource_conversion_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124849111)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_resource_conversion_plugin(plugin EditorResourceConversionPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_resource_conversion_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124849111)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plugin.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) set_input_event_forwarding_always_enabled() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("set_input_event_forwarding_always_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) set_force_draw_over_forwarding_enabled() {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("set_force_draw_over_forwarding_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) get_editor_interface() EditorInterface {
    mut object_out := EditorInterface{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("get_editor_interface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223731786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPlugin) get_script_create_dialog() ScriptCreateDialog {
    mut object_out := ScriptCreateDialog{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("get_script_create_dialog")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3121871482)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorPlugin) add_debugger_plugin(script EditorDebuggerPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("add_debugger_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749880309)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&script.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) remove_debugger_plugin(script EditorDebuggerPlugin) {
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("remove_debugger_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749880309)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&script.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorPlugin) get_plugin_version() string {
    mut object_out := String{}
    classname := StringName.new("EditorPlugin")
    fnname := StringName.new("get_plugin_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}

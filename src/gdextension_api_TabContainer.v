module vgdextension

pub struct TabContainer {
    Container
}

pub fn (r &TabContainer) get_tab_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_current_tab(tab_idx i32) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_current_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TabContainer) get_previous_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_previous_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TabContainer) get_current_tab_control() Control {
    mut object_out := Control{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_tab_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TabContainer) get_tab_control(tab_idx i32) Control {
    mut object_out := Control{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1065994134)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_alignment(alignment TabBarAlignmentMode) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413632353)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_tab_alignment() TabBarAlignmentMode {
    mut object_out := TabBarAlignmentMode.alignment_left
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2178122193)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_clip_tabs(clip_tabs bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_clip_tabs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clip_tabs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_clip_tabs() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_clip_tabs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tabs_visible(visible bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tabs_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) are_tabs_visible() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("are_tabs_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_all_tabs_in_front(is_front bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_all_tabs_in_front")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&is_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) is_all_tabs_in_front() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_all_tabs_in_front")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_title(tab_idx i32, title String) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&title)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_tab_title(tab_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_tab_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_disabled(tab_idx i32, disabled bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) is_tab_disabled(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_tab_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_hidden(tab_idx i32, hidden bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) is_tab_hidden(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_tab_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_metadata(tab_idx i32, metadata Variant) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_tab_metadata(tab_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tab_button_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_button_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_tab_button_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_button_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TabContainer) get_tab_idx_at_point(point Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_idx_at_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TabContainer) get_tab_idx_from_control(control Control) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_idx_from_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787397975)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_popup(popup Node) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = popup.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_popup() Popup {
    mut object_out := Popup{}
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 111095082)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_drag_to_rearrange_enabled(enabled bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_to_rearrange_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_drag_to_rearrange_enabled() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_drag_to_rearrange_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_tabs_rearrange_group(group_id i32) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tabs_rearrange_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_tabs_rearrange_group() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tabs_rearrange_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabContainer) set_use_hidden_tabs_for_min_size(enabled bool) {
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_hidden_tabs_for_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabContainer) get_use_hidden_tabs_for_min_size() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_hidden_tabs_for_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

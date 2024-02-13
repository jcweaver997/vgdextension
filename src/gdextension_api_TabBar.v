module vgdextension

pub enum TabBarAlignmentMode {
    alignment_left = 0
    alignment_center = 1
    alignment_right = 2
    alignment_max = 3
}

pub enum TabBarCloseButtonDisplayPolicy {
    close_button_show_never = 0
    close_button_show_active_only = 1
    close_button_show_always = 2
    close_button_max = 3
}

@[noinit]
pub struct TabBar {
    Control
}

pub fn (mut r TabBar) set_tab_count(count i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_current_tab(tab_idx i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_current_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TabBar) get_previous_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_previous_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_title(tab_idx i32, title String) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&title)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_title(tab_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_text_direction(tab_idx i32, direction ControlTextDirection) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_text_direction(tab_idx i32) ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_language(tab_idx i32, language String) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_language(tab_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_icon_max_width(tab_idx i32, width i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_icon_max_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_icon_max_width(tab_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_icon_max_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_button_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_button_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_button_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_button_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_disabled(tab_idx i32, disabled bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) is_tab_disabled(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_tab_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_hidden(tab_idx i32, hidden bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) is_tab_hidden(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_tab_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_metadata(tab_idx i32, metadata Variant) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_metadata(tab_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) remove_tab(tab_idx i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("remove_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TabBar) add_tab(title String, icon Texture2D) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("add_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1465444425)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_idx_at_point(point Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_idx_at_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tab_alignment(alignment TabBarAlignmentMode) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413632353)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_alignment() TabBarAlignmentMode {
    mut object_out := TabBarAlignmentMode.alignment_left
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2178122193)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_clip_tabs(clip_tabs bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_clip_tabs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clip_tabs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_clip_tabs() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_clip_tabs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TabBar) get_tab_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TabBar) get_offset_buttons_visible() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset_buttons_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) ensure_tab_visible(idx i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("ensure_tab_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_rect(tab_idx i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) move_tab(from i32, to i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("move_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TabBar) set_tab_close_display_policy(policy TabBarCloseButtonDisplayPolicy) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_close_display_policy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2212906737)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&policy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tab_close_display_policy() TabBarCloseButtonDisplayPolicy {
    mut object_out := TabBarCloseButtonDisplayPolicy.close_button_show_never
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_close_display_policy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956568028)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_max_tab_width(width i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_tab_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_max_tab_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_tab_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_scrolling_enabled(enabled bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_scrolling_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_scrolling_enabled() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_scrolling_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_drag_to_rearrange_enabled(enabled bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_to_rearrange_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_drag_to_rearrange_enabled() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_drag_to_rearrange_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_tabs_rearrange_group(group_id i32) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tabs_rearrange_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_tabs_rearrange_group() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tabs_rearrange_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_scroll_to_selected(enabled bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_scroll_to_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_scroll_to_selected() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_scroll_to_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) set_select_with_rmb(enabled bool) {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_select_with_rmb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TabBar) get_select_with_rmb() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_select_with_rmb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TabBar) clear_tabs() {
    classname := StringName.new("TabBar")
    defer { classname.deinit() }
    fnname := StringName.new("clear_tabs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

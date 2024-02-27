module vgdextension

pub enum TabBarAlignmentMode as i64 {
    alignment_left = 0
    alignment_center = 1
    alignment_right = 2
    alignment_max = 3
}

pub enum TabBarCloseButtonDisplayPolicy as i64 {
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
    fnname := StringName.new("set_tab_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_current_tab(tab_idx i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_current_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_current_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_current_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabBar) get_previous_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_previous_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) select_previous_available() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("select_previous_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) select_next_available() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("select_next_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_title(tab_idx i32, title string) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    arg_sn1 := String.new(title)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_title(tab_idx i32) string {
    mut object_out := String{}
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r TabBar) set_tab_text_direction(tab_idx i32, direction ControlTextDirection) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    i64_direction := i64(direction)
    args[1] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_text_direction(tab_idx i32) ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (mut r TabBar) set_tab_language(tab_idx i32, language string) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_language(tab_idx i32) string {
    mut object_out := String{}
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r TabBar) set_tab_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_icon_max_width(tab_idx i32, width i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_icon_max_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_icon_max_width(tab_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_icon_max_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_button_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_button_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_button_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_button_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_disabled(tab_idx i32, disabled bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) is_tab_disabled(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("is_tab_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_hidden(tab_idx i32, hidden bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) is_tab_hidden(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("is_tab_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_metadata(tab_idx i32, metadata Variant) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_metadata(tab_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) remove_tab(tab_idx i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("remove_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TabBar) add_tab(title string, icon Texture2D) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("add_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1465444425)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_idx_at_point(point Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_idx_at_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tab_alignment(alignment TabBarAlignmentMode) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413632353)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_alignment() TabBarAlignmentMode {
    mut object_out := i64(TabBarAlignmentMode.alignment_left)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2178122193)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TabBarAlignmentMode(object_out)}
}
pub fn (mut r TabBar) set_clip_tabs(clip_tabs bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_clip_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clip_tabs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_clip_tabs() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_clip_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabBar) get_tab_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabBar) get_offset_buttons_visible() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_offset_buttons_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) ensure_tab_visible(idx i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("ensure_tab_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_rect(tab_idx i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) move_tab(from i32, to i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("move_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TabBar) set_tab_close_display_policy(policy TabBarCloseButtonDisplayPolicy) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tab_close_display_policy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2212906737)
    mut args := unsafe { [1]voidptr{} }
    i64_policy := i64(policy)
    args[0] = unsafe{voidptr(&i64_policy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tab_close_display_policy() TabBarCloseButtonDisplayPolicy {
    mut object_out := i64(TabBarCloseButtonDisplayPolicy.close_button_show_never)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tab_close_display_policy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956568028)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TabBarCloseButtonDisplayPolicy(object_out)}
}
pub fn (mut r TabBar) set_max_tab_width(width i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_max_tab_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_max_tab_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_max_tab_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_scrolling_enabled(enabled bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_scrolling_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_scrolling_enabled() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_scrolling_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_drag_to_rearrange_enabled(enabled bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_drag_to_rearrange_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_drag_to_rearrange_enabled() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_drag_to_rearrange_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_tabs_rearrange_group(group_id i32) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_tabs_rearrange_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_tabs_rearrange_group() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_tabs_rearrange_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_scroll_to_selected(enabled bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_scroll_to_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_scroll_to_selected() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_scroll_to_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) set_select_with_rmb(enabled bool) {
    classname := StringName.new("TabBar")
    fnname := StringName.new("set_select_with_rmb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabBar) get_select_with_rmb() bool {
    mut object_out := false
    classname := StringName.new("TabBar")
    fnname := StringName.new("get_select_with_rmb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TabBar) clear_tabs() {
    classname := StringName.new("TabBar")
    fnname := StringName.new("clear_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

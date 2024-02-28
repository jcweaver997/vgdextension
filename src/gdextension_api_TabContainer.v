module vgdextension

@[noinit]
pub struct TabContainer {
    Container
}

pub fn (r &TabContainer) get_tab_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_current_tab(tab_idx i32) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_current_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_current_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_current_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) get_previous_tab() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_previous_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) select_previous_available() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("select_previous_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) select_next_available() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("select_next_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) get_current_tab_control() Control {
    mut object_out := Control{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_current_tab_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) get_tab_bar() TabBar {
    mut object_out := TabBar{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_bar")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1865451809)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) get_tab_control(tab_idx i32) Control {
    mut object_out := Control{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1065994134)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_alignment(alignment TabBarAlignmentMode) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2413632353)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_tab_alignment() TabBarAlignmentMode {
    mut object_out := i64(TabBarAlignmentMode.alignment_left)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2178122193)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TabBarAlignmentMode(object_out)}
}
pub fn (r &TabContainer) set_clip_tabs(clip_tabs bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_clip_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clip_tabs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_clip_tabs() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_clip_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tabs_visible(visible bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tabs_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) are_tabs_visible() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("are_tabs_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_all_tabs_in_front(is_front bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_all_tabs_in_front")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&is_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) is_all_tabs_in_front() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("is_all_tabs_in_front")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_title(tab_idx i32, title string) {
    classname := StringName.new("TabContainer")
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
pub fn (r &TabContainer) get_tab_title(tab_idx i32) string {
    mut object_out := String{}
    classname := StringName.new("TabContainer")
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
pub fn (r &TabContainer) set_tab_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = voidptr(&icon.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_tab_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_disabled(tab_idx i32, disabled bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) is_tab_disabled(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("is_tab_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_hidden(tab_idx i32, hidden bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) is_tab_hidden(tab_idx i32) bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("is_tab_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_metadata(tab_idx i32, metadata Variant) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_tab_metadata(tab_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_button_icon(tab_idx i32, icon Texture2D) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_button_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    args[1] = voidptr(&icon.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_tab_button_icon(tab_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_button_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) get_tab_idx_at_point(point Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_idx_at_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) get_tab_idx_from_control(control Control) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_idx_from_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787397975)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_popup(popup Node) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&popup.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_popup() Popup {
    mut object_out := Popup{}
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 111095082)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_drag_to_rearrange_enabled(enabled bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_drag_to_rearrange_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_drag_to_rearrange_enabled() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_drag_to_rearrange_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tabs_rearrange_group(group_id i32) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tabs_rearrange_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_tabs_rearrange_group() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tabs_rearrange_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_use_hidden_tabs_for_min_size(enabled bool) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_use_hidden_tabs_for_min_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_use_hidden_tabs_for_min_size() bool {
    mut object_out := false
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_use_hidden_tabs_for_min_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TabContainer) set_tab_focus_mode(focus_mode ControlFocusMode) {
    classname := StringName.new("TabContainer")
    fnname := StringName.new("set_tab_focus_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3232914922)
    mut args := unsafe { [1]voidptr{} }
    i64_focus_mode := i64(focus_mode)
    args[0] = unsafe{voidptr(&i64_focus_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TabContainer) get_tab_focus_mode() ControlFocusMode {
    mut object_out := i64(ControlFocusMode.focus_none)
    classname := StringName.new("TabContainer")
    fnname := StringName.new("get_tab_focus_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2132829277)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlFocusMode(object_out)}
}

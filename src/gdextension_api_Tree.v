module vgdextension

pub enum TreeSelectMode as i64 {
    select_single = 0
    select_row = 1
    select_multi = 2
}

pub enum TreeDropModeFlags as i64 {
    drop_mode_disabled = 0
    drop_mode_on_item = 1
    drop_mode_inbetween = 2
}

@[noinit]
pub struct Tree {
    Control
}

pub fn (r &Tree) clear() {
    classname := StringName.new("Tree")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) create_item(parent TreeItem, index i32) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("Tree")
    fnname := StringName.new("create_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 528467046)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&parent.ptr)
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_root() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_column_custom_minimum_width(column i32, min_width i32) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_custom_minimum_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&min_width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) set_column_expand(column i32, expand bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_expand")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&expand)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) set_column_expand_ratio(column i32, ratio i32) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_expand_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) set_column_clip_content(column i32, enable bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_clip_content")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) is_column_expanding(column i32) bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_column_expanding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) is_column_clipping_content(column i32) bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_column_clipping_content")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_column_expand_ratio(column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_expand_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_column_width(column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_hide_root(enable bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_hide_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) is_root_hidden() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_root_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_next_selected(from TreeItem) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_next_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 873446299)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&from.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_selected() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_selected(item TreeItem, column i32) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662547442)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&item.ptr)
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_selected_column() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_selected_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_pressed_button() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_pressed_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_select_mode(mode TreeSelectMode) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_select_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3223887270)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_select_mode() TreeSelectMode {
    mut object_out := i64(TreeSelectMode.select_single)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_select_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 100748571)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TreeSelectMode(object_out)}
}
pub fn (r &Tree) deselect_all() {
    classname := StringName.new("Tree")
    fnname := StringName.new("deselect_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) set_columns(amount i32) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_columns")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_columns() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_columns")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_edited() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_edited")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_edited_column() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_edited_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) edit_selected(force_edit bool) bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("edit_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2595650253)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force_edit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_custom_popup_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_custom_popup_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_item_area_rect(item TreeItem, column i32, button_index i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_item_area_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 47968679)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&item.ptr)
    args[1] = unsafe{voidptr(&column)}
    args[2] = unsafe{voidptr(&button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_item_at_position(position Vector2) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_item_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4193340126)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_column_at_position(position Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_drop_section_at_position(position Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_drop_section_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) get_button_id_at_position(position Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_button_id_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) ensure_cursor_is_visible() {
    classname := StringName.new("Tree")
    fnname := StringName.new("ensure_cursor_is_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) set_column_titles_visible(visible bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_titles_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) are_column_titles_visible() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("are_column_titles_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_column_title(column i32, title string) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    arg_sn1 := String.new(title)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_column_title(column i32) string {
    mut object_out := String{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Tree) set_column_title_alignment(column i32, title_alignment HorizontalAlignment) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_title_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3276431499)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    i64_title_alignment := i64(title_alignment)
    args[1] = unsafe{voidptr(&i64_title_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_column_title_alignment(column i32) HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_title_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171562184)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (r &Tree) set_column_title_direction(column i32, direction ControlTextDirection) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_title_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    i64_direction := i64(direction)
    args[1] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_column_title_direction(column i32) ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_title_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (r &Tree) set_column_title_language(column i32, language string) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_column_title_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_column_title_language(column i32) string {
    mut object_out := String{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_column_title_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Tree) get_scroll() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Tree")
    fnname := StringName.new("get_scroll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) scroll_to_item(item TreeItem, center_on_item bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("scroll_to_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1314737213)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&item.ptr)
    args[1] = unsafe{voidptr(&center_on_item)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) set_h_scroll_enabled(h_scroll bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_h_scroll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&h_scroll)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) is_h_scroll_enabled() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_h_scroll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_v_scroll_enabled(h_scroll bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_v_scroll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&h_scroll)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) is_v_scroll_enabled() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_v_scroll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_hide_folding(hide bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_hide_folding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hide)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) is_folding_hidden() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_folding_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_enable_recursive_folding(enable bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_enable_recursive_folding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) is_recursive_folding_enabled() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("is_recursive_folding_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_drop_mode_flags(flags i32) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_drop_mode_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_drop_mode_flags() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tree")
    fnname := StringName.new("get_drop_mode_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_allow_rmb_select(allow bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_allow_rmb_select")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_allow_rmb_select() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("get_allow_rmb_select")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_allow_reselect(allow bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_allow_reselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_allow_reselect() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("get_allow_reselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Tree) set_allow_search(allow bool) {
    classname := StringName.new("Tree")
    fnname := StringName.new("set_allow_search")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Tree) get_allow_search() bool {
    mut object_out := false
    classname := StringName.new("Tree")
    fnname := StringName.new("get_allow_search")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

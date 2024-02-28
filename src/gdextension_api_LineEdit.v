module vgdextension

pub enum LineEditMenuItems as i64 {
    menu_cut = 0
    menu_copy = 1
    menu_paste = 2
    menu_clear = 3
    menu_select_all = 4
    menu_undo = 5
    menu_redo = 6
    menu_submenu_text_dir = 7
    menu_dir_inherited = 8
    menu_dir_auto = 9
    menu_dir_ltr = 10
    menu_dir_rtl = 11
    menu_display_ucc = 12
    menu_submenu_insert_ucc = 13
    menu_insert_lrm = 14
    menu_insert_rlm = 15
    menu_insert_lre = 16
    menu_insert_rle = 17
    menu_insert_lro = 18
    menu_insert_rlo = 19
    menu_insert_pdf = 20
    menu_insert_alm = 21
    menu_insert_lri = 22
    menu_insert_rli = 23
    menu_insert_fsi = 24
    menu_insert_pdi = 25
    menu_insert_zwj = 26
    menu_insert_zwnj = 27
    menu_insert_wj = 28
    menu_insert_shy = 29
    menu_max = 30
}

pub enum LineEditVirtualKeyboardType as i64 {
    keyboard_type_default = 0
    keyboard_type_multiline = 1
    keyboard_type_number = 2
    keyboard_type_number_decimal = 3
    keyboard_type_phone = 4
    keyboard_type_email_address = 5
    keyboard_type_password = 6
    keyboard_type_url = 7
}

@[noinit]
pub struct LineEdit {
    Control
}

pub fn (r &LineEdit) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (r &LineEdit) clear() {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) gdselect(from i32, to i32) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("select")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1328111411)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) select_all() {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("select_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) deselect() {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("deselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) has_selection() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("has_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) get_selected_text() string {
    mut object_out := String{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_selected_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &LineEdit) get_selection_from_column() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_selection_from_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) get_selection_to_column() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_selection_to_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_text(text string) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_text() string {
    mut object_out := String{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &LineEdit) get_draw_control_chars() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_draw_control_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_draw_control_chars(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_draw_control_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_text_direction() ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (r &LineEdit) set_language(language string) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(language)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_language() string {
    mut object_out := String{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &LineEdit) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    i64_parser := i64(parser)
    args[0] = unsafe{voidptr(&i64_parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := i64(TextServerStructuredTextParser.structured_text_default)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerStructuredTextParser(object_out)}
}
pub fn (r &LineEdit) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_placeholder(text string) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_placeholder() string {
    mut object_out := String{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &LineEdit) set_caret_column(position i32) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_caret_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_caret_column() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_caret_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) get_scroll_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_scroll_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_expand_to_text_length_enabled(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_expand_to_text_length_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_expand_to_text_length_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_expand_to_text_length_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_caret_blink_enabled(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_caret_blink_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_caret_blink_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_caret_blink_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_caret_mid_grapheme_enabled(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_caret_mid_grapheme_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_caret_mid_grapheme_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_caret_mid_grapheme_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_caret_force_displayed(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_caret_force_displayed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_caret_force_displayed() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_caret_force_displayed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_caret_blink_interval(interval f64) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_caret_blink_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interval)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_caret_blink_interval() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_caret_blink_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_max_length(chars i32) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_max_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&chars)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_max_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_max_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) insert_text_at_caret(text string) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("insert_text_at_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) delete_char_at_caret() {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("delete_char_at_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) delete_text(from_column i32, to_column i32) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("delete_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_column)}
    args[1] = unsafe{voidptr(&to_column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) set_editable(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_editable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_editable() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_editable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_secret(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_secret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_secret() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_secret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_secret_character(character string) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_secret_character")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(character)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_secret_character() string {
    mut object_out := String{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_secret_character")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &LineEdit) menu_option(option i32) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("menu_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_menu() PopupMenu {
    mut object_out := PopupMenu{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) is_menu_visible() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_menu_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_context_menu_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_context_menu_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_context_menu_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_context_menu_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_virtual_keyboard_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_virtual_keyboard_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_virtual_keyboard_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_virtual_keyboard_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_virtual_keyboard_type(type_name LineEditVirtualKeyboardType) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_virtual_keyboard_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2696893573)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_virtual_keyboard_type() LineEditVirtualKeyboardType {
    mut object_out := i64(LineEditVirtualKeyboardType.keyboard_type_default)
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_virtual_keyboard_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1928699316)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{LineEditVirtualKeyboardType(object_out)}
}
pub fn (r &LineEdit) set_clear_button_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_clear_button_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_clear_button_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_clear_button_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_shortcut_keys_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_shortcut_keys_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_shortcut_keys_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_shortcut_keys_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_middle_mouse_paste_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_middle_mouse_paste_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_middle_mouse_paste_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_middle_mouse_paste_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_selecting_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_selecting_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_selecting_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_selecting_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_deselect_on_focus_loss_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_deselect_on_focus_loss_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_deselect_on_focus_loss_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_deselect_on_focus_loss_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_drag_and_drop_selection_enabled(enable bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_drag_and_drop_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_drag_and_drop_selection_enabled() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_drag_and_drop_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_right_icon(icon Texture2D) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_right_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&icon.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) get_right_icon() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("LineEdit")
    fnname := StringName.new("get_right_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 255860311)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_flat(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_flat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_flat() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_flat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LineEdit) set_select_all_on_focus(enabled bool) {
    classname := StringName.new("LineEdit")
    fnname := StringName.new("set_select_all_on_focus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LineEdit) is_select_all_on_focus() bool {
    mut object_out := false
    classname := StringName.new("LineEdit")
    fnname := StringName.new("is_select_all_on_focus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

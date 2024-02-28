module vgdextension

pub enum TextEditMenuItems as i64 {
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

pub enum TextEditEditAction as i64 {
    action_none = 0
    action_typing = 1
    action_backspace = 2
    action_delete = 3
}

pub enum TextEditSearchFlags as i64 {
    search_match_case = 1
    search_whole_words = 2
    search_backwards = 4
}

pub enum TextEditCaretType as i64 {
    caret_type_line = 0
    caret_type_block = 1
}

pub enum TextEditSelectionMode as i64 {
    selection_mode_none = 0
    selection_mode_shift = 1
    selection_mode_pointer = 2
    selection_mode_word = 3
    selection_mode_line = 4
}

pub enum TextEditLineWrappingMode as i64 {
    line_wrapping_none = 0
    line_wrapping_boundary = 1
}

pub enum TextEditGutterType as i64 {
    gutter_type_string = 0
    gutter_type_icon = 1
    gutter_type_custom = 2
}

@[noinit]
pub struct TextEdit {
    Control
}

pub interface ITextEditHandleUnicodeInput {
    mut:
    virt_handle_unicode_input(unicode_char i32, caret_index i32)
}

pub fn (r &TextEdit) uhandle_unicode_input(unicode_char i32, caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("_handle_unicode_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&unicode_char)}
    args[1] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextEditBackspace {
    mut:
    virt_backspace(caret_index i32)
}

pub fn (r &TextEdit) ubackspace(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("_backspace")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextEditCut {
    mut:
    virt_cut(caret_index i32)
}

pub fn (r &TextEdit) ucut(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("_cut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextEditCopy {
    mut:
    virt_copy(caret_index i32)
}

pub fn (r &TextEdit) ucopy(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("_copy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextEditPaste {
    mut:
    virt_paste(caret_index i32)
}

pub fn (r &TextEdit) upaste(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("_paste")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextEditPastePrimaryClipboard {
    mut:
    virt_paste_primary_clipboard(caret_index i32)
}

pub fn (r &TextEdit) upaste_primary_clipboard(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("_paste_primary_clipboard")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) has_ime_text() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("has_ime_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_editable(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_editable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_editable() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_editable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_text_direction() ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (r &TextEdit) set_language(language string) {
    classname := StringName.new("TextEdit")
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
pub fn (r &TextEdit) get_language() string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    i64_parser := i64(parser)
    args[0] = unsafe{voidptr(&i64_parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := i64(TextServerStructuredTextParser.structured_text_default)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerStructuredTextParser(object_out)}
}
pub fn (r &TextEdit) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_tab_size(size i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_tab_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_tab_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_tab_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_overtype_mode_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_overtype_mode_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_overtype_mode_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_overtype_mode_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_context_menu_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_context_menu_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_context_menu_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_context_menu_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_shortcut_keys_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_shortcut_keys_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_shortcut_keys_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_shortcut_keys_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_virtual_keyboard_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_virtual_keyboard_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_virtual_keyboard_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_virtual_keyboard_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_middle_mouse_paste_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_middle_mouse_paste_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_middle_mouse_paste_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_middle_mouse_paste_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) clear() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_text(text string) {
    classname := StringName.new("TextEdit")
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
pub fn (r &TextEdit) get_text() string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) get_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_placeholder(text string) {
    classname := StringName.new("TextEdit")
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
pub fn (r &TextEdit) get_placeholder() string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) set_line(line i32, new_text string) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    arg_sn1 := String.new(new_text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line(line i32) string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) get_line_width(line i32, wrap_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 688195400)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&wrap_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_line_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_indent_level(line i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_indent_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_first_non_whitespace_column(line i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_first_non_whitespace_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) swap_lines(from_line i32, to_line i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("swap_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_line)}
    args[1] = unsafe{voidptr(&to_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) insert_line_at(line i32, text string) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("insert_line_at")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) insert_text_at_caret(text string, caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("insert_text_at_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2697778442)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) remove_text(from_line i32, from_column i32, to_line i32, to_column i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("remove_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4275841770)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from_line)}
    args[1] = unsafe{voidptr(&from_column)}
    args[2] = unsafe{voidptr(&to_line)}
    args[3] = unsafe{voidptr(&to_column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_last_unhidden_line() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_last_unhidden_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_next_visible_line_offset_from(line i32, visible_amount i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_next_visible_line_offset_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&visible_amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_next_visible_line_index_offset_from(line i32, wrap_index i32, visible_amount i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_next_visible_line_index_offset_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3386475622)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&wrap_index)}
    args[2] = unsafe{voidptr(&visible_amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) backspace(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("backspace")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) cut(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("cut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) copy(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("copy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) paste(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("paste")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) paste_primary_clipboard(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("paste_primary_clipboard")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) start_action(action TextEditEditAction) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("start_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2834827583)
    mut args := unsafe { [1]voidptr{} }
    i64_action := i64(action)
    args[0] = unsafe{voidptr(&i64_action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) end_action() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("end_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) begin_complex_operation() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("begin_complex_operation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) end_complex_operation() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("end_complex_operation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) has_undo() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("has_undo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) has_redo() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("has_redo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) undo() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("undo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) redo() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("redo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) clear_undo_history() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("clear_undo_history")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) tag_saved_version() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("tag_saved_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_version() u32 {
    mut object_out := u32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_saved_version() u32 {
    mut object_out := u32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_saved_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_search_text(search_text string) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_search_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(search_text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_search_flags(flags u32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_search_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) search(text string, flags u32, from_line i32, from_colum i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("search")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1203739136)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&flags)}
    args[2] = unsafe{voidptr(&from_line)}
    args[3] = unsafe{voidptr(&from_colum)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_tooltip_request_func(callback Callable) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_tooltip_request_func")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_local_mouse_pos() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_local_mouse_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_word_at_pos(position Vector2) string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_word_at_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674420000)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) get_line_column_at_pos(position Vector2i, allow_out_of_bounds bool) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_column_at_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 239517838)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&allow_out_of_bounds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_pos_at_line_column(line i32, column i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_pos_at_line_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410388347)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_rect_at_line_column(line i32, column i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_rect_at_line_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3256618057)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_minimap_line_at_pos(position Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_minimap_line_at_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) is_dragging_cursor() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_dragging_cursor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) is_mouse_over_selection(edges bool, caret_index i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_mouse_over_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1840282309)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&edges)}
    args[1] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_caret_type(type_name TextEditCaretType) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_caret_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1211596914)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_caret_type() TextEditCaretType {
    mut object_out := i64(TextEditCaretType.caret_type_line)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2830252959)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextEditCaretType(object_out)}
}
pub fn (r &TextEdit) set_caret_blink_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_caret_blink_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_caret_blink_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_caret_blink_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_caret_blink_interval(interval f64) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_caret_blink_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interval)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_caret_blink_interval() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_blink_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_draw_caret_when_editable_disabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_draw_caret_when_editable_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_drawing_caret_when_editable_disabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_drawing_caret_when_editable_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_move_caret_on_right_click_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_move_caret_on_right_click_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_move_caret_on_right_click_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_move_caret_on_right_click_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_caret_mid_grapheme_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_caret_mid_grapheme_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_caret_mid_grapheme_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_caret_mid_grapheme_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_multiple_carets_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_multiple_carets_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_multiple_carets_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_multiple_carets_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) add_caret(line i32, col i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("add_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&col)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) remove_caret(caret i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("remove_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) remove_secondary_carets() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("remove_secondary_carets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) merge_overlapping_carets() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("merge_overlapping_carets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_caret_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) add_caret_at_carets(below bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("add_caret_at_carets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&below)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_caret_index_edit_order() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_index_edit_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) adjust_carets_after_edit(caret i32, from_line i32, from_col i32, to_line i32, to_col i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("adjust_carets_after_edit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1770277138)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&caret)}
    args[1] = unsafe{voidptr(&from_line)}
    args[2] = unsafe{voidptr(&from_col)}
    args[3] = unsafe{voidptr(&to_line)}
    args[4] = unsafe{voidptr(&to_col)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_caret_visible(caret_index i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_caret_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_caret_draw_pos(caret_index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_draw_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 478253731)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_caret_line(line i32, adjust_viewport bool, can_be_hidden bool, wrap_index i32, caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_caret_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1302582944)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&adjust_viewport)}
    args[2] = unsafe{voidptr(&can_be_hidden)}
    args[3] = unsafe{voidptr(&wrap_index)}
    args[4] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_caret_line(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_caret_column(column i32, adjust_viewport bool, caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_caret_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3796796178)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&adjust_viewport)}
    args[2] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_caret_column(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_caret_wrap_index(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_caret_wrap_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_word_under_caret(caret_index i32) string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_word_under_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3929349208)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) set_selecting_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_selecting_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_selecting_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_selecting_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_deselect_on_focus_loss_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_deselect_on_focus_loss_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_deselect_on_focus_loss_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_deselect_on_focus_loss_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_drag_and_drop_selection_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_drag_and_drop_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_drag_and_drop_selection_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_drag_and_drop_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_selection_mode(mode TextEditSelectionMode, line i32, column i32, caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_selection_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1443345937)
    mut args := unsafe { [4]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    args[1] = unsafe{voidptr(&line)}
    args[2] = unsafe{voidptr(&column)}
    args[3] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_selection_mode() TextEditSelectionMode {
    mut object_out := i64(TextEditSelectionMode.selection_mode_none)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3750106938)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextEditSelectionMode(object_out)}
}
pub fn (r &TextEdit) select_all() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("select_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) select_word_under_caret(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("select_word_under_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) add_selection_for_next_occurrence() {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("add_selection_for_next_occurrence")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) gdselect(from_line i32, from_column i32, to_line i32, to_column i32, caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("select")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2560984452)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&from_line)}
    args[1] = unsafe{voidptr(&from_column)}
    args[2] = unsafe{voidptr(&to_line)}
    args[3] = unsafe{voidptr(&to_column)}
    args[4] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) has_selection(caret_index i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("has_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2824505868)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_selected_text(caret_index i32) string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selected_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) get_selection_line(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_selection_column(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_selection_from_line(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_from_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_selection_from_column(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_from_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_selection_to_line(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_to_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_selection_to_column(caret_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_selection_to_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) deselect(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("deselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) delete_selection(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("delete_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_line_wrapping_mode(mode TextEditLineWrappingMode) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_wrapping_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2525115309)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line_wrapping_mode() TextEditLineWrappingMode {
    mut object_out := i64(TextEditLineWrappingMode.line_wrapping_none)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_wrapping_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3562716114)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextEditLineWrappingMode(object_out)}
}
pub fn (r &TextEdit) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    mut args := unsafe { [1]voidptr{} }
    i64_autowrap_mode := i64(autowrap_mode)
    args[0] = unsafe{voidptr(&i64_autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := i64(TextServerAutowrapMode.autowrap_off)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerAutowrapMode(object_out)}
}
pub fn (r &TextEdit) is_line_wrapped(line i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_line_wrapped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_line_wrap_count(line i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_wrap_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_line_wrap_index_at_column(line i32, column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_wrap_index_at_column")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_line_wrapped_text(line i32) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_wrapped_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_smooth_scroll_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_smooth_scroll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_smooth_scroll_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_smooth_scroll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_v_scroll_bar() VScrollBar {
    mut object_out := VScrollBar{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_v_scroll_bar")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3226026593)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_h_scroll_bar() HScrollBar {
    mut object_out := HScrollBar{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_h_scroll_bar")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774687988)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_v_scroll(value f64) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_v_scroll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_v_scroll() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_v_scroll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_h_scroll(value i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_h_scroll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_h_scroll() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_h_scroll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_scroll_past_end_of_file_enabled(enable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_scroll_past_end_of_file_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_scroll_past_end_of_file_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_scroll_past_end_of_file_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_v_scroll_speed(speed f64) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_v_scroll_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_v_scroll_speed() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_v_scroll_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_fit_content_height_enabled(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_fit_content_height_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_fit_content_height_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_fit_content_height_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_scroll_pos_for_line(line i32, wrap_index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_scroll_pos_for_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3929084198)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&wrap_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_as_first_visible(line i32, wrap_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_as_first_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&wrap_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_first_visible_line() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_first_visible_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_as_center_visible(line i32, wrap_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_as_center_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&wrap_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_line_as_last_visible(line i32, wrap_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_as_last_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&wrap_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_last_full_visible_line() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_last_full_visible_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_last_full_visible_line_wrap_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_last_full_visible_line_wrap_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_visible_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_visible_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_visible_line_count_in_range(from_line i32, to_line i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_visible_line_count_in_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_line)}
    args[1] = unsafe{voidptr(&to_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_total_visible_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_total_visible_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) adjust_viewport_to_caret(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("adjust_viewport_to_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) center_viewport_to_caret(caret_index i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("center_viewport_to_caret")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&caret_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_draw_minimap(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_draw_minimap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_drawing_minimap() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_drawing_minimap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_minimap_width(width i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_minimap_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_minimap_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_minimap_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_minimap_visible_lines() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_minimap_visible_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) add_gutter(at i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("add_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&at)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) remove_gutter(gutter i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("remove_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_gutter_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_gutter_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_gutter_name(gutter i32, name string) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_gutter_name(gutter i32) string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_gutter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) set_gutter_type(gutter i32, type_name TextEditGutterType) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1088959071)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_gutter_type(gutter i32) TextEditGutterType {
    mut object_out := i64(TextEditGutterType.gutter_type_string)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_gutter_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1159699127)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextEditGutterType(object_out)}
}
pub fn (r &TextEdit) set_gutter_width(gutter i32, width i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    args[1] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_gutter_width(gutter i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_gutter_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_gutter_draw(gutter i32, draw bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    args[1] = unsafe{voidptr(&draw)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_gutter_drawn(gutter i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_gutter_drawn")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_gutter_clickable(gutter i32, clickable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_clickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    args[1] = unsafe{voidptr(&clickable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_gutter_clickable(gutter i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_gutter_clickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_gutter_overwritable(gutter i32, overwritable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_overwritable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    args[1] = unsafe{voidptr(&overwritable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_gutter_overwritable(gutter i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_gutter_overwritable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) merge_gutters(from_line i32, to_line i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("merge_gutters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_line)}
    args[1] = unsafe{voidptr(&to_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_gutter_custom_draw(column i32, draw_callback Callable) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_gutter_custom_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 957362965)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&draw_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_total_gutter_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_total_gutter_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_gutter_metadata(line i32, gutter i32, metadata Variant) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_gutter_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060538656)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    args[2] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line_gutter_metadata(line i32, gutter i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_gutter_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 678354945)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_gutter_text(line i32, gutter i32, text string) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_gutter_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    arg_sn2 := String.new(text)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line_gutter_text(line i32, gutter i32) string {
    mut object_out := String{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_gutter_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextEdit) set_line_gutter_icon(line i32, gutter i32, icon Texture2D) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_gutter_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 176101966)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    args[2] = voidptr(&icon.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line_gutter_icon(line i32, gutter i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_gutter_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584904275)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_gutter_item_color(line i32, gutter i32, color Color) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_gutter_item_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line_gutter_item_color(line i32, gutter i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_gutter_item_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_gutter_clickable(line i32, gutter i32, clickable bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_gutter_clickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    args[2] = unsafe{voidptr(&clickable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_line_gutter_clickable(line i32, gutter i32) bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_line_gutter_clickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&gutter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_line_background_color(line i32, color Color) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_line_background_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_line_background_color(line i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_line_background_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_syntax_highlighter(syntax_highlighter SyntaxHighlighter) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_syntax_highlighter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2765644541)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&syntax_highlighter.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) get_syntax_highlighter() SyntaxHighlighter {
    mut object_out := SyntaxHighlighter{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_syntax_highlighter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2721131626)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_highlight_current_line(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_highlight_current_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_highlight_current_line_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_highlight_current_line_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_highlight_all_occurrences(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_highlight_all_occurrences")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_highlight_all_occurrences_enabled() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_highlight_all_occurrences_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_draw_control_chars() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_draw_control_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_draw_control_chars(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_draw_control_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) set_draw_tabs(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_draw_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_drawing_tabs() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_drawing_tabs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) set_draw_spaces(enabled bool) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("set_draw_spaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextEdit) is_drawing_spaces() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_drawing_spaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) get_menu() PopupMenu {
    mut object_out := PopupMenu{}
    classname := StringName.new("TextEdit")
    fnname := StringName.new("get_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) is_menu_visible() bool {
    mut object_out := false
    classname := StringName.new("TextEdit")
    fnname := StringName.new("is_menu_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextEdit) menu_option(option i32) {
    classname := StringName.new("TextEdit")
    fnname := StringName.new("menu_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

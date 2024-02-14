module vgdextension

pub enum RichTextLabelListType as i64 {
    list_numbers = 0
    list_letters = 1
    list_roman = 2
    list_dots = 3
}

pub enum RichTextLabelMenuItems as i64 {
    menu_copy = 0
    menu_select_all = 1
    menu_max = 2
}

pub enum RichTextLabelImageUpdateMask as i64 {
    update_texture = 1
    update_size = 2
    update_color = 4
    update_alignment = 8
    update_region = 16
    update_pad = 32
    update_tooltip = 64
    update_width_in_percent = 128
}

@[noinit]
pub struct RichTextLabel {
    Control
}

pub fn (r &RichTextLabel) get_parsed_text() String {
    mut object_out := String{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_parsed_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) add_text(text String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("add_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_text(text String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) add_image(image Texture2D, width i32, height i32, color Color, inline_align InlineAlignment, region Rect2, key Variant, pad bool, tooltip String, size_in_percent bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("add_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3017663154)
    mut args := unsafe { [10]voidptr{} }
    args[0] = image.ptr
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    args[3] = unsafe{voidptr(&color)}
    i64_inline_align := i64(inline_align)
    args[4] = unsafe{voidptr(&i64_inline_align)}
    args[5] = unsafe{voidptr(&region)}
    args[6] = unsafe{voidptr(&key)}
    args[7] = unsafe{voidptr(&pad)}
    args[8] = unsafe{voidptr(&tooltip)}
    args[9] = unsafe{voidptr(&size_in_percent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) update_image(key Variant, mask RichTextLabelImageUpdateMask, image Texture2D, width i32, height i32, color Color, inline_align InlineAlignment, region Rect2, pad bool, tooltip String, size_in_percent bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("update_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 815048486)
    mut args := unsafe { [11]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    i64_mask := i64(mask)
    args[1] = unsafe{voidptr(&i64_mask)}
    args[2] = image.ptr
    args[3] = unsafe{voidptr(&width)}
    args[4] = unsafe{voidptr(&height)}
    args[5] = unsafe{voidptr(&color)}
    i64_inline_align := i64(inline_align)
    args[6] = unsafe{voidptr(&i64_inline_align)}
    args[7] = unsafe{voidptr(&region)}
    args[8] = unsafe{voidptr(&pad)}
    args[9] = unsafe{voidptr(&tooltip)}
    args[10] = unsafe{voidptr(&size_in_percent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) newline() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("newline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) remove_paragraph(paragraph i32) bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("remove_paragraph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paragraph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) push_font(font Font, font_size i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2347424842)
    mut args := unsafe { [2]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_font_size(font_size i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_normal() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_bold() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_bold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_bold_italics() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_bold_italics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_italics() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_italics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_mono() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_mono")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_color(color Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_outline_size(outline_size i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_outline_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&outline_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_outline_color(color Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_outline_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_paragraph(alignment HorizontalAlignment, base_direction ControlTextDirection, language String, st_parser TextServerStructuredTextParser, justification_flags TextServerJustificationFlag, tab_stops PackedFloat32Array) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_paragraph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089306873)
    mut args := unsafe { [6]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    i64_base_direction := i64(base_direction)
    args[1] = unsafe{voidptr(&i64_base_direction)}
    args[2] = unsafe{voidptr(&language)}
    i64_st_parser := i64(st_parser)
    args[3] = unsafe{voidptr(&i64_st_parser)}
    i64_justification_flags := i64(justification_flags)
    args[4] = unsafe{voidptr(&i64_justification_flags)}
    args[5] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_indent(level i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_indent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_list(level i32, type_name RichTextLabelListType, capitalize bool, bullet String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3017143144)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    args[2] = unsafe{voidptr(&capitalize)}
    args[3] = unsafe{voidptr(&bullet)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_meta(data Variant) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_hint(description String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&description)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_language(language String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_underline() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_underline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_strikethrough() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_strikethrough")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_table(columns i32, inline_align InlineAlignment, align_to_row i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_table")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2623499273)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&columns)}
    i64_inline_align := i64(inline_align)
    args[1] = unsafe{voidptr(&i64_inline_align)}
    args[2] = unsafe{voidptr(&align_to_row)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_dropcap(gdstring String, font Font, size i32, dropcap_margins Rect2, color Color, outline_size i32, outline_color Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_dropcap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4061635501)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = font.ptr
    args[2] = unsafe{voidptr(&size)}
    args[3] = unsafe{voidptr(&dropcap_margins)}
    args[4] = unsafe{voidptr(&color)}
    args[5] = unsafe{voidptr(&outline_size)}
    args[6] = unsafe{voidptr(&outline_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_table_column_expand(column i32, expand bool, ratio i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_table_column_expand")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2185176273)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&expand)}
    args[2] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_cell_row_background_color(odd_row_bg Color, even_row_bg Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_cell_row_background_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3465483165)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&odd_row_bg)}
    args[1] = unsafe{voidptr(&even_row_bg)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_cell_border_color(color Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_cell_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_cell_size_override(min_size Vector2, max_size Vector2) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_cell_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108078480)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&min_size)}
    args[1] = unsafe{voidptr(&max_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_cell_padding(padding Rect2) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_cell_padding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&padding)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_cell() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_cell")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_fgcolor(fgcolor Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_fgcolor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fgcolor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_bgcolor(bgcolor Color) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_bgcolor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bgcolor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_customfx(effect RichTextEffect, env Dictionary) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_customfx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2337942958)
    mut args := unsafe { [2]voidptr{} }
    args[0] = effect.ptr
    args[1] = unsafe{voidptr(&env)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) push_context() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("push_context")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) pop_context() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("pop_context")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) pop() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("pop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) pop_all() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("pop_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) clear() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    i64_parser := i64(parser)
    args[0] = unsafe{voidptr(&i64_parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := i64(TextServerStructuredTextParser.structured_text_default)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerStructuredTextParser(object_out)}
}
pub fn (mut r RichTextLabel) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_text_direction() ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (mut r RichTextLabel) set_language(language String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_language() String {
    mut object_out := String{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    mut args := unsafe { [1]voidptr{} }
    i64_autowrap_mode := i64(autowrap_mode)
    args[0] = unsafe{voidptr(&i64_autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := i64(TextServerAutowrapMode.autowrap_off)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerAutowrapMode(object_out)}
}
pub fn (mut r RichTextLabel) set_meta_underline(enable bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_meta_underline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_meta_underlined() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_meta_underlined")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_hint_underline(enable bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_hint_underline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_hint_underlined() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_hint_underlined")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_scroll_active(active bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_scroll_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_scroll_active() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_scroll_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_scroll_follow(follow bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_scroll_follow")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&follow)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_scroll_following() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_scroll_following")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) get_v_scroll_bar() VScrollBar {
    mut object_out := VScrollBar{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_v_scroll_bar")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2630340773)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) scroll_to_line(line i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("scroll_to_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) scroll_to_paragraph(paragraph i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("scroll_to_paragraph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paragraph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) scroll_to_selection() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("scroll_to_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_tab_size(spaces i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_tab_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spaces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_tab_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_tab_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_fit_content(enabled bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_fit_content")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_fit_content_enabled() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_fit_content_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_selection_enabled(enabled bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_selection_enabled() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_context_menu_enabled(enabled bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_context_menu_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_context_menu_enabled() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_context_menu_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_shortcut_keys_enabled(enabled bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_shortcut_keys_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_shortcut_keys_enabled() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_shortcut_keys_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_deselect_on_focus_loss_enabled(enable bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_deselect_on_focus_loss_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_deselect_on_focus_loss_enabled() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_deselect_on_focus_loss_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_drag_and_drop_selection_enabled(enable bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_drag_and_drop_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_drag_and_drop_selection_enabled() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_drag_and_drop_selection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_selection_from() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_selection_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_selection_to() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_selection_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) select_all() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("select_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_selected_text() String {
    mut object_out := String{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_selected_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) deselect() {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("deselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) parse_bbcode(bbcode String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("parse_bbcode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bbcode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) append_text(bbcode String) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("append_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bbcode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_text() String {
    mut object_out := String{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) is_ready() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_threaded(threaded bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_threaded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threaded)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_threaded() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_threaded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_progress_bar_delay(delay_ms i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_progress_bar_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_progress_bar_delay() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_progress_bar_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_visible_characters(amount i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_visible_characters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_visible_characters() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_visible_characters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_visible_characters_behavior() TextServerVisibleCharactersBehavior {
    mut object_out := i64(TextServerVisibleCharactersBehavior.vc_chars_before_shaping)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_visible_characters_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 258789322)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerVisibleCharactersBehavior(object_out)}
}
pub fn (mut r RichTextLabel) set_visible_characters_behavior(behavior TextServerVisibleCharactersBehavior) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_visible_characters_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383839701)
    mut args := unsafe { [1]voidptr{} }
    i64_behavior := i64(behavior)
    args[0] = unsafe{voidptr(&i64_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) set_visible_ratio(ratio f64) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_visible_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_visible_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_visible_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) get_character_line(character i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_character_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&character)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) get_character_paragraph(character i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_character_paragraph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&character)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_total_character_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_total_character_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_use_bbcode(enable bool) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_use_bbcode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) is_using_bbcode() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_using_bbcode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_visible_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_visible_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_paragraph_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_paragraph_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_visible_paragraph_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_visible_paragraph_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_content_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_content_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) get_content_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_content_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) get_line_offset(line i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_line_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) get_paragraph_offset(paragraph i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_paragraph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paragraph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) parse_expressions_for_values(expressions PackedStringArray) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("parse_expressions_for_values")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1522900837)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&expressions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) set_effects(effects Array) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("set_effects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&effects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RichTextLabel) get_effects() Array {
    mut object_out := Array{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_effects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) install_effect(effect Variant) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("install_effect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&effect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RichTextLabel) get_menu() PopupMenu {
    mut object_out := PopupMenu{}
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("get_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RichTextLabel) is_menu_visible() bool {
    mut object_out := false
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("is_menu_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RichTextLabel) menu_option(option i32) {
    classname := StringName.new("RichTextLabel")
    fnname := StringName.new("menu_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

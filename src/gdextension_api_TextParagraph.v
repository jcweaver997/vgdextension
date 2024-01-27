module vgdextension

pub type TextParagraph = voidptr

pub fn (mut r TextParagraph) clear() {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextParagraph) set_direction(direction TextServerDirection) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_direction() TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_custom_punctuation(custom_punctuation String) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_punctuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_custom_punctuation() String {
    mut object_out := String{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_punctuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_orientation(orientation TextServerOrientation) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 42823726)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_orientation() TextServerOrientation {
    mut object_out := TextServerOrientation.orientation_horizontal
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 175768116)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_preserve_invalid(enabled bool) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_preserve_invalid() bool {
    mut object_out := false
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_preserve_control(enabled bool) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_preserve_control() bool {
    mut object_out := false
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_bidi_override(override Array) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextParagraph) set_dropcap(text String, font Font, font_size i32, dropcap_margins Rect2, language String) bool {
    mut object_out := false
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_dropcap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2613124475)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = unsafe{voidptr(&font)}
    args[2] = unsafe{voidptr(&font_size)}
    args[3] = unsafe{voidptr(&dropcap_margins)}
    args[4] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) clear_dropcap() {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("clear_dropcap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextParagraph) add_string(text String, font Font, font_size i32, language String, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("add_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 867188035)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = unsafe{voidptr(&font)}
    args[2] = unsafe{voidptr(&font_size)}
    args[3] = unsafe{voidptr(&language)}
    args[4] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) add_object(key Variant, size Vector2, inline_align InlineAlignment, length i32, baseline f32) bool {
    mut object_out := false
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("add_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 735420116)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&inline_align)}
    args[3] = unsafe{voidptr(&length)}
    args[4] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) resize_object(key Variant, size Vector2, inline_align InlineAlignment, baseline f32) bool {
    mut object_out := false
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("resize_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 960819067)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&inline_align)}
    args[3] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) tab_align(tab_stops PackedFloat32Array) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("tab_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextParagraph) set_break_flags(flags TextServerLineBreakFlag) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_break_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2809697122)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_break_flags() TextServerLineBreakFlag {
    mut object_out := TextServerLineBreakFlag(unsafe{nil})
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_break_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2340632602)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_justification_flags(flags TextServerJustificationFlag) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_justification_flags() TextServerJustificationFlag {
    mut object_out := TextServerJustificationFlag(unsafe{nil})
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := TextServerOverrunBehavior.overrun_no_trimming
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_width(width f32) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_width() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_non_wrapped_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_non_wrapped_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_rid(line i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_dropcap_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_dropcap_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextParagraph) set_max_lines_visible(max_lines_visible i32) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_lines_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) get_max_lines_visible() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_lines_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_objects(line i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_object_rect(line i32, key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_object_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 204315017)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_size(line i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_range(line i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 880721226)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_ascent(line i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_descent(line i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_width(line i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_underline_position(line i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_line_underline_thickness(line i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_dropcap_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_dropcap_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) get_dropcap_lines() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("get_dropcap_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextParagraph) draw(canvas RID, pos Vector2, color Color, dc_color Color) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 367324453)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) draw_outline(canvas RID, pos Vector2, outline_size i32, color Color, dc_color Color) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("draw_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2159523405)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) draw_line(canvas RID, pos Vector2, line i32, color Color) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("draw_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3963848920)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) draw_line_outline(canvas RID, pos Vector2, line i32, outline_size i32, color Color) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("draw_line_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1814903311)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) draw_dropcap(canvas RID, pos Vector2, color Color) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("draw_dropcap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1164457837)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) draw_dropcap_outline(canvas RID, pos Vector2, outline_size i32, color Color) {
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("draw_dropcap_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1364491366)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextParagraph) hit_test(coords Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextParagraph")
    defer { classname.deinit() }
    fnname := StringName.new("hit_test")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3820158470)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

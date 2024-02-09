module vgdextension

pub struct Label {
    Control
}

pub fn (mut r Label) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_vertical_alignment(alignment VerticalAlignment) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_vertical_alignment() VerticalAlignment {
    mut object_out := VerticalAlignment.vertical_alignment_top
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertical_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_text(text String) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_text() String {
    mut object_out := String{}
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_label_settings(settings LabelSettings) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_label_settings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1030653839)
    mut args := unsafe { [1]voidptr{} }
    args[0] = settings.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_label_settings() LabelSettings {
    mut object_out := LabelSettings{}
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_label_settings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 826676056)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_text_direction() ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_language(language String) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_language() String {
    mut object_out := String{}
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := TextServerAutowrapMode.autowrap_off
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_justification_flags(justification_flags TextServerJustificationFlag) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&justification_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_justification_flags() TextServerJustificationFlag {
    mut object_out := TextServerJustificationFlag.justification_none
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_clip_text(enable bool) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_clip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) is_clipping_text() bool {
    mut object_out := false
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("is_clipping_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_tab_stops(tab_stops PackedFloat32Array) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_tab_stops")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_tab_stops() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_tab_stops")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&overrun_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := TextServerOverrunBehavior.overrun_no_trimming
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_uppercase(enable bool) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_uppercase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) is_uppercase() bool {
    mut object_out := false
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("is_uppercase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Label) get_line_height(line i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 181039630)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Label) get_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Label) get_visible_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_visible_line_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Label) get_total_character_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_total_character_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_visible_characters(amount i32) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible_characters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_visible_characters() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_visible_characters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Label) get_visible_characters_behavior() TextServerVisibleCharactersBehavior {
    mut object_out := TextServerVisibleCharactersBehavior.vc_chars_before_shaping
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_visible_characters_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 258789322)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_visible_characters_behavior(behavior TextServerVisibleCharactersBehavior) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible_characters_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383839701)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Label) set_visible_ratio(ratio f64) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_visible_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_visible_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_lines_skipped(lines_skipped i32) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_lines_skipped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lines_skipped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_lines_skipped() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_lines_skipped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_max_lines_visible(lines_visible i32) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_lines_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lines_visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_max_lines_visible() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_lines_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := TextServerStructuredTextParser.structured_text_default
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Label) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("Label")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

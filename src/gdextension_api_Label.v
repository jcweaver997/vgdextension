module vgdextension

@[noinit]
pub struct Label {
    Control
}

pub fn (mut r Label) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("Label")
    fnname := StringName.new("get_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (mut r Label) set_vertical_alignment(alignment VerticalAlignment) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_vertical_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_vertical_alignment() VerticalAlignment {
    mut object_out := i64(VerticalAlignment.vertical_alignment_top)
    classname := StringName.new("Label")
    fnname := StringName.new("get_vertical_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VerticalAlignment(object_out)}
}
pub fn (mut r Label) set_text(text string) {
    classname := StringName.new("Label")
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
pub fn (r &Label) get_text() string {
    mut object_out := String{}
    classname := StringName.new("Label")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Label) set_label_settings(settings LabelSettings) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_label_settings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1030653839)
    mut args := unsafe { [1]voidptr{} }
    args[0] = settings.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_label_settings() LabelSettings {
    mut object_out := LabelSettings{}
    classname := StringName.new("Label")
    fnname := StringName.new("get_label_settings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 826676056)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_text_direction() ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("Label")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (mut r Label) set_language(language string) {
    classname := StringName.new("Label")
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
pub fn (r &Label) get_language() string {
    mut object_out := String{}
    classname := StringName.new("Label")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Label) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    mut args := unsafe { [1]voidptr{} }
    i64_autowrap_mode := i64(autowrap_mode)
    args[0] = unsafe{voidptr(&i64_autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := i64(TextServerAutowrapMode.autowrap_off)
    classname := StringName.new("Label")
    fnname := StringName.new("get_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerAutowrapMode(object_out)}
}
pub fn (mut r Label) set_justification_flags(justification_flags TextServerJustificationFlag) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_justification_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    mut args := unsafe { [1]voidptr{} }
    i64_justification_flags := i64(justification_flags)
    args[0] = unsafe{voidptr(&i64_justification_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_justification_flags() TextServerJustificationFlag {
    mut object_out := i64(TextServerJustificationFlag.justification_none)
    classname := StringName.new("Label")
    fnname := StringName.new("get_justification_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerJustificationFlag(object_out)}
}
pub fn (mut r Label) set_clip_text(enable bool) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_clip_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) is_clipping_text() bool {
    mut object_out := false
    classname := StringName.new("Label")
    fnname := StringName.new("is_clipping_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_tab_stops(tab_stops PackedFloat32Array) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_tab_stops")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_tab_stops() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("Label")
    fnname := StringName.new("get_tab_stops")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_text_overrun_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    mut args := unsafe { [1]voidptr{} }
    i64_overrun_behavior := i64(overrun_behavior)
    args[0] = unsafe{voidptr(&i64_overrun_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := i64(TextServerOverrunBehavior.overrun_no_trimming)
    classname := StringName.new("Label")
    fnname := StringName.new("get_text_overrun_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerOverrunBehavior(object_out)}
}
pub fn (mut r Label) set_uppercase(enable bool) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_uppercase")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) is_uppercase() bool {
    mut object_out := false
    classname := StringName.new("Label")
    fnname := StringName.new("is_uppercase")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label) get_line_height(line i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_line_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 181039630)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label) get_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label) get_visible_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_visible_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label) get_total_character_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_total_character_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_visible_characters(amount i32) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_visible_characters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_visible_characters() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_visible_characters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label) get_visible_characters_behavior() TextServerVisibleCharactersBehavior {
    mut object_out := i64(TextServerVisibleCharactersBehavior.vc_chars_before_shaping)
    classname := StringName.new("Label")
    fnname := StringName.new("get_visible_characters_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 258789322)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerVisibleCharactersBehavior(object_out)}
}
pub fn (mut r Label) set_visible_characters_behavior(behavior TextServerVisibleCharactersBehavior) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_visible_characters_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383839701)
    mut args := unsafe { [1]voidptr{} }
    i64_behavior := i64(behavior)
    args[0] = unsafe{voidptr(&i64_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Label) set_visible_ratio(ratio f64) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_visible_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_visible_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_visible_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_lines_skipped(lines_skipped i32) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_lines_skipped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lines_skipped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_lines_skipped() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_lines_skipped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_max_lines_visible(lines_visible i32) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_max_lines_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lines_visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_max_lines_visible() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label")
    fnname := StringName.new("get_max_lines_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Label) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    i64_parser := i64(parser)
    args[0] = unsafe{voidptr(&i64_parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := i64(TextServerStructuredTextParser.structured_text_default)
    classname := StringName.new("Label")
    fnname := StringName.new("get_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerStructuredTextParser(object_out)}
}
pub fn (mut r Label) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("Label")
    fnname := StringName.new("set_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("Label")
    fnname := StringName.new("get_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

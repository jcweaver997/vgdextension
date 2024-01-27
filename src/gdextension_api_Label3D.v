pub enum Label3DDrawFlags {
    flag_shaded = 0
    flag_double_sided = 1
    flag_disable_depth_test = 2
    flag_fixed_size = 3
    flag_max = 4
}

pub enum Label3DAlphaCutMode {
    alpha_cut_disabled = 0
    alpha_cut_discard = 1
    alpha_cut_opaque_prepass = 2
    alpha_cut_hash = 3
}

pub type Label3D = voidptr

pub fn (mut r Label3D) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_vertical_alignment(alignment VerticalAlignment) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_vertical_alignment() VerticalAlignment {
    mut object_out := VerticalAlignment.vertical_alignment_top
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertical_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_modulate(modulate Color) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_outline_modulate(modulate Color) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_outline_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_text(text String) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_text() String {
    mut object_out := String{}
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_text_direction(direction TextServerDirection) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_text_direction() TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_language(language String) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_language() String {
    mut object_out := String{}
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := TextServerStructuredTextParser.structured_text_default
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_uppercase(enable bool) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uppercase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) is_uppercase() bool {
    mut object_out := false
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_uppercase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_render_priority(priority i32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_render_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_outline_render_priority(priority i32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_outline_render_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_font(font Font) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_font() Font {
    mut object_out := Font(unsafe{nil})
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_font_size(size i32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_outline_size(outline_size i32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_outline_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_line_spacing(line_spacing f32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_line_spacing() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := TextServerAutowrapMode.autowrap_off
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_justification_flags(justification_flags TextServerJustificationFlag) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_justification_flags() TextServerJustificationFlag {
    mut object_out := TextServerJustificationFlag(unsafe{nil})
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_width(width f32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_width() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_pixel_size(pixel_size f32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pixel_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_pixel_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pixel_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_offset(offset Vector2) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_draw_flag(flag Label3DDrawFlags, enabled bool) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1285833066)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_draw_flag(flag Label3DDrawFlags) bool {
    mut object_out := false
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259226453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_billboard_mode(mode BaseMaterial3DBillboardMode) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_billboard_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4202036497)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_billboard_mode() BaseMaterial3DBillboardMode {
    mut object_out := BaseMaterial3DBillboardMode.billboard_disabled
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_billboard_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283840139)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_alpha_cut_mode(mode Label3DAlphaCutMode) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_cut_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2549142916)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_alpha_cut_mode() Label3DAlphaCutMode {
    mut object_out := Label3DAlphaCutMode.alpha_cut_disabled
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_cut_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 219468601)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_alpha_scissor_threshold(threshold f32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_scissor_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_alpha_scissor_threshold() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_scissor_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_alpha_hash_scale(threshold f32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_hash_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_alpha_hash_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_hash_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_alpha_antialiasing(alpha_aa BaseMaterial3DAlphaAntiAliasing) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3212649852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_alpha_antialiasing() BaseMaterial3DAlphaAntiAliasing {
    mut object_out := BaseMaterial3DAlphaAntiAliasing.alpha_antialiasing_off
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2889939400)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_alpha_antialiasing_edge(edge f32) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_alpha_antialiasing_edge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_alpha_antialiasing_edge() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_alpha_antialiasing_edge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Label3D) set_texture_filter(mode BaseMaterial3DTextureFilter) {
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 22904437)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Label3D) get_texture_filter() BaseMaterial3DTextureFilter {
    mut object_out := BaseMaterial3DTextureFilter.texture_filter_nearest
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289213076)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Label3D) generate_triangle_mesh() TriangleMesh {
    mut object_out := TriangleMesh(unsafe{nil})
    classname := StringName.new("Label3D")
    defer { classname.deinit() }
    fnname := StringName.new("generate_triangle_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3476533166)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

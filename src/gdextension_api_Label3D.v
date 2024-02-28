module vgdextension

pub enum Label3DDrawFlags as i64 {
    flag_shaded = 0
    flag_double_sided = 1
    flag_disable_depth_test = 2
    flag_fixed_size = 3
    flag_max = 4
}

pub enum Label3DAlphaCutMode as i64 {
    alpha_cut_disabled = 0
    alpha_cut_discard = 1
    alpha_cut_opaque_prepass = 2
    alpha_cut_hash = 3
}

@[noinit]
pub struct Label3D {
    GeometryInstance3D
}

pub fn (r &Label3D) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (r &Label3D) set_vertical_alignment(alignment VerticalAlignment) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_vertical_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_vertical_alignment() VerticalAlignment {
    mut object_out := i64(VerticalAlignment.vertical_alignment_top)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_vertical_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VerticalAlignment(object_out)}
}
pub fn (r &Label3D) set_modulate(modulate Color) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_outline_modulate(modulate Color) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_outline_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_outline_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_outline_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_text(text string) {
    classname := StringName.new("Label3D")
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
pub fn (r &Label3D) get_text() string {
    mut object_out := String{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Label3D) set_text_direction(direction TextServerDirection) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_text_direction() TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub fn (r &Label3D) set_language(language string) {
    classname := StringName.new("Label3D")
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
pub fn (r &Label3D) get_language() string {
    mut object_out := String{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Label3D) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    i64_parser := i64(parser)
    args[0] = unsafe{voidptr(&i64_parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := i64(TextServerStructuredTextParser.structured_text_default)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerStructuredTextParser(object_out)}
}
pub fn (r &Label3D) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_uppercase(enable bool) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_uppercase")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) is_uppercase() bool {
    mut object_out := false
    classname := StringName.new("Label3D")
    fnname := StringName.new("is_uppercase")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_render_priority(priority i32) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_render_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_render_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_render_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_outline_render_priority(priority i32) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_outline_render_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_outline_render_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_outline_render_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_font(font Font) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&font.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_font() Font {
    mut object_out := Font{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_font_size(size i32) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_outline_size(outline_size i32) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_outline_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&outline_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_outline_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_outline_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_line_spacing(line_spacing f64) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_line_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_line_spacing() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_line_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    mut args := unsafe { [1]voidptr{} }
    i64_autowrap_mode := i64(autowrap_mode)
    args[0] = unsafe{voidptr(&i64_autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := i64(TextServerAutowrapMode.autowrap_off)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_autowrap_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerAutowrapMode(object_out)}
}
pub fn (r &Label3D) set_justification_flags(justification_flags TextServerJustificationFlag) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_justification_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    mut args := unsafe { [1]voidptr{} }
    i64_justification_flags := i64(justification_flags)
    args[0] = unsafe{voidptr(&i64_justification_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_justification_flags() TextServerJustificationFlag {
    mut object_out := i64(TextServerJustificationFlag.justification_none)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_justification_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerJustificationFlag(object_out)}
}
pub fn (r &Label3D) set_width(width f64) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_pixel_size(pixel_size f64) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_pixel_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pixel_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_pixel_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_pixel_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_offset(offset Vector2) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_draw_flag(flag Label3DDrawFlags, enabled bool) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_draw_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1285833066)
    mut args := unsafe { [2]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_draw_flag(flag Label3DDrawFlags) bool {
    mut object_out := false
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_draw_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259226453)
    mut args := unsafe { [1]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_billboard_mode(mode BaseMaterial3DBillboardMode) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_billboard_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4202036497)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_billboard_mode() BaseMaterial3DBillboardMode {
    mut object_out := i64(BaseMaterial3DBillboardMode.billboard_disabled)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_billboard_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283840139)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{BaseMaterial3DBillboardMode(object_out)}
}
pub fn (r &Label3D) set_alpha_cut_mode(mode Label3DAlphaCutMode) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_alpha_cut_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2549142916)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_alpha_cut_mode() Label3DAlphaCutMode {
    mut object_out := i64(Label3DAlphaCutMode.alpha_cut_disabled)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_alpha_cut_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 219468601)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Label3DAlphaCutMode(object_out)}
}
pub fn (r &Label3D) set_alpha_scissor_threshold(threshold f64) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_alpha_scissor_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_alpha_scissor_threshold() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_alpha_scissor_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_alpha_hash_scale(threshold f64) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_alpha_hash_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_alpha_hash_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_alpha_hash_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_alpha_antialiasing(alpha_aa BaseMaterial3DAlphaAntiAliasing) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_alpha_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3212649852)
    mut args := unsafe { [1]voidptr{} }
    i64_alpha_aa := i64(alpha_aa)
    args[0] = unsafe{voidptr(&i64_alpha_aa)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_alpha_antialiasing() BaseMaterial3DAlphaAntiAliasing {
    mut object_out := i64(BaseMaterial3DAlphaAntiAliasing.alpha_antialiasing_off)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_alpha_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2889939400)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{BaseMaterial3DAlphaAntiAliasing(object_out)}
}
pub fn (r &Label3D) set_alpha_antialiasing_edge(edge f64) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_alpha_antialiasing_edge")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&edge)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_alpha_antialiasing_edge() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_alpha_antialiasing_edge")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Label3D) set_texture_filter(mode BaseMaterial3DTextureFilter) {
    classname := StringName.new("Label3D")
    fnname := StringName.new("set_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 22904437)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Label3D) get_texture_filter() BaseMaterial3DTextureFilter {
    mut object_out := i64(BaseMaterial3DTextureFilter.texture_filter_nearest)
    classname := StringName.new("Label3D")
    fnname := StringName.new("get_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289213076)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{BaseMaterial3DTextureFilter(object_out)}
}
pub fn (r &Label3D) generate_triangle_mesh() TriangleMesh {
    mut object_out := TriangleMesh{}
    classname := StringName.new("Label3D")
    fnname := StringName.new("generate_triangle_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3476533166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

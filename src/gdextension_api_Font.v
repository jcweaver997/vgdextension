module vgdextension

@[noinit]
pub struct Font {
    Resource
}

pub fn (mut r Font) set_fallbacks(fallbacks Array) {
    classname := StringName.new("Font")
    fnname := StringName.new("set_fallbacks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fallbacks)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Font) get_fallbacks() Array {
    mut object_out := Array{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_fallbacks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) find_variation(variation_coordinates Dictionary, face_index i32, strength f64, transform Transform2D, spacing_top i32, spacing_bottom i32, spacing_space i32, spacing_glyph i32) RID {
    mut object_out := RID{}
    classname := StringName.new("Font")
    fnname := StringName.new("find_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344325384)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&variation_coordinates)}
    args[1] = unsafe{voidptr(&face_index)}
    args[2] = unsafe{voidptr(&strength)}
    args[3] = unsafe{voidptr(&transform)}
    args[4] = unsafe{voidptr(&spacing_top)}
    args[5] = unsafe{voidptr(&spacing_bottom)}
    args[6] = unsafe{voidptr(&spacing_space)}
    args[7] = unsafe{voidptr(&spacing_glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_rids() Array {
    mut object_out := Array{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_rids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_height(font_size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_ascent(font_size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_descent(font_size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_underline_position(font_size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_underline_thickness(font_size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_font_name() String {
    mut object_out := String{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_font_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_font_style_name() String {
    mut object_out := String{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_font_style_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_ot_name_strings() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_ot_name_strings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_font_style() TextServerFontStyle {
    mut object_out := i64(TextServerFontStyle.font_bold)
    classname := StringName.new("Font")
    fnname := StringName.new("get_font_style")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2520224254)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFontStyle(object_out)}
}
pub fn (r &Font) get_font_weight() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_font_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_font_stretch() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_font_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_spacing(spacing TextServerSpacingType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1310880908)
    mut args := unsafe { [1]voidptr{} }
    i64_spacing := i64(spacing)
    args[0] = unsafe{voidptr(&i64_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_opentype_features() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_opentype_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Font) set_cache_capacity(single_line i32, multi_line i32) {
    classname := StringName.new("Font")
    fnname := StringName.new("set_cache_capacity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&single_line)}
    args[1] = unsafe{voidptr(&multi_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Font) get_string_size(text String, alignment HorizontalAlignment, width f64, font_size i32, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_string_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868866121)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[1] = unsafe{voidptr(&i64_alignment)}
    args[2] = unsafe{voidptr(&width)}
    args[3] = unsafe{voidptr(&font_size)}
    i64_justification_flags := i64(justification_flags)
    args[4] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[5] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[6] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_multiline_string_size(text String, alignment HorizontalAlignment, width f64, font_size i32, max_lines i32, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_multiline_string_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 519636710)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[1] = unsafe{voidptr(&i64_alignment)}
    args[2] = unsafe{voidptr(&width)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&max_lines)}
    i64_brk_flags := i64(brk_flags)
    args[5] = unsafe{voidptr(&i64_brk_flags)}
    i64_justification_flags := i64(justification_flags)
    args[6] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[7] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[8] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) draw_string(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, modulate Color, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    fnname := StringName.new("draw_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983721962)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&modulate)}
    i64_justification_flags := i64(justification_flags)
    args[7] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[8] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[9] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Font) draw_multiline_string(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, max_lines i32, modulate Color, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    fnname := StringName.new("draw_multiline_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171506176)
    mut args := unsafe { [12]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&max_lines)}
    args[7] = unsafe{voidptr(&modulate)}
    i64_brk_flags := i64(brk_flags)
    args[8] = unsafe{voidptr(&i64_brk_flags)}
    i64_justification_flags := i64(justification_flags)
    args[9] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[10] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[11] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Font) draw_string_outline(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, size i32, modulate Color, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    fnname := StringName.new("draw_string_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 623754045)
    mut args := unsafe { [11]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&size)}
    args[7] = unsafe{voidptr(&modulate)}
    i64_justification_flags := i64(justification_flags)
    args[8] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[9] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[10] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Font) draw_multiline_string_outline(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, max_lines i32, size i32, modulate Color, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    fnname := StringName.new("draw_multiline_string_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3206388178)
    mut args := unsafe { [13]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&max_lines)}
    args[7] = unsafe{voidptr(&size)}
    args[8] = unsafe{voidptr(&modulate)}
    i64_brk_flags := i64(brk_flags)
    args[9] = unsafe{voidptr(&i64_brk_flags)}
    i64_justification_flags := i64(justification_flags)
    args[10] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[11] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[12] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Font) get_char_size(gdchar i64, font_size i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_char_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdchar)}
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) draw_char(canvas_item RID, pos Vector2, gdchar i64, font_size i32, modulate Color) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("draw_char")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3815617597)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) draw_char_outline(canvas_item RID, pos Vector2, gdchar i64, font_size i32, size i32, modulate Color) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("draw_char_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 209525354)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&size)}
    args[5] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) has_char(gdchar i64) bool {
    mut object_out := false
    classname := StringName.new("Font")
    fnname := StringName.new("has_char")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdchar)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_supported_chars() String {
    mut object_out := String{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_supported_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) is_language_supported(language String) bool {
    mut object_out := false
    classname := StringName.new("Font")
    fnname := StringName.new("is_language_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) is_script_supported(script String) bool {
    mut object_out := false
    classname := StringName.new("Font")
    fnname := StringName.new("is_script_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_supported_feature_list() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_supported_feature_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_supported_variation_list() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    fnname := StringName.new("get_supported_variation_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Font) get_face_count() i64 {
    mut object_out := i64(0)
    classname := StringName.new("Font")
    fnname := StringName.new("get_face_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

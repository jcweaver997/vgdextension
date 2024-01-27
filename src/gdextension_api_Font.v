module vgdextension

pub type Font = voidptr

pub fn (mut r Font) set_fallbacks(fallbacks Array) {
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallbacks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Font) get_fallbacks() Array {
    mut object_out := Array{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallbacks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) find_variation(variation_coordinates Dictionary, face_index i32, strength f32, transform Transform2D) RID {
    mut object_out := RID{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("find_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1149405976)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&variation_coordinates)}
    args[1] = unsafe{voidptr(&face_index)}
    args[2] = unsafe{voidptr(&strength)}
    args[3] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_rids() Array {
    mut object_out := Array{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_rids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_height(font_size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_ascent(font_size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_descent(font_size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_underline_position(font_size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_underline_thickness(font_size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 378113874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_font_name() String {
    mut object_out := String{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_font_style_name() String {
    mut object_out := String{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_style_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_ot_name_strings() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_ot_name_strings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_font_style() TextServerFontStyle {
    mut object_out := TextServerFontStyle(unsafe{nil})
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_style")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2520224254)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_font_weight() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_font_stretch() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_spacing(spacing TextServerSpacingType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1310880908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spacing)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_opentype_features() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_opentype_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Font) set_cache_capacity(single_line i32, multi_line i32) {
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("set_cache_capacity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Font) get_string_size(text String, alignment HorizontalAlignment, width f32, font_size i32, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_string_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3678918099)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = unsafe{voidptr(&alignment)}
    args[2] = unsafe{voidptr(&width)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&justification_flags)}
    args[5] = unsafe{voidptr(&direction)}
    args[6] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_multiline_string_size(text String, alignment HorizontalAlignment, width f32, font_size i32, max_lines i32, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_multiline_string_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2427690650)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = unsafe{voidptr(&alignment)}
    args[2] = unsafe{voidptr(&width)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&max_lines)}
    args[5] = unsafe{voidptr(&brk_flags)}
    args[6] = unsafe{voidptr(&justification_flags)}
    args[7] = unsafe{voidptr(&direction)}
    args[8] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) draw_string(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f32, font_size i32, modulate Color, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("draw_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2565402639)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Font) draw_multiline_string(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f32, font_size i32, max_lines i32, modulate Color, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("draw_multiline_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 348869189)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Font) draw_string_outline(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f32, font_size i32, size i32, modulate Color, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("draw_string_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 657875837)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Font) draw_multiline_string_outline(canvas_item RID, pos Vector2, text String, alignment HorizontalAlignment, width f32, font_size i32, max_lines i32, size i32, modulate Color, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("draw_multiline_string_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649790182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Font) get_char_size(gdchar i32, font_size i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_char_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdchar)}
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) draw_char(canvas_item RID, pos Vector2, gdchar i32, font_size i32, modulate Color) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("draw_char")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1462476057)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) draw_char_outline(canvas_item RID, pos Vector2, gdchar i32, font_size i32, size i32, modulate Color) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("draw_char_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4161008124)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&size)}
    args[5] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) has_char(gdchar i32) bool {
    mut object_out := false
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("has_char")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdchar)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_supported_chars() String {
    mut object_out := String{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_supported_chars")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) is_language_supported(language String) bool {
    mut object_out := false
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("is_language_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) is_script_supported(script String) bool {
    mut object_out := false
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("is_script_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_supported_feature_list() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_supported_feature_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_supported_variation_list() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_supported_variation_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Font) get_face_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Font")
    defer { classname.deinit() }
    fnname := StringName.new("get_face_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

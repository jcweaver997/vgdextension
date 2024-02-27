module vgdextension

pub enum TextServerFontAntialiasing as i64 {
    font_antialiasing_none = 0
    font_antialiasing_gray = 1
    font_antialiasing_lcd = 2
}

pub enum TextServerFontLCDSubpixelLayout as i64 {
    font_lcd_subpixel_layout_none = 0
    font_lcd_subpixel_layout_hrgb = 1
    font_lcd_subpixel_layout_hbgr = 2
    font_lcd_subpixel_layout_vrgb = 3
    font_lcd_subpixel_layout_vbgr = 4
    font_lcd_subpixel_layout_max = 5
}

pub enum TextServerDirection as i64 {
    direction_auto = 0
    direction_ltr = 1
    direction_rtl = 2
    direction_inherited = 3
}

pub enum TextServerOrientation as i64 {
    orientation_horizontal = 0
    orientation_vertical = 1
}

pub enum TextServerJustificationFlag as i64 {
    justification_none = 0
    justification_kashida = 1
    justification_word_bound = 2
    justification_trim_edge_spaces = 4
    justification_after_last_tab = 8
    justification_constrain_ellipsis = 16
    justification_skip_last_line = 32
    justification_skip_last_line_with_visible_chars = 64
    justification_do_not_skip_single_line = 128
}

pub enum TextServerAutowrapMode as i64 {
    autowrap_off = 0
    autowrap_arbitrary = 1
    autowrap_word = 2
    autowrap_word_smart = 3
}

pub enum TextServerLineBreakFlag as i64 {
    break_none = 0
    break_mandatory = 1
    break_word_bound = 2
    break_grapheme_bound = 4
    break_adaptive = 8
    break_trim_edge_spaces = 16
}

pub enum TextServerVisibleCharactersBehavior as i64 {
    vc_chars_before_shaping = 0
    vc_chars_after_shaping = 1
    vc_glyphs_auto = 2
    vc_glyphs_ltr = 3
    vc_glyphs_rtl = 4
}

pub enum TextServerOverrunBehavior as i64 {
    overrun_no_trimming = 0
    overrun_trim_char = 1
    overrun_trim_word = 2
    overrun_trim_ellipsis = 3
    overrun_trim_word_ellipsis = 4
}

pub enum TextServerTextOverrunFlag as i64 {
    overrun_no_trim = 0
    overrun_trim = 1
    overrun_trim_word_only = 2
    overrun_add_ellipsis = 4
    overrun_enforce_ellipsis = 8
    overrun_justification_aware = 16
}

pub enum TextServerGraphemeFlag as i64 {
    grapheme_is_valid = 1
    grapheme_is_rtl = 2
    grapheme_is_virtual = 4
    grapheme_is_space = 8
    grapheme_is_break_hard = 16
    grapheme_is_break_soft = 32
    grapheme_is_tab = 64
    grapheme_is_elongation = 128
    grapheme_is_punctuation = 256
    grapheme_is_underscore = 512
    grapheme_is_connected = 1024
    grapheme_is_safe_to_insert_tatweel = 2048
    grapheme_is_embedded_object = 4096
}

pub enum TextServerHinting as i64 {
    hinting_none = 0
    hinting_light = 1
    hinting_normal = 2
}

pub enum TextServerSubpixelPositioning as i64 {
    subpixel_positioning_disabled = 0
    subpixel_positioning_auto = 1
    subpixel_positioning_one_half = 2
    subpixel_positioning_one_quarter = 3
    subpixel_positioning_one_half_max_size = 20
    subpixel_positioning_one_quarter_max_size = 16
}

pub enum TextServerFeature as i64 {
    feature_simple_layout = 1
    feature_bidi_layout = 2
    feature_vertical_layout = 4
    feature_shaping = 8
    feature_kashida_justification = 16
    feature_break_iterators = 32
    feature_font_bitmap = 64
    feature_font_dynamic = 128
    feature_font_msdf = 256
    feature_font_system = 512
    feature_font_variable = 1024
    feature_context_sensitive_case_conversion = 2048
    feature_use_support_data = 4096
    feature_unicode_identifiers = 8192
    feature_unicode_security = 16384
}

pub enum TextServerContourPointTag as i64 {
    contour_curve_tag_on = 1
    contour_curve_tag_off_conic = 0
    contour_curve_tag_off_cubic = 2
}

pub enum TextServerSpacingType as i64 {
    spacing_glyph = 0
    spacing_space = 1
    spacing_top = 2
    spacing_bottom = 3
    spacing_max = 4
}

pub enum TextServerFontStyle as i64 {
    font_bold = 1
    font_italic = 2
    font_fixed_width = 4
}

pub enum TextServerStructuredTextParser as i64 {
    structured_text_default = 0
    structured_text_uri = 1
    structured_text_file = 2
    structured_text_email = 3
    structured_text_list = 4
    structured_text_gdscript = 5
    structured_text_custom = 6
}

pub enum TextServerFixedSizeScaleMode as i64 {
    fixed_size_scale_disable = 0
    fixed_size_scale_integer_only = 1
    fixed_size_scale_enabled = 2
}

@[noinit]
pub struct TextServer {
    RefCounted
}

pub fn (r &TextServer) has_feature(feature TextServerFeature) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("has_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3967367083)
    mut args := unsafe { [1]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) get_name() string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) get_features() i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("get_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) load_support_data(filename string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("load_support_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(filename)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) get_support_data_filename() string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("get_support_data_filename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) get_support_data_info() string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("get_support_data_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) save_support_data(filename string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("save_support_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(filename)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) is_locale_right_to_left(locale string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("is_locale_right_to_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) name_to_tag(name string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("name_to_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) tag_to_name(tag i64) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("tag_to_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r TextServer) has(rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("has")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) free_rid(rid RID) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) create_font() RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("create_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) create_font_linked_variation(font_rid RID) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("create_font_linked_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 41030802)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_data(font_rid RID, data PackedByteArray) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1355495400)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_set_face_index(font_rid RID, face_index i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&face_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_face_index(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_face_count(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_face_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_style(font_rid RID, style TextServerFontStyle) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_style")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 898466325)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_style := i64(style)
    args[1] = unsafe{voidptr(&i64_style)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_style(font_rid RID) TextServerFontStyle {
    mut object_out := i64(TextServerFontStyle.font_bold)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_style")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082502592)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFontStyle(object_out)}
}
pub fn (mut r TextServer) font_set_name(font_rid RID, name string) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_name(font_rid RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) font_get_ot_name_strings(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_ot_name_strings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_style_name(font_rid RID, name string) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_style_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_style_name(font_rid RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_style_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r TextServer) font_set_weight(font_rid RID, weight i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_weight(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_stretch(font_rid RID, weight i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_stretch(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_antialiasing(font_rid RID, antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958337235)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_antialiasing := i64(antialiasing)
    args[1] = unsafe{voidptr(&i64_antialiasing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_antialiasing(font_rid RID) TextServerFontAntialiasing {
    mut object_out := i64(TextServerFontAntialiasing.font_antialiasing_none)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3389420495)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFontAntialiasing(object_out)}
}
pub fn (mut r TextServer) font_set_generate_mipmaps(font_rid RID, generate_mipmaps bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&generate_mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_generate_mipmaps(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_multichannel_signed_distance_field(font_rid RID, msdf bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_multichannel_signed_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&msdf)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_is_multichannel_signed_distance_field(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_is_multichannel_signed_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_msdf_pixel_range(font_rid RID, msdf_pixel_range i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_msdf_pixel_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&msdf_pixel_range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_msdf_pixel_range(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_msdf_pixel_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_msdf_size(font_rid RID, msdf_size i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_msdf_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&msdf_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_msdf_size(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_msdf_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_fixed_size(font_rid RID, fixed_size i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_fixed_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&fixed_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_fixed_size(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_fixed_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_fixed_size_scale_mode(font_rid RID, fixed_size_scale_mode TextServerFixedSizeScaleMode) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_fixed_size_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1029390307)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_fixed_size_scale_mode := i64(fixed_size_scale_mode)
    args[1] = unsafe{voidptr(&i64_fixed_size_scale_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_fixed_size_scale_mode(font_rid RID) TextServerFixedSizeScaleMode {
    mut object_out := i64(TextServerFixedSizeScaleMode.fixed_size_scale_disable)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_fixed_size_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4113120379)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFixedSizeScaleMode(object_out)}
}
pub fn (mut r TextServer) font_set_allow_system_fallback(font_rid RID, allow_system_fallback bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_allow_system_fallback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&allow_system_fallback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_is_allow_system_fallback(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_is_allow_system_fallback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_force_autohinter(font_rid RID, force_autohinter bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_force_autohinter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&force_autohinter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_is_force_autohinter(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_is_force_autohinter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_hinting(font_rid RID, hinting TextServerHinting) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_hinting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1520010864)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_hinting := i64(hinting)
    args[1] = unsafe{voidptr(&i64_hinting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_hinting(font_rid RID) TextServerHinting {
    mut object_out := i64(TextServerHinting.hinting_none)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_hinting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971592737)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerHinting(object_out)}
}
pub fn (mut r TextServer) font_set_subpixel_positioning(font_rid RID, subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_subpixel_positioning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3830459669)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_subpixel_positioning := i64(subpixel_positioning)
    args[1] = unsafe{voidptr(&i64_subpixel_positioning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_subpixel_positioning(font_rid RID) TextServerSubpixelPositioning {
    mut object_out := i64(TextServerSubpixelPositioning.subpixel_positioning_disabled)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_subpixel_positioning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2752233671)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerSubpixelPositioning(object_out)}
}
pub fn (mut r TextServer) font_set_embolden(font_rid RID, strength f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_embolden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_embolden(font_rid RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_embolden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_spacing(font_rid RID, spacing TextServerSpacingType, value i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307259930)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_spacing(font_rid RID, spacing TextServerSpacingType) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1213653558)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_transform(font_rid RID, transform Transform2D) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_transform(font_rid RID) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 213527486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_variation_coordinates(font_rid RID, variation_coordinates Dictionary) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_variation_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&variation_coordinates)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_variation_coordinates(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_variation_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_oversampling(font_rid RID, oversampling f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&oversampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_oversampling(font_rid RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_size_cache_list(font_rid RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_size_cache_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_clear_size_cache(font_rid RID) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_clear_size_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_remove_size_cache(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_remove_size_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_set_ascent(font_rid RID, size i64, ascent f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&ascent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_ascent(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_descent(font_rid RID, size i64, descent f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&descent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_descent(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_underline_position(font_rid RID, size i64, underline_position f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&underline_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_underline_position(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_underline_thickness(font_rid RID, size i64, underline_thickness f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&underline_thickness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_underline_thickness(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_scale(font_rid RID, size i64, scale f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_scale(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_texture_count(font_rid RID, size Vector2i) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_texture_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1311001310)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_clear_textures(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_clear_textures")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_remove_texture(font_rid RID, size Vector2i, texture_index i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_remove_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_set_texture_image(font_rid RID, size Vector2i, texture_index i64, image Image) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_texture_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2354485091)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    args[3] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_texture_image(font_rid RID, size Vector2i, texture_index i64) Image {
    mut object_out := Image{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_texture_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2451761155)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_texture_offsets(font_rid RID, size Vector2i, texture_index i64, offset PackedInt32Array) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_texture_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005398047)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_texture_offsets(font_rid RID, size Vector2i, texture_index i64) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_texture_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3420028887)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_glyph_list(font_rid RID, size Vector2i) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 46086620)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_clear_glyphs(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_clear_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_remove_glyph(font_rid RID, size Vector2i, glyph i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_remove_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_glyph_advance(font_rid RID, size i64, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2555689501)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_advance(font_rid RID, size i64, glyph i64, advance Vector2) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_glyph_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3219397315)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&advance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_glyph_offset(font_rid RID, size Vector2i, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_offset(font_rid RID, size Vector2i, glyph i64, offset Vector2) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_glyph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1812632090)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_glyph_size(font_rid RID, size Vector2i, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_size(font_rid RID, size Vector2i, glyph i64, gl_size Vector2) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_glyph_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1812632090)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&gl_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_uv_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2274268786)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64, uv_rect Rect2) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_glyph_uv_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1973324081)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&uv_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_texture_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4292800474)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64, texture_idx i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_glyph_texture_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254580980)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&texture_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_glyph_texture_rid(font_rid RID, size Vector2i, glyph i64) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_texture_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1451696141)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_glyph_texture_size(font_rid RID, size Vector2i, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_glyph_contours(font RID, size i64, index i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_contours")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903964473)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_kerning_list(font_rid RID, size i64) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_kerning_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_clear_kerning_map(font_rid RID, size i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_clear_kerning_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_remove_kerning(font_rid RID, size i64, glyph_pair Vector2i) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_remove_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2141860016)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_set_kerning(font_rid RID, size i64, glyph_pair Vector2i, kerning Vector2) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3630965883)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    args[3] = unsafe{voidptr(&kerning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_kerning(font_rid RID, size i64, glyph_pair Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1019980169)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_glyph_index(font_rid RID, size i64, gdchar i64, variation_selector i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_glyph_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1765635060)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&variation_selector)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_char_from_glyph_index(font_rid RID, size i64, glyph_index i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_char_from_glyph_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2156738276)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_has_char(font_rid RID, gdchar i64) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_has_char")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&gdchar)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_supported_chars(font_rid RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_supported_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r TextServer) font_render_range(font_rid RID, size Vector2i, start i64, end i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_render_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254580980)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_render_glyph(font_rid RID, size Vector2i, index i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_render_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_draw_glyph(font_rid RID, canvas RID, size i64, pos Vector2, index i64, color Color) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_draw_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1339057948)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&size)}
    args[3] = unsafe{voidptr(&pos)}
    args[4] = unsafe{voidptr(&index)}
    args[5] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_draw_glyph_outline(font_rid RID, canvas RID, size i64, outline_size i64, pos Vector2, index i64, color Color) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_draw_glyph_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2626165733)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&size)}
    args[3] = unsafe{voidptr(&outline_size)}
    args[4] = unsafe{voidptr(&pos)}
    args[5] = unsafe{voidptr(&index)}
    args[6] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_is_language_supported(font_rid RID, language string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_is_language_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199320846)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_language_support_override(font_rid RID, language string, supported bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2313957094)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&supported)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_get_language_support_override(font_rid RID, language string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829184646)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_remove_language_support_override(font_rid RID, language string) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_remove_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_get_language_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_language_support_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801473409)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_is_script_supported(font_rid RID, script string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_is_script_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199320846)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(script)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_script_support_override(font_rid RID, script string, supported bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2313957094)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(script)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&supported)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_get_script_support_override(font_rid RID, script string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829184646)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(script)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_remove_script_support_override(font_rid RID, script string) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_remove_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(script)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) font_get_script_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_script_support_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801473409)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_opentype_feature_overrides(font_rid RID, overrides Dictionary) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_opentype_feature_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&overrides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) font_get_opentype_feature_overrides(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_opentype_feature_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_supported_feature_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_supported_feature_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_supported_variation_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_supported_variation_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) font_get_global_oversampling() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_get_global_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) font_set_global_oversampling(oversampling f64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("font_set_global_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&oversampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) get_hex_code_box_size(size i64, index i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("get_hex_code_box_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) draw_hex_code_box(canvas RID, size i64, pos Vector2, index i64, color Color) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("draw_hex_code_box")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602046441)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&pos)}
    args[3] = unsafe{voidptr(&index)}
    args[4] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) create_shaped_text(direction TextServerDirection, orientation TextServerOrientation) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("create_shaped_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231398698)
    mut args := unsafe { [2]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[1] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_clear(rid RID) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) shaped_text_set_direction(shaped RID, direction TextServerDirection) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1551430183)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_direction := i64(direction)
    args[1] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_direction(shaped RID) TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3065904362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub fn (r &TextServer) shaped_text_get_inferred_direction(shaped RID) TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_inferred_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3065904362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub fn (mut r TextServer) shaped_text_set_bidi_override(shaped RID, override Array) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextServer) shaped_text_set_custom_punctuation(shaped RID, punct string) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_custom_punctuation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    arg_sn1 := String.new(punct)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_custom_punctuation(shaped RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_custom_punctuation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r TextServer) shaped_text_set_orientation(shaped RID, orientation TextServerOrientation) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3019609126)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_orientation := i64(orientation)
    args[1] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_orientation(shaped RID) TextServerOrientation {
    mut object_out := i64(TextServerOrientation.orientation_horizontal)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3142708106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerOrientation(object_out)}
}
pub fn (mut r TextServer) shaped_text_set_preserve_invalid(shaped RID, enabled bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_preserve_invalid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_preserve_invalid(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_preserve_invalid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_preserve_control(shaped RID, enabled bool) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_preserve_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_preserve_control(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_preserve_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_spacing(shaped RID, spacing TextServerSpacingType, value i64) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_set_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307259930)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_spacing(shaped RID, spacing TextServerSpacingType) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1213653558)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_add_string(shaped RID, text string, fonts Array, size i64, opentype_features Dictionary, language string, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_add_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 623473029)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&fonts)}
    args[3] = unsafe{voidptr(&size)}
    args[4] = unsafe{voidptr(&opentype_features)}
    arg_sn5 := String.new(language)
    args[5] = unsafe{voidptr(&arg_sn5)}
    args[6] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    arg_sn5.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_add_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i64, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_add_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3664424789)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&size)}
    i64_inline_align := i64(inline_align)
    args[3] = unsafe{voidptr(&i64_inline_align)}
    args[4] = unsafe{voidptr(&length)}
    args[5] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_resize_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_resize_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 790361552)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&size)}
    i64_inline_align := i64(inline_align)
    args[3] = unsafe{voidptr(&i64_inline_align)}
    args[4] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_get_span_count(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_get_span_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_get_span_meta(shaped RID, index i64) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_get_span_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_set_span_update_font(shaped RID, index i64, fonts Array, size i64, opentype_features Dictionary) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_set_span_update_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2022725822)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&fonts)}
    args[3] = unsafe{voidptr(&size)}
    args[4] = unsafe{voidptr(&opentype_features)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_substr(shaped RID, start i64, length i64) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_substr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1937682086)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_parent(shaped RID) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_fit_to_width(shaped RID, width f64, justification_flags TextServerJustificationFlag) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_fit_to_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 530670926)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    i64_justification_flags := i64(justification_flags)
    args[2] = unsafe{voidptr(&i64_justification_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_tab_align(shaped RID, tab_stops PackedFloat32Array) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_tab_align")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283669550)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_shape(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_is_ready(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_is_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_has_visible_chars(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_has_visible_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_glyphs(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_sort_logical(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_sort_logical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2670461153)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_glyph_count(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_glyph_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_range(shaped RID) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 733700038)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_line_breaks_adv(shaped RID, width PackedFloat32Array, start i64, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_line_breaks_adv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2376991424)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&once)}
    i64_break_flags := i64(break_flags)
    args[4] = unsafe{voidptr(&i64_break_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_line_breaks(shaped RID, width f64, start i64, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_line_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2651359741)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&start)}
    i64_break_flags := i64(break_flags)
    args[3] = unsafe{voidptr(&i64_break_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_word_breaks(shaped RID, grapheme_flags TextServerGraphemeFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_word_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 185957063)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_grapheme_flags := i64(grapheme_flags)
    args[1] = unsafe{voidptr(&i64_grapheme_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_trim_pos(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_trim_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ellipsis_pos(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_ellipsis_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ellipsis_glyphs(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_ellipsis_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ellipsis_glyph_count(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_ellipsis_glyph_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextServer) shaped_text_overrun_trim_to_width(shaped RID, width f64, overrun_trim_flags TextServerTextOverrunFlag) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_overrun_trim_to_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2723146520)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    i64_overrun_trim_flags := i64(overrun_trim_flags)
    args[2] = unsafe{voidptr(&i64_overrun_trim_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_objects(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_objects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_object_rect(shaped RID, key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_object_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 447978354)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_size(shaped RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ascent(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_descent(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_width(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_underline_position(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_underline_thickness(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_carets(shaped RID, position i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_carets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1574219346)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_selection(shaped RID, start i64, end i64) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3714187733)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_hit_test_grapheme(shaped RID, coords f64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_hit_test_grapheme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3149310417)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_hit_test_position(shaped RID, coords f64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_hit_test_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3149310417)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_grapheme_bounds(shaped RID, pos i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_grapheme_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_next_grapheme_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_next_grapheme_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_prev_grapheme_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_prev_grapheme_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_get_character_breaks(shaped RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_character_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788230395)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_next_character_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_next_character_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_prev_character_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_prev_character_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_closest_character_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_closest_character_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) shaped_text_draw(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, color Color) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 880389142)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&pos)}
    args[3] = unsafe{voidptr(&clip_l)}
    args[4] = unsafe{voidptr(&clip_r)}
    args[5] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_draw_outline(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, outline_size i64, color Color) {
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_draw_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2559184194)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&canvas)}
    args[2] = unsafe{voidptr(&pos)}
    args[3] = unsafe{voidptr(&clip_l)}
    args[4] = unsafe{voidptr(&clip_r)}
    args[5] = unsafe{voidptr(&outline_size)}
    args[6] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextServer) shaped_text_get_dominant_direction_in_range(shaped RID, start i64, end i64) TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("TextServer")
    fnname := StringName.new("shaped_text_get_dominant_direction_in_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3326907668)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub fn (r &TextServer) format_number(number string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("format_number")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2664628024)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(number)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) parse_number(number string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("parse_number")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2664628024)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(number)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) percent_sign(language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("percent_sign")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993269549)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(language)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) string_get_word_breaks(gdstring string, language string, chars_per_line i64) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("string_get_word_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 581857818)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&chars_per_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) string_get_character_breaks(gdstring string, language string) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("string_get_character_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2333794773)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) is_confusable(gdstring string, dict PackedStringArray) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServer")
    fnname := StringName.new("is_confusable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1433197768)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&dict)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) spoof_check(gdstring string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("spoof_check")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) strip_diacritics(gdstring string) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("strip_diacritics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) is_valid_identifier(gdstring string) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    fnname := StringName.new("is_valid_identifier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextServer) string_to_upper(gdstring string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("string_to_upper")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2664628024)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) string_to_lower(gdstring string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("string_to_lower")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2664628024)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TextServer) parse_structured_text(parser_type TextServerStructuredTextParser, gdargs Array, text string) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    fnname := StringName.new("parse_structured_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3310685015)
    mut args := unsafe { [3]voidptr{} }
    i64_parser_type := i64(parser_type)
    args[0] = unsafe{voidptr(&i64_parser_type)}
    args[1] = unsafe{voidptr(&gdargs)}
    arg_sn2 := String.new(text)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}

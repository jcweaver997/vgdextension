module vgdextension

pub enum TextServerFontAntialiasing {
    font_antialiasing_none = 0
    font_antialiasing_gray = 1
    font_antialiasing_lcd = 2
}

pub enum TextServerFontLCDSubpixelLayout {
    font_lcd_subpixel_layout_none = 0
    font_lcd_subpixel_layout_hrgb = 1
    font_lcd_subpixel_layout_hbgr = 2
    font_lcd_subpixel_layout_vrgb = 3
    font_lcd_subpixel_layout_vbgr = 4
    font_lcd_subpixel_layout_max = 5
}

pub enum TextServerDirection {
    direction_auto = 0
    direction_ltr = 1
    direction_rtl = 2
    direction_inherited = 3
}

pub enum TextServerOrientation {
    orientation_horizontal = 0
    orientation_vertical = 1
}

pub enum TextServerJustificationFlag {
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

pub enum TextServerAutowrapMode {
    autowrap_off = 0
    autowrap_arbitrary = 1
    autowrap_word = 2
    autowrap_word_smart = 3
}

pub enum TextServerLineBreakFlag {
    break_none = 0
    break_mandatory = 1
    break_word_bound = 2
    break_grapheme_bound = 4
    break_adaptive = 8
    break_trim_edge_spaces = 16
}

pub enum TextServerVisibleCharactersBehavior {
    vc_chars_before_shaping = 0
    vc_chars_after_shaping = 1
    vc_glyphs_auto = 2
    vc_glyphs_ltr = 3
    vc_glyphs_rtl = 4
}

pub enum TextServerOverrunBehavior {
    overrun_no_trimming = 0
    overrun_trim_char = 1
    overrun_trim_word = 2
    overrun_trim_ellipsis = 3
    overrun_trim_word_ellipsis = 4
}

pub enum TextServerTextOverrunFlag {
    overrun_no_trim = 0
    overrun_trim = 1
    overrun_trim_word_only = 2
    overrun_add_ellipsis = 4
    overrun_enforce_ellipsis = 8
    overrun_justification_aware = 16
}

pub enum TextServerGraphemeFlag {
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

pub enum TextServerHinting {
    hinting_none = 0
    hinting_light = 1
    hinting_normal = 2
}

pub enum TextServerSubpixelPositioning {
    subpixel_positioning_disabled = 0
    subpixel_positioning_auto = 1
    subpixel_positioning_one_half = 2
    subpixel_positioning_one_quarter = 3
    subpixel_positioning_one_half_max_size = 20
    subpixel_positioning_one_quarter_max_size = 16
}

pub enum TextServerFeature {
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

pub enum TextServerContourPointTag {
    contour_curve_tag_on = 1
    contour_curve_tag_off_conic = 0
    contour_curve_tag_off_cubic = 2
}

pub enum TextServerSpacingType {
    spacing_glyph = 0
    spacing_space = 1
    spacing_top = 2
    spacing_bottom = 3
    spacing_max = 4
}

pub enum TextServerFontStyle {
    font_bold = 1
    font_italic = 2
    font_fixed_width = 4
}

pub enum TextServerStructuredTextParser {
    structured_text_default = 0
    structured_text_uri = 1
    structured_text_file = 2
    structured_text_email = 3
    structured_text_list = 4
    structured_text_gdscript = 5
    structured_text_custom = 6
}

pub type TextServer = voidptr

pub fn (r &TextServer) has_feature(feature TextServerFeature) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("has_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3967367083)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) get_name() String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) get_features() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) load_support_data(filename String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("load_support_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filename)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) get_support_data_filename() String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_support_data_filename")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) get_support_data_info() String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_support_data_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) save_support_data(filename String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("save_support_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filename)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) is_locale_right_to_left(locale String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_locale_right_to_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) name_to_tag(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("name_to_tag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) tag_to_name(tag i32) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("tag_to_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) has(rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("has")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) free_rid(rid RID) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) create_font() RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("create_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_data(font_rid RID, data PackedByteArray) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1355495400)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_set_face_index(font_rid RID, face_index i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_face_index(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_face_count(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_face_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_style(font_rid RID, style TextServerFontStyle) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_style")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 898466325)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_style(font_rid RID) TextServerFontStyle {
    mut object_out := TextServerFontStyle(unsafe{nil})
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_style")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082502592)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_name(font_rid RID, name String) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_name(font_rid RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_ot_name_strings(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_ot_name_strings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_style_name(font_rid RID, name String) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_style_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_style_name(font_rid RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_style_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_weight(font_rid RID, weight i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_weight(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_stretch(font_rid RID, weight i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_stretch(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_antialiasing(font_rid RID, antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958337235)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_antialiasing(font_rid RID) TextServerFontAntialiasing {
    mut object_out := TextServerFontAntialiasing.font_antialiasing_none
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3389420495)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_generate_mipmaps(font_rid RID, generate_mipmaps bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_generate_mipmaps(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_multichannel_signed_distance_field(font_rid RID, msdf bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_is_multichannel_signed_distance_field(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_is_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_msdf_pixel_range(font_rid RID, msdf_pixel_range i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_msdf_pixel_range(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_msdf_size(font_rid RID, msdf_size i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_msdf_size(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_fixed_size(font_rid RID, fixed_size i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_fixed_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_fixed_size(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_fixed_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_allow_system_fallback(font_rid RID, allow_system_fallback bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_is_allow_system_fallback(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_is_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_force_autohinter(font_rid RID, force_autohinter bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_is_force_autohinter(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_is_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_hinting(font_rid RID, hinting TextServerHinting) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1520010864)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_hinting(font_rid RID) TextServerHinting {
    mut object_out := TextServerHinting.hinting_none
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971592737)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_subpixel_positioning(font_rid RID, subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3830459669)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_subpixel_positioning(font_rid RID) TextServerSubpixelPositioning {
    mut object_out := TextServerSubpixelPositioning.subpixel_positioning_disabled
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2752233671)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_embolden(font_rid RID, strength f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_embolden(font_rid RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_transform(font_rid RID, transform Transform2D) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_transform(font_rid RID) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 213527486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_variation_coordinates(font_rid RID, variation_coordinates Dictionary) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_variation_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_variation_coordinates(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_variation_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_oversampling(font_rid RID, oversampling f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_oversampling(font_rid RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_size_cache_list(font_rid RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_size_cache_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_clear_size_cache(font_rid RID) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_clear_size_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_remove_size_cache(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_remove_size_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_set_ascent(font_rid RID, size i32, ascent f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_ascent(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_descent(font_rid RID, size i32, descent f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_descent(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_underline_position(font_rid RID, size i32, underline_position f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_underline_position(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_underline_thickness(font_rid RID, size i32, underline_thickness f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_underline_thickness(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_scale(font_rid RID, size i32, scale f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1892459533)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_scale(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 755457166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_texture_count(font_rid RID, size Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_texture_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1311001310)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_clear_textures(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_clear_textures")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_remove_texture(font_rid RID, size Vector2i, texture_index i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_remove_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_set_texture_image(font_rid RID, size Vector2i, texture_index i32, image Image) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_texture_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2354485091)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_texture_image(font_rid RID, size Vector2i, texture_index i32) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_texture_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2451761155)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_texture_offsets(font_rid RID, size Vector2i, texture_index i32, offset PackedInt32Array) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_texture_offsets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005398047)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_texture_offsets(font_rid RID, size Vector2i, texture_index i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_texture_offsets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3420028887)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_glyph_list(font_rid RID, size Vector2i) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 46086620)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_clear_glyphs(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_clear_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2450610377)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_remove_glyph(font_rid RID, size Vector2i, glyph i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_remove_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_glyph_advance(font_rid RID, size i32, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2555689501)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_advance(font_rid RID, size i32, glyph i32, advance Vector2) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_glyph_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3219397315)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_glyph_offset(font_rid RID, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_offset(font_rid RID, size Vector2i, glyph i32, offset Vector2) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_glyph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1812632090)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_glyph_size(font_rid RID, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_size(font_rid RID, size Vector2i, glyph i32, gl_size Vector2) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_glyph_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1812632090)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_glyph_uv_rect(font_rid RID, size Vector2i, glyph i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_uv_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2274268786)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_uv_rect(font_rid RID, size Vector2i, glyph i32, uv_rect Rect2) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_glyph_uv_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1973324081)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_glyph_texture_idx(font_rid RID, size Vector2i, glyph i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_texture_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4292800474)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_glyph_texture_idx(font_rid RID, size Vector2i, glyph i32, texture_idx i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_glyph_texture_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254580980)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_glyph_texture_rid(font_rid RID, size Vector2i, glyph i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_texture_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1451696141)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_glyph_texture_size(font_rid RID, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 513728628)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_glyph_contours(font RID, size i32, index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_contours")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903964473)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_kerning_list(font_rid RID, size i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_kerning_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778388067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_clear_kerning_map(font_rid RID, size i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_clear_kerning_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_remove_kerning(font_rid RID, size i32, glyph_pair Vector2i) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_remove_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2141860016)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_set_kerning(font_rid RID, size i32, glyph_pair Vector2i, kerning Vector2) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3630965883)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_kerning(font_rid RID, size i32, glyph_pair Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1019980169)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_glyph_index(font_rid RID, size i32, gdchar i32, variation_selector i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1765635060)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&variation_selector)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_char_from_glyph_index(font_rid RID, size i32, glyph_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_char_from_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2156738276)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_has_char(font_rid RID, gdchar i32) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_has_char")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3120086654)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&gdchar)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_supported_chars(font_rid RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_supported_chars")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_render_range(font_rid RID, size Vector2i, start i32, end i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_render_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4254580980)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_render_glyph(font_rid RID, size Vector2i, index i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_render_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3810512262)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_draw_glyph(font_rid RID, canvas RID, size i32, pos Vector2, index i32, color Color) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_draw_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1821196351)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_draw_glyph_outline(font_rid RID, canvas RID, size i32, outline_size i32, pos Vector2, index i32, color Color) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_draw_glyph_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1124898203)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_is_language_supported(font_rid RID, language String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_is_language_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199320846)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_language_support_override(font_rid RID, language String, supported bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2313957094)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_get_language_support_override(font_rid RID, language String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829184646)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_remove_language_support_override(font_rid RID, language String) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_remove_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_get_language_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_language_support_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801473409)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_is_script_supported(font_rid RID, script String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_is_script_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3199320846)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_script_support_override(font_rid RID, script String, supported bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2313957094)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_get_script_support_override(font_rid RID, script String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829184646)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_remove_script_support_override(font_rid RID, script String) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_remove_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) font_get_script_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_script_support_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2801473409)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_opentype_feature_overrides(font_rid RID, overrides Dictionary) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_opentype_feature_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1217542888)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) font_get_opentype_feature_overrides(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_opentype_feature_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_supported_feature_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_supported_feature_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_supported_variation_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_supported_variation_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882737106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) font_get_global_oversampling() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_get_global_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) font_set_global_oversampling(oversampling f32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("font_set_global_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) get_hex_code_box_size(size i32, index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_hex_code_box_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) draw_hex_code_box(canvas RID, size i32, pos Vector2, index i32, color Color) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("draw_hex_code_box")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602046441)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) create_shaped_text(direction TextServerDirection, orientation TextServerOrientation) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("create_shaped_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231398698)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    args[1] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_clear(rid RID) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) shaped_text_set_direction(shaped RID, direction TextServerDirection) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2616949700)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_direction(shaped RID) TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3065904362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_inferred_direction(shaped RID) TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_inferred_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3065904362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_bidi_override(shaped RID, override Array) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684822712)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServer) shaped_text_set_custom_punctuation(shaped RID, punct String) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_custom_punctuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2726140452)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_custom_punctuation(shaped RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_custom_punctuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642473191)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_orientation(shaped RID, orientation TextServerOrientation) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 104095128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_orientation(shaped RID) TextServerOrientation {
    mut object_out := TextServerOrientation.orientation_horizontal
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3142708106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_preserve_invalid(shaped RID, enabled bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_preserve_invalid(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_preserve_control(shaped RID, enabled bool) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_preserve_control(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_set_spacing(shaped RID, spacing TextServerSpacingType, value i32) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_set_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307259930)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_spacing(shaped RID, spacing TextServerSpacingType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1213653558)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&spacing)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_add_string(shaped RID, text String, fonts Array, size i32, opentype_features Dictionary, language String, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_add_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2621279422)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&text)}
    args[2] = unsafe{voidptr(&fonts)}
    args[3] = unsafe{voidptr(&size)}
    args[4] = unsafe{voidptr(&opentype_features)}
    args[5] = unsafe{voidptr(&language)}
    args[6] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_add_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i32, baseline f32) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_add_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2838446185)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&size)}
    args[3] = unsafe{voidptr(&inline_align)}
    args[4] = unsafe{voidptr(&length)}
    args[5] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_resize_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f32) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_resize_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2353789835)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&size)}
    args[3] = unsafe{voidptr(&inline_align)}
    args[4] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_get_span_count(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_get_span_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_get_span_meta(shaped RID, index i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_get_span_meta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069510997)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_set_span_update_font(shaped RID, index i32, fonts Array, size i32, opentype_features Dictionary) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_set_span_update_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1578983057)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_substr(shaped RID, start i32, length i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_substr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1937682086)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_parent(shaped RID) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_fit_to_width(shaped RID, width f32, justification_flags TextServerJustificationFlag) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_fit_to_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 603718830)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&justification_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_tab_align(shaped RID, tab_stops PackedFloat32Array) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_tab_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1283669550)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_shape(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_is_ready(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_is_ready")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_has_visible_chars(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_has_visible_chars")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_glyphs(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_sort_logical(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_sort_logical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2670461153)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_glyph_count(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_glyph_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_range(shaped RID) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 733700038)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_line_breaks_adv(shaped RID, width PackedFloat32Array, start i32, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_line_breaks_adv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4206849830)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&once)}
    args[4] = unsafe{voidptr(&break_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_line_breaks(shaped RID, width f32, start i32, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_line_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 303410369)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&break_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_word_breaks(shaped RID, grapheme_flags TextServerGraphemeFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_word_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3299477123)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&grapheme_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_trim_pos(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_trim_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ellipsis_pos(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_ellipsis_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ellipsis_glyphs(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_ellipsis_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ellipsis_glyph_count(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_ellipsis_glyph_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServer) shaped_text_overrun_trim_to_width(shaped RID, width f32, overrun_trim_flags TextServerTextOverrunFlag) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_overrun_trim_to_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572579718)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_objects(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684255073)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_object_rect(shaped RID, key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_object_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 447978354)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_size(shaped RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_ascent(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_descent(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_width(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_underline_position(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_underline_thickness(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_carets(shaped RID, position i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_carets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1574219346)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_selection(shaped RID, start i32, end i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3714187733)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_hit_test_grapheme(shaped RID, coords f32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_hit_test_grapheme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3149310417)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_hit_test_position(shaped RID, coords f32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_hit_test_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3149310417)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_get_grapheme_bounds(shaped RID, pos i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_grapheme_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546185844)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_next_grapheme_pos(shaped RID, pos i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_next_grapheme_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_prev_grapheme_pos(shaped RID, pos i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_prev_grapheme_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1120910005)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) shaped_text_draw(shaped RID, canvas RID, pos Vector2, clip_l f32, clip_r f32, color Color) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 70679950)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_draw_outline(shaped RID, canvas RID, pos Vector2, clip_l f32, clip_r f32, outline_size i32, color Color) {
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_draw_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2673671346)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServer) shaped_text_get_dominant_direction_in_range(shaped RID, start i32, end i32) TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("shaped_text_get_dominant_direction_in_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3326907668)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) format_number(number String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("format_number")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2305636099)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&number)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) parse_number(number String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("parse_number")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2305636099)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&number)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) percent_sign(language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("percent_sign")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993269549)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) string_get_word_breaks(gdstring String, language String, chars_per_line i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("string_get_word_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1398910359)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    args[2] = unsafe{voidptr(&chars_per_line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) is_confusable(gdstring String, dict PackedStringArray) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_confusable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1433197768)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&dict)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) spoof_check(gdstring String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("spoof_check")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) strip_diacritics(gdstring String) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("strip_diacritics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) is_valid_identifier(gdstring String) bool {
    mut object_out := false
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_valid_identifier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) string_to_upper(gdstring String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("string_to_upper")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2305636099)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) string_to_lower(gdstring String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("string_to_lower")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2305636099)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServer) parse_structured_text(parser_type TextServerStructuredTextParser, gdargs Array, text String) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServer")
    defer { classname.deinit() }
    fnname := StringName.new("parse_structured_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3310685015)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&parser_type)}
    args[1] = unsafe{voidptr(&gdargs)}
    args[2] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

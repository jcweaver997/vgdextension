pub type TextServerExtension = voidptr

pub fn (r &TextServerExtension) uhas_feature(feature TextServerFeature) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uget_features() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufree_rid(rid RID) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) uhas(rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) uload_support_data(filename String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_load_support_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filename)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uget_support_data_filename() String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_support_data_filename")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uget_support_data_info() String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_support_data_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) usave_support_data(filename String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_save_support_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filename)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uis_locale_right_to_left(locale String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_locale_right_to_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uname_to_tag(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_name_to_tag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) utag_to_name(tag i32) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_tag_to_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ucreate_font() RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_data(font_rid RID, data PackedByteArray) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_set_data_ptr(font_rid RID, data_ptr &u8, data_size i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_data_ptr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_set_face_index(font_rid RID, face_index i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_face_index(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_face_count(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_face_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_style(font_rid RID, style TextServerFontStyle) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_style")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_style(font_rid RID) TextServerFontStyle {
    mut object_out := TextServerFontStyle(unsafe{nil})
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_style")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_name(font_rid RID, name String) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_name(font_rid RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_ot_name_strings(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_ot_name_strings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_style_name(font_rid RID, name_style String) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_style_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_style_name(font_rid RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_style_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_weight(font_rid RID, weight i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_weight(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_stretch(font_rid RID, stretch i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_stretch(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_antialiasing(font_rid RID, antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_antialiasing(font_rid RID) TextServerFontAntialiasing {
    mut object_out := TextServerFontAntialiasing.font_antialiasing_none
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_generate_mipmaps(font_rid RID, generate_mipmaps bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_generate_mipmaps(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_multichannel_signed_distance_field(font_rid RID, msdf bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_is_multichannel_signed_distance_field(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_is_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_msdf_pixel_range(font_rid RID, msdf_pixel_range i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_msdf_pixel_range(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_msdf_size(font_rid RID, msdf_size i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_msdf_size(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_fixed_size(font_rid RID, fixed_size i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_fixed_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_fixed_size(font_rid RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_fixed_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_allow_system_fallback(font_rid RID, allow_system_fallback bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_is_allow_system_fallback(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_is_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_force_autohinter(font_rid RID, force_autohinter bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_is_force_autohinter(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_is_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_hinting(font_rid RID, hinting TextServerHinting) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_hinting(font_rid RID) TextServerHinting {
    mut object_out := TextServerHinting.hinting_none
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_subpixel_positioning(font_rid RID, subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_subpixel_positioning(font_rid RID) TextServerSubpixelPositioning {
    mut object_out := TextServerSubpixelPositioning.subpixel_positioning_disabled
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_embolden(font_rid RID, strength f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_embolden(font_rid RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_transform(font_rid RID, transform Transform2D) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_transform(font_rid RID) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_variation_coordinates(font_rid RID, variation_coordinates Dictionary) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_variation_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_variation_coordinates(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_variation_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_oversampling(font_rid RID, oversampling f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_oversampling(font_rid RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_size_cache_list(font_rid RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_size_cache_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_clear_size_cache(font_rid RID) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_clear_size_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_remove_size_cache(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_remove_size_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_set_ascent(font_rid RID, size i32, ascent f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_ascent(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_descent(font_rid RID, size i32, descent f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_descent(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_underline_position(font_rid RID, size i32, underline_position f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_underline_position(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_underline_thickness(font_rid RID, size i32, underline_thickness f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_underline_thickness(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_scale(font_rid RID, size i32, scale f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_scale(font_rid RID, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_texture_count(font_rid RID, size Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_texture_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_clear_textures(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_clear_textures")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_remove_texture(font_rid RID, size Vector2i, texture_index i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_remove_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_set_texture_image(font_rid RID, size Vector2i, texture_index i32, image Image) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_texture_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_texture_image(font_rid RID, size Vector2i, texture_index i32) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_texture_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_texture_offsets(font_rid RID, size Vector2i, texture_index i32, offset PackedInt32Array) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_texture_offsets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_texture_offsets(font_rid RID, size Vector2i, texture_index i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_texture_offsets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_glyph_list(font_rid RID, size Vector2i) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_clear_glyphs(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_clear_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_remove_glyph(font_rid RID, size Vector2i, glyph i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_remove_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_glyph_advance(font_rid RID, size i32, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_glyph_advance(font_rid RID, size i32, glyph i32, advance Vector2) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_glyph_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_glyph_offset(font_rid RID, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_glyph_offset(font_rid RID, size Vector2i, glyph i32, offset Vector2) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_glyph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_glyph_size(font_rid RID, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_glyph_size(font_rid RID, size Vector2i, glyph i32, gl_size Vector2) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_glyph_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_glyph_uv_rect(font_rid RID, size Vector2i, glyph i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_uv_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_glyph_uv_rect(font_rid RID, size Vector2i, glyph i32, uv_rect Rect2) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_glyph_uv_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_glyph_texture_idx(font_rid RID, size Vector2i, glyph i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_texture_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_glyph_texture_idx(font_rid RID, size Vector2i, glyph i32, texture_idx i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_glyph_texture_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_glyph_texture_rid(font_rid RID, size Vector2i, glyph i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_texture_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_glyph_texture_size(font_rid RID, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_glyph_contours(font_rid RID, size i32, index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_contours")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_kerning_list(font_rid RID, size i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_kerning_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_clear_kerning_map(font_rid RID, size i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_clear_kerning_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_remove_kerning(font_rid RID, size i32, glyph_pair Vector2i) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_remove_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_set_kerning(font_rid RID, size i32, glyph_pair Vector2i, kerning Vector2) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_kerning(font_rid RID, size i32, glyph_pair Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_glyph_index(font_rid RID, size i32, gdchar i32, variation_selector i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&variation_selector)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_char_from_glyph_index(font_rid RID, size i32, glyph_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_char_from_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_has_char(font_rid RID, gdchar i32) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_has_char")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&gdchar)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_supported_chars(font_rid RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_supported_chars")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_render_range(font_rid RID, size Vector2i, start i32, end i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_render_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_render_glyph(font_rid RID, size Vector2i, index i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_render_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_draw_glyph(font_rid RID, canvas RID, size i32, pos Vector2, index i32, color Color) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_draw_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_draw_glyph_outline(font_rid RID, canvas RID, size i32, outline_size i32, pos Vector2, index i32, color Color) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_draw_glyph_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_is_language_supported(font_rid RID, language String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_is_language_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_language_support_override(font_rid RID, language String, supported bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_get_language_support_override(font_rid RID, language String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_remove_language_support_override(font_rid RID, language String) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_remove_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_get_language_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_language_support_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_is_script_supported(font_rid RID, script String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_is_script_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_script_support_override(font_rid RID, script String, supported bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_get_script_support_override(font_rid RID, script String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_remove_script_support_override(font_rid RID, script String) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_remove_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ufont_get_script_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_script_support_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_opentype_feature_overrides(font_rid RID, overrides Dictionary) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_opentype_feature_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ufont_get_opentype_feature_overrides(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_opentype_feature_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_supported_feature_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_supported_feature_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_supported_variation_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_supported_variation_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ufont_get_global_oversampling() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_get_global_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ufont_set_global_oversampling(oversampling f32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_font_set_global_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) uget_hex_code_box_size(size i32, index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_hex_code_box_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) udraw_hex_code_box(canvas RID, size i32, pos Vector2, index i32, color Color) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_draw_hex_code_box")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ucreate_shaped_text(direction TextServerDirection, orientation TextServerOrientation) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_shaped_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    args[1] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_clear(shaped RID) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ushaped_text_set_direction(shaped RID, direction TextServerDirection) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_direction(shaped RID) TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_inferred_direction(shaped RID) TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_inferred_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_set_bidi_override(shaped RID, override Array) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextServerExtension) ushaped_text_set_custom_punctuation(shaped RID, punct String) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_custom_punctuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_custom_punctuation(shaped RID) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_custom_punctuation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_set_orientation(shaped RID, orientation TextServerOrientation) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_orientation(shaped RID) TextServerOrientation {
    mut object_out := TextServerOrientation.orientation_horizontal
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_set_preserve_invalid(shaped RID, enabled bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_preserve_invalid(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_set_preserve_control(shaped RID, enabled bool) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_preserve_control(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_set_spacing(shaped RID, spacing TextServerSpacingType, value i32) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_set_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_spacing(shaped RID, spacing TextServerSpacingType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&spacing)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_add_string(shaped RID, text String, fonts Array, size i32, opentype_features Dictionary, language String, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_add_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub fn (mut r TextServerExtension) ushaped_text_add_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i32, baseline f32) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_add_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub fn (mut r TextServerExtension) ushaped_text_resize_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f32) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_resize_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&size)}
    args[3] = unsafe{voidptr(&inline_align)}
    args[4] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_get_span_count(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_get_span_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_get_span_meta(shaped RID, index i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_get_span_meta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_set_span_update_font(shaped RID, index i32, fonts Array, size i32, opentype_features Dictionary) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_set_span_update_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_substr(shaped RID, start i32, length i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_substr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_parent(shaped RID) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_fit_to_width(shaped RID, width f32, justification_flags TextServerJustificationFlag) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_fit_to_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&justification_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_tab_align(shaped RID, tab_stops PackedFloat32Array) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_tab_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_shape(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_update_breaks(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_update_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_update_justification_ops(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_update_justification_ops")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_is_ready(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_is_ready")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_glyphs(shaped RID) &Glyph {
    mut object_out := &Glyph(unsafe{nil})
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_sort_logical(shaped RID) &Glyph {
    mut object_out := &Glyph(unsafe{nil})
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_sort_logical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_glyph_count(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_glyph_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_range(shaped RID) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_line_breaks_adv(shaped RID, width PackedFloat32Array, start i32, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_line_breaks_adv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&once)}
    args[4] = unsafe{voidptr(&break_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_line_breaks(shaped RID, width f32, start i32, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_line_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&break_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_word_breaks(shaped RID, grapheme_flags TextServerGraphemeFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_word_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&grapheme_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_trim_pos(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_trim_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_ellipsis_pos(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_ellipsis_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_ellipsis_glyph_count(shaped RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_ellipsis_glyph_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_ellipsis_glyphs(shaped RID) &Glyph {
    mut object_out := &Glyph(unsafe{nil})
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_ellipsis_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ushaped_text_overrun_trim_to_width(shaped RID, width f32, trim_flags TextServerTextOverrunFlag) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_overrun_trim_to_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_objects(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_object_rect(shaped RID, key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_object_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_size(shaped RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_ascent(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_descent(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_width(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_underline_position(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_underline_thickness(shaped RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_dominant_direction_in_range(shaped RID, start i32, end i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_dominant_direction_in_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_get_carets(shaped RID, position i32, caret &CaretInfo) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_carets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_selection(shaped RID, start i32, end i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_hit_test_grapheme(shaped RID, coord f32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_hit_test_grapheme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coord)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_hit_test_position(shaped RID, coord f32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_hit_test_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coord)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_draw(shaped RID, canvas RID, pos Vector2, clip_l f32, clip_r f32, color Color) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_draw_outline(shaped RID, canvas RID, pos Vector2, clip_l f32, clip_r f32, outline_size i32, color Color) {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_draw_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextServerExtension) ushaped_text_get_grapheme_bounds(shaped RID, pos i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_get_grapheme_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_next_grapheme_pos(shaped RID, pos i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_next_grapheme_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ushaped_text_prev_grapheme_pos(shaped RID, pos i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shaped_text_prev_grapheme_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uformat_number(gdstring String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_format_number")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uparse_number(gdstring String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_number")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) upercent_sign(language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_percent_sign")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ustrip_diacritics(gdstring String) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_strip_diacritics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uis_valid_identifier(gdstring String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_valid_identifier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ustring_get_word_breaks(gdstring String, language String, chars_per_line i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_string_get_word_breaks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    args[2] = unsafe{voidptr(&chars_per_line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uis_confusable(gdstring String, dict PackedStringArray) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_confusable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&dict)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uspoof_check(gdstring String) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_spoof_check")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ustring_to_upper(gdstring String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_string_to_upper")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) ustring_to_lower(gdstring String, language String) String {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_string_to_lower")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerExtension) uparse_structured_text(parser_type TextServerStructuredTextParser, gdargs Array, text String) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_structured_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&parser_type)}
    args[1] = unsafe{voidptr(&gdargs)}
    args[2] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerExtension) ucleanup() {
    classname := StringName.new("TextServerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_cleanup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

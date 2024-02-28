module vgdextension

@[noinit]
pub struct TextServerExtension {
    TextServer
}

pub interface ITextServerExtensionHasFeature {
    mut:
    virt_has_feature(feature TextServerFeature) bool
}

pub fn (r &TextServerExtension) uhas_feature(feature TextServerFeature) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_has_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionGetName {
    mut:
    virt_get_name() String
}

pub fn (r &TextServerExtension) uget_name() string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionGetFeatures {
    mut:
    virt_get_features() i64
}

pub fn (r &TextServerExtension) uget_features() i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_get_features")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFreeRid {
    mut:
    virt_free_rid(rid RID)
}

pub fn (r &TextServerExtension) ufree_rid(rid RID) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionHas {
    mut:
    virt_has(rid RID) bool
}

pub fn (r &TextServerExtension) uhas(rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_has")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionLoadSupportData {
    mut:
    virt_load_support_data(filename String) bool
}

pub fn (r &TextServerExtension) uload_support_data(filename string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_load_support_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(filename)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionGetSupportDataFilename {
    mut:
    virt_get_support_data_filename() String
}

pub fn (r &TextServerExtension) uget_support_data_filename() string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_get_support_data_filename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionGetSupportDataInfo {
    mut:
    virt_get_support_data_info() String
}

pub fn (r &TextServerExtension) uget_support_data_info() string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_get_support_data_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionSaveSupportData {
    mut:
    virt_save_support_data(filename String) bool
}

pub fn (r &TextServerExtension) usave_support_data(filename string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_save_support_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(filename)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionIsLocaleRightToLeft {
    mut:
    virt_is_locale_right_to_left(locale String) bool
}

pub fn (r &TextServerExtension) uis_locale_right_to_left(locale string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_is_locale_right_to_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionNameToTag {
    mut:
    virt_name_to_tag(name String) i64
}

pub fn (r &TextServerExtension) uname_to_tag(name string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_name_to_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionTagToName {
    mut:
    virt_tag_to_name(tag i64) String
}

pub fn (r &TextServerExtension) utag_to_name(tag i64) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_tag_to_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionCreateFont {
    mut:
    virt_create_font() RID
}

pub fn (r &TextServerExtension) ucreate_font() RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_create_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionCreateFontLinkedVariation {
    mut:
    virt_create_font_linked_variation(font_rid RID) RID
}

pub fn (r &TextServerExtension) ucreate_font_linked_variation(font_rid RID) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_create_font_linked_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetData {
    mut:
    virt_font_set_data(font_rid RID, data PackedByteArray)
}

pub fn (r &TextServerExtension) ufont_set_data(font_rid RID, data PackedByteArray) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontSetDataPtr {
    mut:
    virt_font_set_data_ptr(font_rid RID, data_ptr &u8, data_size i64)
}

pub fn (r &TextServerExtension) ufont_set_data_ptr(font_rid RID, data_ptr &u8, data_size i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_data_ptr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&data_ptr)}
    args[2] = unsafe{voidptr(&data_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontSetFaceIndex {
    mut:
    virt_font_set_face_index(font_rid RID, face_index i64)
}

pub fn (r &TextServerExtension) ufont_set_face_index(font_rid RID, face_index i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&face_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetFaceIndex {
    mut:
    virt_font_get_face_index(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_face_index(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetFaceCount {
    mut:
    virt_font_get_face_count(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_face_count(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_face_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetStyle {
    mut:
    virt_font_set_style(font_rid RID, style TextServerFontStyle)
}

pub fn (r &TextServerExtension) ufont_set_style(font_rid RID, style TextServerFontStyle) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_style")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_style := i64(style)
    args[1] = unsafe{voidptr(&i64_style)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetStyle {
    mut:
    virt_font_get_style(font_rid RID) TextServerFontStyle
}

pub fn (r &TextServerExtension) ufont_get_style(font_rid RID) TextServerFontStyle {
    mut object_out := i64(TextServerFontStyle.font_bold)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_style")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFontStyle(object_out)}
}
pub interface ITextServerExtensionFontSetName {
    mut:
    virt_font_set_name(font_rid RID, name String)
}

pub fn (r &TextServerExtension) ufont_set_name(font_rid RID, name string) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetName {
    mut:
    virt_font_get_name(font_rid RID) String
}

pub fn (r &TextServerExtension) ufont_get_name(font_rid RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionFontGetOtNameStrings {
    mut:
    virt_font_get_ot_name_strings(font_rid RID) Dictionary
}

pub fn (r &TextServerExtension) ufont_get_ot_name_strings(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_ot_name_strings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetStyleName {
    mut:
    virt_font_set_style_name(font_rid RID, name_style String)
}

pub fn (r &TextServerExtension) ufont_set_style_name(font_rid RID, name_style string) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_style_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(name_style)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetStyleName {
    mut:
    virt_font_get_style_name(font_rid RID) String
}

pub fn (r &TextServerExtension) ufont_get_style_name(font_rid RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_style_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionFontSetWeight {
    mut:
    virt_font_set_weight(font_rid RID, weight i64)
}

pub fn (r &TextServerExtension) ufont_set_weight(font_rid RID, weight i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetWeight {
    mut:
    virt_font_get_weight(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_weight(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetStretch {
    mut:
    virt_font_set_stretch(font_rid RID, stretch i64)
}

pub fn (r &TextServerExtension) ufont_set_stretch(font_rid RID, stretch i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&stretch)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetStretch {
    mut:
    virt_font_get_stretch(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_stretch(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetAntialiasing {
    mut:
    virt_font_set_antialiasing(font_rid RID, antialiasing TextServerFontAntialiasing)
}

pub fn (r &TextServerExtension) ufont_set_antialiasing(font_rid RID, antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_antialiasing := i64(antialiasing)
    args[1] = unsafe{voidptr(&i64_antialiasing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetAntialiasing {
    mut:
    virt_font_get_antialiasing(font_rid RID) TextServerFontAntialiasing
}

pub fn (r &TextServerExtension) ufont_get_antialiasing(font_rid RID) TextServerFontAntialiasing {
    mut object_out := i64(TextServerFontAntialiasing.font_antialiasing_none)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFontAntialiasing(object_out)}
}
pub interface ITextServerExtensionFontSetGenerateMipmaps {
    mut:
    virt_font_set_generate_mipmaps(font_rid RID, generate_mipmaps bool)
}

pub fn (r &TextServerExtension) ufont_set_generate_mipmaps(font_rid RID, generate_mipmaps bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&generate_mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGenerateMipmaps {
    mut:
    virt_font_get_generate_mipmaps(font_rid RID) bool
}

pub fn (r &TextServerExtension) ufont_get_generate_mipmaps(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetMultichannelSignedDistanceField {
    mut:
    virt_font_set_multichannel_signed_distance_field(font_rid RID, msdf bool)
}

pub fn (r &TextServerExtension) ufont_set_multichannel_signed_distance_field(font_rid RID, msdf bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_multichannel_signed_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&msdf)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontIsMultichannelSignedDistanceField {
    mut:
    virt_font_is_multichannel_signed_distance_field(font_rid RID) bool
}

pub fn (r &TextServerExtension) ufont_is_multichannel_signed_distance_field(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_is_multichannel_signed_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetMsdfPixelRange {
    mut:
    virt_font_set_msdf_pixel_range(font_rid RID, msdf_pixel_range i64)
}

pub fn (r &TextServerExtension) ufont_set_msdf_pixel_range(font_rid RID, msdf_pixel_range i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_msdf_pixel_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&msdf_pixel_range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetMsdfPixelRange {
    mut:
    virt_font_get_msdf_pixel_range(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_msdf_pixel_range(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_msdf_pixel_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetMsdfSize {
    mut:
    virt_font_set_msdf_size(font_rid RID, msdf_size i64)
}

pub fn (r &TextServerExtension) ufont_set_msdf_size(font_rid RID, msdf_size i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_msdf_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&msdf_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetMsdfSize {
    mut:
    virt_font_get_msdf_size(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_msdf_size(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_msdf_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetFixedSize {
    mut:
    virt_font_set_fixed_size(font_rid RID, fixed_size i64)
}

pub fn (r &TextServerExtension) ufont_set_fixed_size(font_rid RID, fixed_size i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_fixed_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&fixed_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetFixedSize {
    mut:
    virt_font_get_fixed_size(font_rid RID) i64
}

pub fn (r &TextServerExtension) ufont_get_fixed_size(font_rid RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_fixed_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetFixedSizeScaleMode {
    mut:
    virt_font_set_fixed_size_scale_mode(font_rid RID, fixed_size_scale_mode TextServerFixedSizeScaleMode)
}

pub fn (r &TextServerExtension) ufont_set_fixed_size_scale_mode(font_rid RID, fixed_size_scale_mode TextServerFixedSizeScaleMode) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_fixed_size_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_fixed_size_scale_mode := i64(fixed_size_scale_mode)
    args[1] = unsafe{voidptr(&i64_fixed_size_scale_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetFixedSizeScaleMode {
    mut:
    virt_font_get_fixed_size_scale_mode(font_rid RID) TextServerFixedSizeScaleMode
}

pub fn (r &TextServerExtension) ufont_get_fixed_size_scale_mode(font_rid RID) TextServerFixedSizeScaleMode {
    mut object_out := i64(TextServerFixedSizeScaleMode.fixed_size_scale_disable)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_fixed_size_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFixedSizeScaleMode(object_out)}
}
pub interface ITextServerExtensionFontSetAllowSystemFallback {
    mut:
    virt_font_set_allow_system_fallback(font_rid RID, allow_system_fallback bool)
}

pub fn (r &TextServerExtension) ufont_set_allow_system_fallback(font_rid RID, allow_system_fallback bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_allow_system_fallback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&allow_system_fallback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontIsAllowSystemFallback {
    mut:
    virt_font_is_allow_system_fallback(font_rid RID) bool
}

pub fn (r &TextServerExtension) ufont_is_allow_system_fallback(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_is_allow_system_fallback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetForceAutohinter {
    mut:
    virt_font_set_force_autohinter(font_rid RID, force_autohinter bool)
}

pub fn (r &TextServerExtension) ufont_set_force_autohinter(font_rid RID, force_autohinter bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_force_autohinter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&force_autohinter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontIsForceAutohinter {
    mut:
    virt_font_is_force_autohinter(font_rid RID) bool
}

pub fn (r &TextServerExtension) ufont_is_force_autohinter(font_rid RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_is_force_autohinter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetHinting {
    mut:
    virt_font_set_hinting(font_rid RID, hinting TextServerHinting)
}

pub fn (r &TextServerExtension) ufont_set_hinting(font_rid RID, hinting TextServerHinting) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_hinting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_hinting := i64(hinting)
    args[1] = unsafe{voidptr(&i64_hinting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetHinting {
    mut:
    virt_font_get_hinting(font_rid RID) TextServerHinting
}

pub fn (r &TextServerExtension) ufont_get_hinting(font_rid RID) TextServerHinting {
    mut object_out := i64(TextServerHinting.hinting_none)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_hinting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerHinting(object_out)}
}
pub interface ITextServerExtensionFontSetSubpixelPositioning {
    mut:
    virt_font_set_subpixel_positioning(font_rid RID, subpixel_positioning TextServerSubpixelPositioning)
}

pub fn (r &TextServerExtension) ufont_set_subpixel_positioning(font_rid RID, subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_subpixel_positioning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_subpixel_positioning := i64(subpixel_positioning)
    args[1] = unsafe{voidptr(&i64_subpixel_positioning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetSubpixelPositioning {
    mut:
    virt_font_get_subpixel_positioning(font_rid RID) TextServerSubpixelPositioning
}

pub fn (r &TextServerExtension) ufont_get_subpixel_positioning(font_rid RID) TextServerSubpixelPositioning {
    mut object_out := i64(TextServerSubpixelPositioning.subpixel_positioning_disabled)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_subpixel_positioning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerSubpixelPositioning(object_out)}
}
pub interface ITextServerExtensionFontSetEmbolden {
    mut:
    virt_font_set_embolden(font_rid RID, strength f64)
}

pub fn (r &TextServerExtension) ufont_set_embolden(font_rid RID, strength f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_embolden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetEmbolden {
    mut:
    virt_font_get_embolden(font_rid RID) f64
}

pub fn (r &TextServerExtension) ufont_get_embolden(font_rid RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_embolden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetSpacing {
    mut:
    virt_font_set_spacing(font_rid RID, spacing TextServerSpacingType, value i64)
}

pub fn (r &TextServerExtension) ufont_set_spacing(font_rid RID, spacing TextServerSpacingType, value i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetSpacing {
    mut:
    virt_font_get_spacing(font_rid RID, spacing TextServerSpacingType) i64
}

pub fn (r &TextServerExtension) ufont_get_spacing(font_rid RID, spacing TextServerSpacingType) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetTransform {
    mut:
    virt_font_set_transform(font_rid RID, transform Transform2D)
}

pub fn (r &TextServerExtension) ufont_set_transform(font_rid RID, transform Transform2D) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetTransform {
    mut:
    virt_font_get_transform(font_rid RID) Transform2D
}

pub fn (r &TextServerExtension) ufont_get_transform(font_rid RID) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetVariationCoordinates {
    mut:
    virt_font_set_variation_coordinates(font_rid RID, variation_coordinates Dictionary)
}

pub fn (r &TextServerExtension) ufont_set_variation_coordinates(font_rid RID, variation_coordinates Dictionary) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_variation_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&variation_coordinates)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetVariationCoordinates {
    mut:
    virt_font_get_variation_coordinates(font_rid RID) Dictionary
}

pub fn (r &TextServerExtension) ufont_get_variation_coordinates(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_variation_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetOversampling {
    mut:
    virt_font_set_oversampling(font_rid RID, oversampling f64)
}

pub fn (r &TextServerExtension) ufont_set_oversampling(font_rid RID, oversampling f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&oversampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetOversampling {
    mut:
    virt_font_get_oversampling(font_rid RID) f64
}

pub fn (r &TextServerExtension) ufont_get_oversampling(font_rid RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetSizeCacheList {
    mut:
    virt_font_get_size_cache_list(font_rid RID) Array
}

pub fn (r &TextServerExtension) ufont_get_size_cache_list(font_rid RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_size_cache_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontClearSizeCache {
    mut:
    virt_font_clear_size_cache(font_rid RID)
}

pub fn (r &TextServerExtension) ufont_clear_size_cache(font_rid RID) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_clear_size_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontRemoveSizeCache {
    mut:
    virt_font_remove_size_cache(font_rid RID, size Vector2i)
}

pub fn (r &TextServerExtension) ufont_remove_size_cache(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_remove_size_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontSetAscent {
    mut:
    virt_font_set_ascent(font_rid RID, size i64, ascent f64)
}

pub fn (r &TextServerExtension) ufont_set_ascent(font_rid RID, size i64, ascent f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&ascent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetAscent {
    mut:
    virt_font_get_ascent(font_rid RID, size i64) f64
}

pub fn (r &TextServerExtension) ufont_get_ascent(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetDescent {
    mut:
    virt_font_set_descent(font_rid RID, size i64, descent f64)
}

pub fn (r &TextServerExtension) ufont_set_descent(font_rid RID, size i64, descent f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&descent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetDescent {
    mut:
    virt_font_get_descent(font_rid RID, size i64) f64
}

pub fn (r &TextServerExtension) ufont_get_descent(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetUnderlinePosition {
    mut:
    virt_font_set_underline_position(font_rid RID, size i64, underline_position f64)
}

pub fn (r &TextServerExtension) ufont_set_underline_position(font_rid RID, size i64, underline_position f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&underline_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetUnderlinePosition {
    mut:
    virt_font_get_underline_position(font_rid RID, size i64) f64
}

pub fn (r &TextServerExtension) ufont_get_underline_position(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetUnderlineThickness {
    mut:
    virt_font_set_underline_thickness(font_rid RID, size i64, underline_thickness f64)
}

pub fn (r &TextServerExtension) ufont_set_underline_thickness(font_rid RID, size i64, underline_thickness f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&underline_thickness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetUnderlineThickness {
    mut:
    virt_font_get_underline_thickness(font_rid RID, size i64) f64
}

pub fn (r &TextServerExtension) ufont_get_underline_thickness(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetScale {
    mut:
    virt_font_set_scale(font_rid RID, size i64, scale f64)
}

pub fn (r &TextServerExtension) ufont_set_scale(font_rid RID, size i64, scale f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetScale {
    mut:
    virt_font_get_scale(font_rid RID, size i64) f64
}

pub fn (r &TextServerExtension) ufont_get_scale(font_rid RID, size i64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetTextureCount {
    mut:
    virt_font_get_texture_count(font_rid RID, size Vector2i) i64
}

pub fn (r &TextServerExtension) ufont_get_texture_count(font_rid RID, size Vector2i) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_texture_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontClearTextures {
    mut:
    virt_font_clear_textures(font_rid RID, size Vector2i)
}

pub fn (r &TextServerExtension) ufont_clear_textures(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_clear_textures")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontRemoveTexture {
    mut:
    virt_font_remove_texture(font_rid RID, size Vector2i, texture_index i64)
}

pub fn (r &TextServerExtension) ufont_remove_texture(font_rid RID, size Vector2i, texture_index i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_remove_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontSetTextureImage {
    mut:
    virt_font_set_texture_image(font_rid RID, size Vector2i, texture_index i64, image Image)
}

pub fn (r &TextServerExtension) ufont_set_texture_image(font_rid RID, size Vector2i, texture_index i64, image Image) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_texture_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    args[3] = voidptr(&image.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetTextureImage {
    mut:
    virt_font_get_texture_image(font_rid RID, size Vector2i, texture_index i64) Image
}

pub fn (r &TextServerExtension) ufont_get_texture_image(font_rid RID, size Vector2i, texture_index i64) Image {
    mut object_out := Image{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_texture_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetTextureOffsets {
    mut:
    virt_font_set_texture_offsets(font_rid RID, size Vector2i, texture_index i64, offset PackedInt32Array)
}

pub fn (r &TextServerExtension) ufont_set_texture_offsets(font_rid RID, size Vector2i, texture_index i64, offset PackedInt32Array) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_texture_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetTextureOffsets {
    mut:
    virt_font_get_texture_offsets(font_rid RID, size Vector2i, texture_index i64) PackedInt32Array
}

pub fn (r &TextServerExtension) ufont_get_texture_offsets(font_rid RID, size Vector2i, texture_index i64) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_texture_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetGlyphList {
    mut:
    virt_font_get_glyph_list(font_rid RID, size Vector2i) PackedInt32Array
}

pub fn (r &TextServerExtension) ufont_get_glyph_list(font_rid RID, size Vector2i) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontClearGlyphs {
    mut:
    virt_font_clear_glyphs(font_rid RID, size Vector2i)
}

pub fn (r &TextServerExtension) ufont_clear_glyphs(font_rid RID, size Vector2i) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_clear_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontRemoveGlyph {
    mut:
    virt_font_remove_glyph(font_rid RID, size Vector2i, glyph i64)
}

pub fn (r &TextServerExtension) ufont_remove_glyph(font_rid RID, size Vector2i, glyph i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_remove_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGlyphAdvance {
    mut:
    virt_font_get_glyph_advance(font_rid RID, size i64, glyph i64) Vector2
}

pub fn (r &TextServerExtension) ufont_get_glyph_advance(font_rid RID, size i64, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetGlyphAdvance {
    mut:
    virt_font_set_glyph_advance(font_rid RID, size i64, glyph i64, advance Vector2)
}

pub fn (r &TextServerExtension) ufont_set_glyph_advance(font_rid RID, size i64, glyph i64, advance Vector2) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_glyph_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&advance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGlyphOffset {
    mut:
    virt_font_get_glyph_offset(font_rid RID, size Vector2i, glyph i64) Vector2
}

pub fn (r &TextServerExtension) ufont_get_glyph_offset(font_rid RID, size Vector2i, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetGlyphOffset {
    mut:
    virt_font_set_glyph_offset(font_rid RID, size Vector2i, glyph i64, offset Vector2)
}

pub fn (r &TextServerExtension) ufont_set_glyph_offset(font_rid RID, size Vector2i, glyph i64, offset Vector2) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_glyph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGlyphSize {
    mut:
    virt_font_get_glyph_size(font_rid RID, size Vector2i, glyph i64) Vector2
}

pub fn (r &TextServerExtension) ufont_get_glyph_size(font_rid RID, size Vector2i, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetGlyphSize {
    mut:
    virt_font_set_glyph_size(font_rid RID, size Vector2i, glyph i64, gl_size Vector2)
}

pub fn (r &TextServerExtension) ufont_set_glyph_size(font_rid RID, size Vector2i, glyph i64, gl_size Vector2) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_glyph_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&gl_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGlyphUvRect {
    mut:
    virt_font_get_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64) Rect2
}

pub fn (r &TextServerExtension) ufont_get_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_uv_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetGlyphUvRect {
    mut:
    virt_font_set_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64, uv_rect Rect2)
}

pub fn (r &TextServerExtension) ufont_set_glyph_uv_rect(font_rid RID, size Vector2i, glyph i64, uv_rect Rect2) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_glyph_uv_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&uv_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGlyphTextureIdx {
    mut:
    virt_font_get_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64) i64
}

pub fn (r &TextServerExtension) ufont_get_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_texture_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetGlyphTextureIdx {
    mut:
    virt_font_set_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64, texture_idx i64)
}

pub fn (r &TextServerExtension) ufont_set_glyph_texture_idx(font_rid RID, size Vector2i, glyph i64, texture_idx i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_glyph_texture_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&texture_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetGlyphTextureRid {
    mut:
    virt_font_get_glyph_texture_rid(font_rid RID, size Vector2i, glyph i64) RID
}

pub fn (r &TextServerExtension) ufont_get_glyph_texture_rid(font_rid RID, size Vector2i, glyph i64) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_texture_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetGlyphTextureSize {
    mut:
    virt_font_get_glyph_texture_size(font_rid RID, size Vector2i, glyph i64) Vector2
}

pub fn (r &TextServerExtension) ufont_get_glyph_texture_size(font_rid RID, size Vector2i, glyph i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetGlyphContours {
    mut:
    virt_font_get_glyph_contours(font_rid RID, size i64, index i64) Dictionary
}

pub fn (r &TextServerExtension) ufont_get_glyph_contours(font_rid RID, size i64, index i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_contours")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetKerningList {
    mut:
    virt_font_get_kerning_list(font_rid RID, size i64) Array
}

pub fn (r &TextServerExtension) ufont_get_kerning_list(font_rid RID, size i64) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_kerning_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontClearKerningMap {
    mut:
    virt_font_clear_kerning_map(font_rid RID, size i64)
}

pub fn (r &TextServerExtension) ufont_clear_kerning_map(font_rid RID, size i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_clear_kerning_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontRemoveKerning {
    mut:
    virt_font_remove_kerning(font_rid RID, size i64, glyph_pair Vector2i)
}

pub fn (r &TextServerExtension) ufont_remove_kerning(font_rid RID, size i64, glyph_pair Vector2i) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_remove_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontSetKerning {
    mut:
    virt_font_set_kerning(font_rid RID, size i64, glyph_pair Vector2i, kerning Vector2)
}

pub fn (r &TextServerExtension) ufont_set_kerning(font_rid RID, size i64, glyph_pair Vector2i, kerning Vector2) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    args[3] = unsafe{voidptr(&kerning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetKerning {
    mut:
    virt_font_get_kerning(font_rid RID, size i64, glyph_pair Vector2i) Vector2
}

pub fn (r &TextServerExtension) ufont_get_kerning(font_rid RID, size i64, glyph_pair Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetGlyphIndex {
    mut:
    virt_font_get_glyph_index(font_rid RID, size i64, gdchar i64, variation_selector i64) i64
}

pub fn (r &TextServerExtension) ufont_get_glyph_index(font_rid RID, size i64, gdchar i64, variation_selector i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_glyph_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontGetCharFromGlyphIndex {
    mut:
    virt_font_get_char_from_glyph_index(font_rid RID, size i64, glyph_index i64) i64
}

pub fn (r &TextServerExtension) ufont_get_char_from_glyph_index(font_rid RID, size i64, glyph_index i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_char_from_glyph_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontHasChar {
    mut:
    virt_font_has_char(font_rid RID, gdchar i64) bool
}

pub fn (r &TextServerExtension) ufont_has_char(font_rid RID, gdchar i64) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_has_char")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&gdchar)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetSupportedChars {
    mut:
    virt_font_get_supported_chars(font_rid RID) String
}

pub fn (r &TextServerExtension) ufont_get_supported_chars(font_rid RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_supported_chars")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionFontRenderRange {
    mut:
    virt_font_render_range(font_rid RID, size Vector2i, start i64, end i64)
}

pub fn (r &TextServerExtension) ufont_render_range(font_rid RID, size Vector2i, start i64, end i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_render_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontRenderGlyph {
    mut:
    virt_font_render_glyph(font_rid RID, size Vector2i, index i64)
}

pub fn (r &TextServerExtension) ufont_render_glyph(font_rid RID, size Vector2i, index i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_render_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontDrawGlyph {
    mut:
    virt_font_draw_glyph(font_rid RID, canvas RID, size i64, pos Vector2, index i64, color Color)
}

pub fn (r &TextServerExtension) ufont_draw_glyph(font_rid RID, canvas RID, size i64, pos Vector2, index i64, color Color) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_draw_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontDrawGlyphOutline {
    mut:
    virt_font_draw_glyph_outline(font_rid RID, canvas RID, size i64, outline_size i64, pos Vector2, index i64, color Color)
}

pub fn (r &TextServerExtension) ufont_draw_glyph_outline(font_rid RID, canvas RID, size i64, outline_size i64, pos Vector2, index i64, color Color) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_draw_glyph_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontIsLanguageSupported {
    mut:
    virt_font_is_language_supported(font_rid RID, language String) bool
}

pub fn (r &TextServerExtension) ufont_is_language_supported(font_rid RID, language string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_is_language_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontSetLanguageSupportOverride {
    mut:
    virt_font_set_language_support_override(font_rid RID, language String, supported bool)
}

pub fn (r &TextServerExtension) ufont_set_language_support_override(font_rid RID, language string, supported bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontGetLanguageSupportOverride {
    mut:
    virt_font_get_language_support_override(font_rid RID, language String) bool
}

pub fn (r &TextServerExtension) ufont_get_language_support_override(font_rid RID, language string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontRemoveLanguageSupportOverride {
    mut:
    virt_font_remove_language_support_override(font_rid RID, language String)
}

pub fn (r &TextServerExtension) ufont_remove_language_support_override(font_rid RID, language string) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_remove_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetLanguageSupportOverrides {
    mut:
    virt_font_get_language_support_overrides(font_rid RID) PackedStringArray
}

pub fn (r &TextServerExtension) ufont_get_language_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_language_support_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontIsScriptSupported {
    mut:
    virt_font_is_script_supported(font_rid RID, script String) bool
}

pub fn (r &TextServerExtension) ufont_is_script_supported(font_rid RID, script string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_is_script_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontSetScriptSupportOverride {
    mut:
    virt_font_set_script_support_override(font_rid RID, script String, supported bool)
}

pub fn (r &TextServerExtension) ufont_set_script_support_override(font_rid RID, script string, supported bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontGetScriptSupportOverride {
    mut:
    virt_font_get_script_support_override(font_rid RID, script String) bool
}

pub fn (r &TextServerExtension) ufont_get_script_support_override(font_rid RID, script string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionFontRemoveScriptSupportOverride {
    mut:
    virt_font_remove_script_support_override(font_rid RID, script String)
}

pub fn (r &TextServerExtension) ufont_remove_script_support_override(font_rid RID, script string) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_remove_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    arg_sn1 := String.new(script)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetScriptSupportOverrides {
    mut:
    virt_font_get_script_support_overrides(font_rid RID) PackedStringArray
}

pub fn (r &TextServerExtension) ufont_get_script_support_overrides(font_rid RID) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_script_support_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetOpentypeFeatureOverrides {
    mut:
    virt_font_set_opentype_feature_overrides(font_rid RID, overrides Dictionary)
}

pub fn (r &TextServerExtension) ufont_set_opentype_feature_overrides(font_rid RID, overrides Dictionary) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_opentype_feature_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    args[1] = unsafe{voidptr(&overrides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionFontGetOpentypeFeatureOverrides {
    mut:
    virt_font_get_opentype_feature_overrides(font_rid RID) Dictionary
}

pub fn (r &TextServerExtension) ufont_get_opentype_feature_overrides(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_opentype_feature_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSupportedFeatureList {
    mut:
    virt_font_supported_feature_list(font_rid RID) Dictionary
}

pub fn (r &TextServerExtension) ufont_supported_feature_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_supported_feature_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSupportedVariationList {
    mut:
    virt_font_supported_variation_list(font_rid RID) Dictionary
}

pub fn (r &TextServerExtension) ufont_supported_variation_list(font_rid RID) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_supported_variation_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontGetGlobalOversampling {
    mut:
    virt_font_get_global_oversampling() f64
}

pub fn (r &TextServerExtension) ufont_get_global_oversampling() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_get_global_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFontSetGlobalOversampling {
    mut:
    virt_font_set_global_oversampling(oversampling f64)
}

pub fn (r &TextServerExtension) ufont_set_global_oversampling(oversampling f64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_font_set_global_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&oversampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionGetHexCodeBoxSize {
    mut:
    virt_get_hex_code_box_size(size i64, index i64) Vector2
}

pub fn (r &TextServerExtension) uget_hex_code_box_size(size i64, index i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_get_hex_code_box_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionDrawHexCodeBox {
    mut:
    virt_draw_hex_code_box(canvas RID, size i64, pos Vector2, index i64, color Color)
}

pub fn (r &TextServerExtension) udraw_hex_code_box(canvas RID, size i64, pos Vector2, index i64, color Color) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_draw_hex_code_box")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionCreateShapedText {
    mut:
    virt_create_shaped_text(direction TextServerDirection, orientation TextServerOrientation) RID
}

pub fn (r &TextServerExtension) ucreate_shaped_text(direction TextServerDirection, orientation TextServerOrientation) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_create_shaped_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextClear {
    mut:
    virt_shaped_text_clear(shaped RID)
}

pub fn (r &TextServerExtension) ushaped_text_clear(shaped RID) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextSetDirection {
    mut:
    virt_shaped_text_set_direction(shaped RID, direction TextServerDirection)
}

pub fn (r &TextServerExtension) ushaped_text_set_direction(shaped RID, direction TextServerDirection) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_direction := i64(direction)
    args[1] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetDirection {
    mut:
    virt_shaped_text_get_direction(shaped RID) TextServerDirection
}

pub fn (r &TextServerExtension) ushaped_text_get_direction(shaped RID) TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub interface ITextServerExtensionShapedTextGetInferredDirection {
    mut:
    virt_shaped_text_get_inferred_direction(shaped RID) TextServerDirection
}

pub fn (r &TextServerExtension) ushaped_text_get_inferred_direction(shaped RID) TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_inferred_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub interface ITextServerExtensionShapedTextSetBidiOverride {
    mut:
    virt_shaped_text_set_bidi_override(shaped RID, override Array)
}

pub fn (r &TextServerExtension) ushaped_text_set_bidi_override(shaped RID, override Array) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextSetCustomPunctuation {
    mut:
    virt_shaped_text_set_custom_punctuation(shaped RID, punct String)
}

pub fn (r &TextServerExtension) ushaped_text_set_custom_punctuation(shaped RID, punct string) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_custom_punctuation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    arg_sn1 := String.new(punct)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetCustomPunctuation {
    mut:
    virt_shaped_text_get_custom_punctuation(shaped RID) String
}

pub fn (r &TextServerExtension) ushaped_text_get_custom_punctuation(shaped RID) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_custom_punctuation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITextServerExtensionShapedTextSetOrientation {
    mut:
    virt_shaped_text_set_orientation(shaped RID, orientation TextServerOrientation)
}

pub fn (r &TextServerExtension) ushaped_text_set_orientation(shaped RID, orientation TextServerOrientation) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_orientation := i64(orientation)
    args[1] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetOrientation {
    mut:
    virt_shaped_text_get_orientation(shaped RID) TextServerOrientation
}

pub fn (r &TextServerExtension) ushaped_text_get_orientation(shaped RID) TextServerOrientation {
    mut object_out := i64(TextServerOrientation.orientation_horizontal)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerOrientation(object_out)}
}
pub interface ITextServerExtensionShapedTextSetPreserveInvalid {
    mut:
    virt_shaped_text_set_preserve_invalid(shaped RID, enabled bool)
}

pub fn (r &TextServerExtension) ushaped_text_set_preserve_invalid(shaped RID, enabled bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_preserve_invalid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetPreserveInvalid {
    mut:
    virt_shaped_text_get_preserve_invalid(shaped RID) bool
}

pub fn (r &TextServerExtension) ushaped_text_get_preserve_invalid(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_preserve_invalid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextSetPreserveControl {
    mut:
    virt_shaped_text_set_preserve_control(shaped RID, enabled bool)
}

pub fn (r &TextServerExtension) ushaped_text_set_preserve_control(shaped RID, enabled bool) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_preserve_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetPreserveControl {
    mut:
    virt_shaped_text_get_preserve_control(shaped RID) bool
}

pub fn (r &TextServerExtension) ushaped_text_get_preserve_control(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_preserve_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextSetSpacing {
    mut:
    virt_shaped_text_set_spacing(shaped RID, spacing TextServerSpacingType, value i64)
}

pub fn (r &TextServerExtension) ushaped_text_set_spacing(shaped RID, spacing TextServerSpacingType, value i64) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_set_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetSpacing {
    mut:
    virt_shaped_text_get_spacing(shaped RID, spacing TextServerSpacingType) i64
}

pub fn (r &TextServerExtension) ushaped_text_get_spacing(shaped RID, spacing TextServerSpacingType) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextAddString {
    mut:
    virt_shaped_text_add_string(shaped RID, text String, fonts Array, size i64, opentype_features Dictionary, language String, meta Variant) bool
}

pub fn (r &TextServerExtension) ushaped_text_add_string(shaped RID, text string, fonts Array, size i64, opentype_features Dictionary, language string, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_add_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextAddObject {
    mut:
    virt_shaped_text_add_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i64, baseline f64) bool
}

pub fn (r &TextServerExtension) ushaped_text_add_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, length i64, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_add_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextResizeObject {
    mut:
    virt_shaped_text_resize_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool
}

pub fn (r &TextServerExtension) ushaped_text_resize_object(shaped RID, key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_resize_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedGetSpanCount {
    mut:
    virt_shaped_get_span_count(shaped RID) i64
}

pub fn (r &TextServerExtension) ushaped_get_span_count(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_get_span_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedGetSpanMeta {
    mut:
    virt_shaped_get_span_meta(shaped RID, index i64) Variant
}

pub fn (r &TextServerExtension) ushaped_get_span_meta(shaped RID, index i64) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_get_span_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedSetSpanUpdateFont {
    mut:
    virt_shaped_set_span_update_font(shaped RID, index i64, fonts Array, size i64, opentype_features Dictionary)
}

pub fn (r &TextServerExtension) ushaped_set_span_update_font(shaped RID, index i64, fonts Array, size i64, opentype_features Dictionary) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_set_span_update_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextSubstr {
    mut:
    virt_shaped_text_substr(shaped RID, start i64, length i64) RID
}

pub fn (r &TextServerExtension) ushaped_text_substr(shaped RID, start i64, length i64) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_substr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetParent {
    mut:
    virt_shaped_text_get_parent(shaped RID) RID
}

pub fn (r &TextServerExtension) ushaped_text_get_parent(shaped RID) RID {
    mut object_out := RID{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextFitToWidth {
    mut:
    virt_shaped_text_fit_to_width(shaped RID, width f64, justification_flags TextServerJustificationFlag) f64
}

pub fn (r &TextServerExtension) ushaped_text_fit_to_width(shaped RID, width f64, justification_flags TextServerJustificationFlag) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_fit_to_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextTabAlign {
    mut:
    virt_shaped_text_tab_align(shaped RID, tab_stops PackedFloat32Array) f64
}

pub fn (r &TextServerExtension) ushaped_text_tab_align(shaped RID, tab_stops PackedFloat32Array) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_tab_align")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextShape {
    mut:
    virt_shaped_text_shape(shaped RID) bool
}

pub fn (r &TextServerExtension) ushaped_text_shape(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextUpdateBreaks {
    mut:
    virt_shaped_text_update_breaks(shaped RID) bool
}

pub fn (r &TextServerExtension) ushaped_text_update_breaks(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_update_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextUpdateJustificationOps {
    mut:
    virt_shaped_text_update_justification_ops(shaped RID) bool
}

pub fn (r &TextServerExtension) ushaped_text_update_justification_ops(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_update_justification_ops")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextIsReady {
    mut:
    virt_shaped_text_is_ready(shaped RID) bool
}

pub fn (r &TextServerExtension) ushaped_text_is_ready(shaped RID) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_is_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetGlyphs {
    mut:
    virt_shaped_text_get_glyphs(shaped RID) &Glyph
}

pub fn (r &TextServerExtension) ushaped_text_get_glyphs(shaped RID) &Glyph {
    mut object_out := &Glyph{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextSortLogical {
    mut:
    virt_shaped_text_sort_logical(shaped RID) &Glyph
}

pub fn (r &TextServerExtension) ushaped_text_sort_logical(shaped RID) &Glyph {
    mut object_out := &Glyph{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_sort_logical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetGlyphCount {
    mut:
    virt_shaped_text_get_glyph_count(shaped RID) i64
}

pub fn (r &TextServerExtension) ushaped_text_get_glyph_count(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_glyph_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetRange {
    mut:
    virt_shaped_text_get_range(shaped RID) Vector2i
}

pub fn (r &TextServerExtension) ushaped_text_get_range(shaped RID) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetLineBreaksAdv {
    mut:
    virt_shaped_text_get_line_breaks_adv(shaped RID, width PackedFloat32Array, start i64, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array
}

pub fn (r &TextServerExtension) ushaped_text_get_line_breaks_adv(shaped RID, width PackedFloat32Array, start i64, once bool, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_line_breaks_adv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextGetLineBreaks {
    mut:
    virt_shaped_text_get_line_breaks(shaped RID, width f64, start i64, break_flags TextServerLineBreakFlag) PackedInt32Array
}

pub fn (r &TextServerExtension) ushaped_text_get_line_breaks(shaped RID, width f64, start i64, break_flags TextServerLineBreakFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_line_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextGetWordBreaks {
    mut:
    virt_shaped_text_get_word_breaks(shaped RID, grapheme_flags TextServerGraphemeFlag) PackedInt32Array
}

pub fn (r &TextServerExtension) ushaped_text_get_word_breaks(shaped RID, grapheme_flags TextServerGraphemeFlag) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_word_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    i64_grapheme_flags := i64(grapheme_flags)
    args[1] = unsafe{voidptr(&i64_grapheme_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetTrimPos {
    mut:
    virt_shaped_text_get_trim_pos(shaped RID) i64
}

pub fn (r &TextServerExtension) ushaped_text_get_trim_pos(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_trim_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetEllipsisPos {
    mut:
    virt_shaped_text_get_ellipsis_pos(shaped RID) i64
}

pub fn (r &TextServerExtension) ushaped_text_get_ellipsis_pos(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_ellipsis_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetEllipsisGlyphCount {
    mut:
    virt_shaped_text_get_ellipsis_glyph_count(shaped RID) i64
}

pub fn (r &TextServerExtension) ushaped_text_get_ellipsis_glyph_count(shaped RID) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_ellipsis_glyph_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetEllipsisGlyphs {
    mut:
    virt_shaped_text_get_ellipsis_glyphs(shaped RID) &Glyph
}

pub fn (r &TextServerExtension) ushaped_text_get_ellipsis_glyphs(shaped RID) &Glyph {
    mut object_out := &Glyph{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_ellipsis_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextOverrunTrimToWidth {
    mut:
    virt_shaped_text_overrun_trim_to_width(shaped RID, width f64, trim_flags TextServerTextOverrunFlag)
}

pub fn (r &TextServerExtension) ushaped_text_overrun_trim_to_width(shaped RID, width f64, trim_flags TextServerTextOverrunFlag) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_overrun_trim_to_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&width)}
    i64_trim_flags := i64(trim_flags)
    args[2] = unsafe{voidptr(&i64_trim_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetObjects {
    mut:
    virt_shaped_text_get_objects(shaped RID) Array
}

pub fn (r &TextServerExtension) ushaped_text_get_objects(shaped RID) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_objects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetObjectRect {
    mut:
    virt_shaped_text_get_object_rect(shaped RID, key Variant) Rect2
}

pub fn (r &TextServerExtension) ushaped_text_get_object_rect(shaped RID, key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_object_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetSize {
    mut:
    virt_shaped_text_get_size(shaped RID) Vector2
}

pub fn (r &TextServerExtension) ushaped_text_get_size(shaped RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetAscent {
    mut:
    virt_shaped_text_get_ascent(shaped RID) f64
}

pub fn (r &TextServerExtension) ushaped_text_get_ascent(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetDescent {
    mut:
    virt_shaped_text_get_descent(shaped RID) f64
}

pub fn (r &TextServerExtension) ushaped_text_get_descent(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetWidth {
    mut:
    virt_shaped_text_get_width(shaped RID) f64
}

pub fn (r &TextServerExtension) ushaped_text_get_width(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetUnderlinePosition {
    mut:
    virt_shaped_text_get_underline_position(shaped RID) f64
}

pub fn (r &TextServerExtension) ushaped_text_get_underline_position(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetUnderlineThickness {
    mut:
    virt_shaped_text_get_underline_thickness(shaped RID) f64
}

pub fn (r &TextServerExtension) ushaped_text_get_underline_thickness(shaped RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetDominantDirectionInRange {
    mut:
    virt_shaped_text_get_dominant_direction_in_range(shaped RID, start i64, end i64) i64
}

pub fn (r &TextServerExtension) ushaped_text_get_dominant_direction_in_range(shaped RID, start i64, end i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_dominant_direction_in_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetCarets {
    mut:
    virt_shaped_text_get_carets(shaped RID, position i64, caret &CaretInfo)
}

pub fn (r &TextServerExtension) ushaped_text_get_carets(shaped RID, position i64, caret &CaretInfo) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_carets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&position)}
    args[2] = unsafe{voidptr(&caret)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITextServerExtensionShapedTextGetSelection {
    mut:
    virt_shaped_text_get_selection(shaped RID, start i64, end i64) PackedVector2Array
}

pub fn (r &TextServerExtension) ushaped_text_get_selection(shaped RID, start i64, end i64) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&start)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextHitTestGrapheme {
    mut:
    virt_shaped_text_hit_test_grapheme(shaped RID, coord f64) i64
}

pub fn (r &TextServerExtension) ushaped_text_hit_test_grapheme(shaped RID, coord f64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_hit_test_grapheme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coord)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextHitTestPosition {
    mut:
    virt_shaped_text_hit_test_position(shaped RID, coord f64) i64
}

pub fn (r &TextServerExtension) ushaped_text_hit_test_position(shaped RID, coord f64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_hit_test_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&coord)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextDraw {
    mut:
    virt_shaped_text_draw(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, color Color)
}

pub fn (r &TextServerExtension) ushaped_text_draw(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, color Color) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextDrawOutline {
    mut:
    virt_shaped_text_draw_outline(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, outline_size i64, color Color)
}

pub fn (r &TextServerExtension) ushaped_text_draw_outline(shaped RID, canvas RID, pos Vector2, clip_l f64, clip_r f64, outline_size i64, color Color) {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_draw_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionShapedTextGetGraphemeBounds {
    mut:
    virt_shaped_text_get_grapheme_bounds(shaped RID, pos i64) Vector2
}

pub fn (r &TextServerExtension) ushaped_text_get_grapheme_bounds(shaped RID, pos i64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_grapheme_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextNextGraphemePos {
    mut:
    virt_shaped_text_next_grapheme_pos(shaped RID, pos i64) i64
}

pub fn (r &TextServerExtension) ushaped_text_next_grapheme_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_next_grapheme_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextPrevGraphemePos {
    mut:
    virt_shaped_text_prev_grapheme_pos(shaped RID, pos i64) i64
}

pub fn (r &TextServerExtension) ushaped_text_prev_grapheme_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_prev_grapheme_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextGetCharacterBreaks {
    mut:
    virt_shaped_text_get_character_breaks(shaped RID) PackedInt32Array
}

pub fn (r &TextServerExtension) ushaped_text_get_character_breaks(shaped RID) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_get_character_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextNextCharacterPos {
    mut:
    virt_shaped_text_next_character_pos(shaped RID, pos i64) i64
}

pub fn (r &TextServerExtension) ushaped_text_next_character_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_next_character_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextPrevCharacterPos {
    mut:
    virt_shaped_text_prev_character_pos(shaped RID, pos i64) i64
}

pub fn (r &TextServerExtension) ushaped_text_prev_character_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_prev_character_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionShapedTextClosestCharacterPos {
    mut:
    virt_shaped_text_closest_character_pos(shaped RID, pos i64) i64
}

pub fn (r &TextServerExtension) ushaped_text_closest_character_pos(shaped RID, pos i64) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_shaped_text_closest_character_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shaped)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionFormatNumber {
    mut:
    virt_format_number(gdstring String, language String) String
}

pub fn (r &TextServerExtension) uformat_number(gdstring string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_format_number")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionParseNumber {
    mut:
    virt_parse_number(gdstring String, language String) String
}

pub fn (r &TextServerExtension) uparse_number(gdstring string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_parse_number")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionPercentSign {
    mut:
    virt_percent_sign(language String) String
}

pub fn (r &TextServerExtension) upercent_sign(language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_percent_sign")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionStripDiacritics {
    mut:
    virt_strip_diacritics(gdstring String) String
}

pub fn (r &TextServerExtension) ustrip_diacritics(gdstring string) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_strip_diacritics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionIsValidIdentifier {
    mut:
    virt_is_valid_identifier(gdstring String) bool
}

pub fn (r &TextServerExtension) uis_valid_identifier(gdstring string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_is_valid_identifier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionStringGetWordBreaks {
    mut:
    virt_string_get_word_breaks(gdstring String, language String, chars_per_line i64) PackedInt32Array
}

pub fn (r &TextServerExtension) ustring_get_word_breaks(gdstring string, language string, chars_per_line i64) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_string_get_word_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionStringGetCharacterBreaks {
    mut:
    virt_string_get_character_breaks(gdstring String, language String) PackedInt32Array
}

pub fn (r &TextServerExtension) ustring_get_character_breaks(gdstring string, language string) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_string_get_character_breaks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionIsConfusable {
    mut:
    virt_is_confusable(gdstring String, dict PackedStringArray) i64
}

pub fn (r &TextServerExtension) uis_confusable(gdstring string, dict PackedStringArray) i64 {
    mut object_out := i64(0)
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_is_confusable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionSpoofCheck {
    mut:
    virt_spoof_check(gdstring String) bool
}

pub fn (r &TextServerExtension) uspoof_check(gdstring string) bool {
    mut object_out := false
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_spoof_check")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextServerExtensionStringToUpper {
    mut:
    virt_string_to_upper(gdstring String, language String) String
}

pub fn (r &TextServerExtension) ustring_to_upper(gdstring string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_string_to_upper")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionStringToLower {
    mut:
    virt_string_to_lower(gdstring String, language String) String
}

pub fn (r &TextServerExtension) ustring_to_lower(gdstring string, language string) string {
    mut object_out := String{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_string_to_lower")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionParseStructuredText {
    mut:
    virt_parse_structured_text(parser_type TextServerStructuredTextParser, gdargs Array, text String) Array
}

pub fn (r &TextServerExtension) uparse_structured_text(parser_type TextServerStructuredTextParser, gdargs Array, text string) Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_parse_structured_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
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
pub interface ITextServerExtensionCleanup {
    mut:
    virt_cleanup()
}

pub fn (r &TextServerExtension) ucleanup() {
    classname := StringName.new("TextServerExtension")
    fnname := StringName.new("_cleanup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

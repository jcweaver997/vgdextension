module vgdextension

@[noinit]
pub struct FontFile {
    Font
}

pub fn (mut r FontFile) load_bitmap_font(path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FontFile")
    fnname := StringName.new("load_bitmap_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r FontFile) load_dynamic_font(path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FontFile")
    fnname := StringName.new("load_dynamic_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r FontFile) set_data(data PackedByteArray) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_font_name(name String) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_font_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_font_style_name(name String) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_font_style_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_font_style(style TextServerFontStyle) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_font_style")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 918070724)
    mut args := unsafe { [1]voidptr{} }
    i64_style := i64(style)
    args[0] = unsafe{voidptr(&i64_style)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_font_weight(weight i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_font_weight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&weight)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_font_stretch(stretch i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_font_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stretch)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_antialiasing(antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669900)
    mut args := unsafe { [1]voidptr{} }
    i64_antialiasing := i64(antialiasing)
    args[0] = unsafe{voidptr(&i64_antialiasing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_antialiasing() TextServerFontAntialiasing {
    mut object_out := i64(TextServerFontAntialiasing.font_antialiasing_none)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_antialiasing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262718649)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFontAntialiasing(object_out)}
}
pub fn (mut r FontFile) set_generate_mipmaps(generate_mipmaps bool) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&generate_mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_generate_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_multichannel_signed_distance_field(msdf bool) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_multichannel_signed_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&msdf)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) is_multichannel_signed_distance_field() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    fnname := StringName.new("is_multichannel_signed_distance_field")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_msdf_pixel_range(msdf_pixel_range i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_msdf_pixel_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&msdf_pixel_range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_msdf_pixel_range() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_msdf_pixel_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_msdf_size(msdf_size i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_msdf_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&msdf_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_msdf_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_msdf_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_fixed_size(fixed_size i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_fixed_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fixed_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_fixed_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_fixed_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_fixed_size_scale_mode(fixed_size_scale_mode TextServerFixedSizeScaleMode) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_fixed_size_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1660989956)
    mut args := unsafe { [1]voidptr{} }
    i64_fixed_size_scale_mode := i64(fixed_size_scale_mode)
    args[0] = unsafe{voidptr(&i64_fixed_size_scale_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_fixed_size_scale_mode() TextServerFixedSizeScaleMode {
    mut object_out := i64(TextServerFixedSizeScaleMode.fixed_size_scale_disable)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_fixed_size_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 753873478)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerFixedSizeScaleMode(object_out)}
}
pub fn (mut r FontFile) set_allow_system_fallback(allow_system_fallback bool) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_allow_system_fallback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_system_fallback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) is_allow_system_fallback() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    fnname := StringName.new("is_allow_system_fallback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_force_autohinter(force_autohinter bool) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_force_autohinter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force_autohinter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) is_force_autohinter() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    fnname := StringName.new("is_force_autohinter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_hinting(hinting TextServerHinting) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_hinting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1827459492)
    mut args := unsafe { [1]voidptr{} }
    i64_hinting := i64(hinting)
    args[0] = unsafe{voidptr(&i64_hinting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_hinting() TextServerHinting {
    mut object_out := i64(TextServerHinting.hinting_none)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_hinting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683214614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerHinting(object_out)}
}
pub fn (mut r FontFile) set_subpixel_positioning(subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_subpixel_positioning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4225742182)
    mut args := unsafe { [1]voidptr{} }
    i64_subpixel_positioning := i64(subpixel_positioning)
    args[0] = unsafe{voidptr(&i64_subpixel_positioning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_subpixel_positioning() TextServerSubpixelPositioning {
    mut object_out := i64(TextServerSubpixelPositioning.subpixel_positioning_disabled)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_subpixel_positioning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1069238588)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerSubpixelPositioning(object_out)}
}
pub fn (mut r FontFile) set_oversampling(oversampling f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&oversampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_oversampling() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FontFile) get_cache_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_cache_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) clear_cache() {
    classname := StringName.new("FontFile")
    fnname := StringName.new("clear_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) remove_cache(cache_index i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_size_cache_list(cache_index i32) Array {
    mut object_out := Array{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_size_cache_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) clear_size_cache(cache_index i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("clear_size_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) remove_size_cache(cache_index i32, size Vector2i) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_size_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_variation_coordinates(cache_index i32, variation_coordinates Dictionary) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_variation_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 64545446)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&variation_coordinates)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_variation_coordinates(cache_index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_variation_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_embolden(cache_index i32, strength f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_embolden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_embolden(cache_index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_embolden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_transform(cache_index i32, transform Transform2D) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30160968)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_transform(cache_index i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836996910)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_extra_spacing(cache_index i32, spacing TextServerSpacingType, value i64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_extra_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 62942285)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_extra_spacing(cache_index i32, spacing TextServerSpacingType) i64 {
    mut object_out := i64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_extra_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1924257185)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    i64_spacing := i64(spacing)
    args[1] = unsafe{voidptr(&i64_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_face_index(cache_index i32, face_index i64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&face_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_face_index(cache_index i32) i64 {
    mut object_out := i64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_face_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_cache_ascent(cache_index i32, size i32, ascent f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_cache_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&ascent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_cache_ascent(cache_index i32, size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_cache_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_cache_descent(cache_index i32, size i32, descent f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_cache_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&descent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_cache_descent(cache_index i32, size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_cache_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_cache_underline_position(cache_index i32, size i32, underline_position f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_cache_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&underline_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_cache_underline_position(cache_index i32, size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_cache_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_cache_underline_thickness(cache_index i32, size i32, underline_thickness f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_cache_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&underline_thickness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_cache_underline_thickness(cache_index i32, size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_cache_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_cache_scale(cache_index i32, size i32, scale f64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_cache_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_cache_scale(cache_index i32, size i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_cache_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FontFile) get_texture_count(cache_index i32, size Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_texture_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1987661582)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) clear_textures(cache_index i32, size Vector2i) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("clear_textures")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) remove_texture(cache_index i32, size Vector2i, texture_index i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_texture_image(cache_index i32, size Vector2i, texture_index i32, image Image) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_texture_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4157974066)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    args[3] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_texture_image(cache_index i32, size Vector2i, texture_index i32) Image {
    mut object_out := Image{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_texture_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3878418953)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_texture_offsets(cache_index i32, size Vector2i, texture_index i32, offset PackedInt32Array) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_texture_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2849993437)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_texture_offsets(cache_index i32, size Vector2i, texture_index i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_texture_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3703444828)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FontFile) get_glyph_list(cache_index i32, size Vector2i) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 681709689)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) clear_glyphs(cache_index i32, size Vector2i) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("clear_glyphs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) remove_glyph(cache_index i32, size Vector2i, glyph i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_glyph_advance(cache_index i32, size i32, glyph i32, advance Vector2) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_glyph_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 947991729)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&advance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_glyph_advance(cache_index i32, size i32, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601573536)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_glyph_offset(cache_index i32, size Vector2i, glyph i32, offset Vector2) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_glyph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 921719850)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_glyph_offset(cache_index i32, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3205412300)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_glyph_size(cache_index i32, size Vector2i, glyph i32, gl_size Vector2) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_glyph_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 921719850)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&gl_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_glyph_size(cache_index i32, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3205412300)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_glyph_uv_rect(cache_index i32, size Vector2i, glyph i32, uv_rect Rect2) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_glyph_uv_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3821620992)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&uv_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_glyph_uv_rect(cache_index i32, size Vector2i, glyph i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_uv_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927917900)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_glyph_texture_idx(cache_index i32, size Vector2i, glyph i32, texture_idx i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_glyph_texture_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 355564111)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    args[3] = unsafe{voidptr(&texture_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_glyph_texture_idx(cache_index i32, size Vector2i, glyph i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_texture_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1629411054)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FontFile) get_kerning_list(cache_index i32, size i32) Array {
    mut object_out := Array{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_kerning_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) clear_kerning_map(cache_index i32, size i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("clear_kerning_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) remove_kerning(cache_index i32, size i32, glyph_pair Vector2i) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3930204747)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_kerning(cache_index i32, size i32, glyph_pair Vector2i, kerning Vector2) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3182200918)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    args[3] = unsafe{voidptr(&kerning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_kerning(cache_index i32, size i32, glyph_pair Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_kerning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611912865)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) render_range(cache_index i32, size Vector2i, start i64, end i64) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("render_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 355564111)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&start)}
    args[3] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) render_glyph(cache_index i32, size Vector2i, index i32) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("render_glyph")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FontFile) set_language_support_override(language String, supported bool) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    args[1] = unsafe{voidptr(&supported)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_language_support_override(language String) bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) remove_language_support_override(language String) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_language_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_language_support_overrides() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_language_support_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_script_support_override(script String, supported bool) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    args[1] = unsafe{voidptr(&supported)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_script_support_override(script String) bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) remove_script_support_override(script String) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("remove_script_support_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_script_support_overrides() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_script_support_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FontFile) set_opentype_feature_overrides(overrides Dictionary) {
    classname := StringName.new("FontFile")
    fnname := StringName.new("set_opentype_feature_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&overrides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FontFile) get_opentype_feature_overrides() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_opentype_feature_overrides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FontFile) get_glyph_index(size i32, gdchar i64, variation_selector i64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_glyph_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 864943070)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&gdchar)}
    args[2] = unsafe{voidptr(&variation_selector)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FontFile) get_char_from_glyph_index(size i32, glyph_index i32) i64 {
    mut object_out := i64(0)
    classname := StringName.new("FontFile")
    fnname := StringName.new("get_char_from_glyph_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&glyph_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

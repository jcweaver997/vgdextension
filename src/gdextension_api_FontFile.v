pub type FontFile = voidptr

pub fn (mut r FontFile) load_bitmap_font(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("load_bitmap_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) load_dynamic_font(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("load_dynamic_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_data(data PackedByteArray) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_font_name(name String) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_font_style_name(name String) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_style_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_font_style(style TextServerFontStyle) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_style")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 918070724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_font_weight(weight i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_font_stretch(stretch i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_antialiasing(antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669900)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_antialiasing() TextServerFontAntialiasing {
    mut object_out := TextServerFontAntialiasing.font_antialiasing_none
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262718649)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_generate_mipmaps(generate_mipmaps bool) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_generate_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_multichannel_signed_distance_field(msdf bool) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) is_multichannel_signed_distance_field() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("is_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_msdf_pixel_range(msdf_pixel_range i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_msdf_pixel_range() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_msdf_size(msdf_size i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_msdf_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_fixed_size(fixed_size i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_fixed_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_fixed_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_fixed_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_allow_system_fallback(allow_system_fallback bool) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) is_allow_system_fallback() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("is_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_force_autohinter(force_autohinter bool) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) is_force_autohinter() bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("is_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_hinting(hinting TextServerHinting) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1827459492)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_hinting() TextServerHinting {
    mut object_out := TextServerHinting.hinting_none
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683214614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_subpixel_positioning(subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4225742182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_subpixel_positioning() TextServerSubpixelPositioning {
    mut object_out := TextServerSubpixelPositioning.subpixel_positioning_disabled
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1069238588)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_oversampling(oversampling f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_oversampling() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FontFile) get_cache_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) clear_cache() {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("clear_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) remove_cache(cache_index i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_size_cache_list(cache_index i32) Array {
    mut object_out := Array{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_size_cache_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) clear_size_cache(cache_index i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("clear_size_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) remove_size_cache(cache_index i32, size Vector2i) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_size_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_variation_coordinates(cache_index i32, variation_coordinates Dictionary) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_variation_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 64545446)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_variation_coordinates(cache_index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_variation_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_embolden(cache_index i32, strength f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_embolden(cache_index i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_transform(cache_index i32, transform Transform2D) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30160968)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_transform(cache_index i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836996910)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_face_index(cache_index i32, face_index i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_face_index(cache_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_cache_ascent(cache_index i32, size i32, ascent f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_cache_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_cache_ascent(cache_index i32, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_cache_descent(cache_index i32, size i32, descent f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_cache_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_cache_descent(cache_index i32, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_cache_underline_position(cache_index i32, size i32, underline_position f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_cache_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_cache_underline_position(cache_index i32, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_cache_underline_thickness(cache_index i32, size i32, underline_thickness f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_cache_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_cache_underline_thickness(cache_index i32, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_cache_scale(cache_index i32, size i32, scale f32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_cache_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_cache_scale(cache_index i32, size i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FontFile) get_texture_count(cache_index i32, size Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1987661582)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) clear_textures(cache_index i32, size Vector2i) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("clear_textures")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) remove_texture(cache_index i32, size Vector2i, texture_index i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_texture_image(cache_index i32, size Vector2i, texture_index i32, image Image) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4157974066)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_texture_image(cache_index i32, size Vector2i, texture_index i32) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3878418953)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_texture_offsets(cache_index i32, size Vector2i, texture_index i32, offset PackedInt32Array) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_offsets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2849993437)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_texture_offsets(cache_index i32, size Vector2i, texture_index i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_offsets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3703444828)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&texture_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FontFile) get_glyph_list(cache_index i32, size Vector2i) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 681709689)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) clear_glyphs(cache_index i32, size Vector2i) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("clear_glyphs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) remove_glyph(cache_index i32, size Vector2i, glyph i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_glyph_advance(cache_index i32, size i32, glyph i32, advance Vector2) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 947991729)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_glyph_advance(cache_index i32, size i32, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601573536)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_glyph_offset(cache_index i32, size Vector2i, glyph i32, offset Vector2) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 921719850)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_glyph_offset(cache_index i32, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3205412300)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_glyph_size(cache_index i32, size Vector2i, glyph i32, gl_size Vector2) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 921719850)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_glyph_size(cache_index i32, size Vector2i, glyph i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3205412300)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_glyph_uv_rect(cache_index i32, size Vector2i, glyph i32, uv_rect Rect2) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_uv_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3821620992)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_glyph_uv_rect(cache_index i32, size Vector2i, glyph i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_uv_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927917900)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_glyph_texture_idx(cache_index i32, size Vector2i, glyph i32, texture_idx i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_texture_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 355564111)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_glyph_texture_idx(cache_index i32, size Vector2i, glyph i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_texture_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1629411054)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FontFile) get_kerning_list(cache_index i32, size i32) Array {
    mut object_out := Array{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_kerning_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) clear_kerning_map(cache_index i32, size i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("clear_kerning_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) remove_kerning(cache_index i32, size i32, glyph_pair Vector2i) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3930204747)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_kerning(cache_index i32, size i32, glyph_pair Vector2i, kerning Vector2) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3182200918)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_kerning(cache_index i32, size i32, glyph_pair Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_kerning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611912865)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&cache_index)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&glyph_pair)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) render_range(cache_index i32, size Vector2i, start i32, end i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("render_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 355564111)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) render_glyph(cache_index i32, size Vector2i, index i32) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("render_glyph")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FontFile) set_language_support_override(language String, supported bool) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_language_support_override(language String) bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) remove_language_support_override(language String) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_language_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_language_support_overrides() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_language_support_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_script_support_override(script String, supported bool) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_script_support_override(script String) bool {
    mut object_out := false
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) remove_script_support_override(script String) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("remove_script_support_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_script_support_overrides() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_support_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontFile) set_opentype_feature_overrides(overrides Dictionary) {
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_opentype_feature_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FontFile) get_opentype_feature_overrides() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_opentype_feature_overrides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FontFile) get_glyph_index(size i32, gdchar i32, variation_selector i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 864943070)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&gdchar)}
    args[2] = unsafe{voidptr(&variation_selector)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FontFile) get_char_from_glyph_index(size i32, glyph_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_char_from_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&glyph_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

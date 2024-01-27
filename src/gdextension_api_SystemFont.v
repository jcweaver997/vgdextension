module vgdextension

pub type SystemFont = voidptr

pub fn (mut r SystemFont) set_antialiasing(antialiasing TextServerFontAntialiasing) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669900)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_antialiasing() TextServerFontAntialiasing {
    mut object_out := TextServerFontAntialiasing.font_antialiasing_none
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_antialiasing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262718649)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_generate_mipmaps(generate_mipmaps bool) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_generate_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_allow_system_fallback(allow_system_fallback bool) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) is_allow_system_fallback() bool {
    mut object_out := false
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("is_allow_system_fallback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_force_autohinter(force_autohinter bool) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) is_force_autohinter() bool {
    mut object_out := false
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("is_force_autohinter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_hinting(hinting TextServerHinting) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1827459492)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_hinting() TextServerHinting {
    mut object_out := TextServerHinting.hinting_none
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_hinting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683214614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_subpixel_positioning(subpixel_positioning TextServerSubpixelPositioning) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4225742182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_subpixel_positioning() TextServerSubpixelPositioning {
    mut object_out := TextServerSubpixelPositioning.subpixel_positioning_disabled
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_subpixel_positioning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1069238588)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_multichannel_signed_distance_field(msdf bool) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) is_multichannel_signed_distance_field() bool {
    mut object_out := false
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("is_multichannel_signed_distance_field")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_msdf_pixel_range(msdf_pixel_range i32) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_msdf_pixel_range() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_msdf_pixel_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_msdf_size(msdf_size i32) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_msdf_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_msdf_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_oversampling(oversampling f32) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_oversampling() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SystemFont) get_font_names() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_font_names(names PackedStringArray) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SystemFont) get_font_italic() bool {
    mut object_out := false
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_italic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SystemFont) set_font_italic(italic bool) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_italic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SystemFont) set_font_weight(weight i32) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_weight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SystemFont) set_font_stretch(stretch i32) {
    classname := StringName.new("SystemFont")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

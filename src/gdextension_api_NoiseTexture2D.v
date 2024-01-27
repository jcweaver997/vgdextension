module vgdextension

pub type NoiseTexture2D = voidptr

pub fn (mut r NoiseTexture2D) set_width(width i32) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) set_height(height i32) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) set_invert(invert bool) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_invert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NoiseTexture2D) get_invert() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_invert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_in_3d_space(enable bool) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_in_3d_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NoiseTexture2D) is_in_3d_space() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_3d_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_generate_mipmaps(invert bool) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NoiseTexture2D) is_generating_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_generating_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_seamless(seamless bool) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_seamless")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) get_seamless() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_seamless")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_seamless_blend_skirt(seamless_blend_skirt f32) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_seamless_blend_skirt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) get_seamless_blend_skirt() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_seamless_blend_skirt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_as_normal_map(as_normal_map bool) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_normal_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) is_normal_map() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_normal_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_bump_strength(bump_strength f32) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bump_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) get_bump_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bump_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_normalize(normalize bool) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_normalize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NoiseTexture2D) is_normalized() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_normalized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_color_ramp(gradient Gradient) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NoiseTexture2D) get_color_ramp() Gradient {
    mut object_out := Gradient(unsafe{nil})
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture2D) set_noise(noise Noise) {
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_noise")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135492439)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NoiseTexture2D) get_noise() Noise {
    mut object_out := Noise(unsafe{nil})
    classname := StringName.new("NoiseTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_noise")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 185851837)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

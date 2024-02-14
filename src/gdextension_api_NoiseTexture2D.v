module vgdextension

@[noinit]
pub struct NoiseTexture2D {
    Texture2D
}

pub fn (mut r NoiseTexture2D) set_width(width i32) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) set_height(height i32) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) set_invert(invert bool) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_invert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture2D) get_invert() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("get_invert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_in_3d_space(enable bool) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_in_3d_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture2D) is_in_3d_space() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("is_in_3d_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_generate_mipmaps(invert bool) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture2D) is_generating_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("is_generating_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_seamless(seamless bool) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_seamless")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seamless)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) get_seamless() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("get_seamless")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_seamless_blend_skirt(seamless_blend_skirt f64) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_seamless_blend_skirt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seamless_blend_skirt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) get_seamless_blend_skirt() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("get_seamless_blend_skirt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_as_normal_map(as_normal_map bool) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_as_normal_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&as_normal_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) is_normal_map() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("is_normal_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_bump_strength(bump_strength f64) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_bump_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bump_strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) get_bump_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("get_bump_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_normalize(normalize bool) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_normalize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normalize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture2D) is_normalized() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("is_normalized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_color_ramp(gradient Gradient) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gradient.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture2D) get_color_ramp() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("get_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NoiseTexture2D) set_noise(noise Noise) {
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("set_noise")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135492439)
    mut args := unsafe { [1]voidptr{} }
    args[0] = noise.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NoiseTexture2D) get_noise() Noise {
    mut object_out := Noise{}
    classname := StringName.new("NoiseTexture2D")
    fnname := StringName.new("get_noise")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 185851837)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

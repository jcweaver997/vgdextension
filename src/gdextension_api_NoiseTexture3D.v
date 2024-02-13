module vgdextension

@[noinit]
pub struct NoiseTexture3D {
    Texture3D
}

pub fn (mut r NoiseTexture3D) set_width(width i32) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NoiseTexture3D) set_height(height i32) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NoiseTexture3D) set_depth(depth i32) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NoiseTexture3D) set_invert(invert bool) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_invert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NoiseTexture3D) get_invert() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_invert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture3D) set_seamless(seamless bool) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_seamless")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seamless)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NoiseTexture3D) get_seamless() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_seamless")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture3D) set_seamless_blend_skirt(seamless_blend_skirt f64) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_seamless_blend_skirt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seamless_blend_skirt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NoiseTexture3D) get_seamless_blend_skirt() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_seamless_blend_skirt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture3D) set_normalize(normalize bool) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_normalize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normalize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NoiseTexture3D) is_normalized() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_normalized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture3D) set_color_ramp(gradient Gradient) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gradient.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NoiseTexture3D) get_color_ramp() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NoiseTexture3D) set_noise(noise Noise) {
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_noise")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135492439)
    mut args := unsafe { [1]voidptr{} }
    args[0] = noise.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NoiseTexture3D) get_noise() Noise {
    mut object_out := Noise{}
    classname := StringName.new("NoiseTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_noise")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 185851837)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

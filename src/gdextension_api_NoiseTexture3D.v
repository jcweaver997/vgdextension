module vgdextension

@[noinit]
pub struct NoiseTexture3D {
    Texture3D
}

pub fn (r &NoiseTexture3D) set_width(width i32) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) set_height(height i32) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) set_depth(depth i32) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) set_invert(invert bool) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_invert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) get_invert() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("get_invert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NoiseTexture3D) set_seamless(seamless bool) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_seamless")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seamless)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) get_seamless() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("get_seamless")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NoiseTexture3D) set_seamless_blend_skirt(seamless_blend_skirt f64) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_seamless_blend_skirt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seamless_blend_skirt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) get_seamless_blend_skirt() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("get_seamless_blend_skirt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NoiseTexture3D) set_normalize(normalize bool) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_normalize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normalize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) is_normalized() bool {
    mut object_out := false
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("is_normalized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NoiseTexture3D) set_color_ramp(gradient Gradient) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&gradient.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) get_color_ramp() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("get_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NoiseTexture3D) set_noise(noise Noise) {
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("set_noise")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135492439)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&noise.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NoiseTexture3D) get_noise() Noise {
    mut object_out := Noise{}
    classname := StringName.new("NoiseTexture3D")
    fnname := StringName.new("get_noise")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 185851837)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

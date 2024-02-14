module vgdextension

@[noinit]
pub struct GLTFSpecGloss {
    Resource
}

pub fn (mut r GLTFSpecGloss) get_diffuse_img() Image {
    mut object_out := Image{}
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("get_diffuse_img")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_diffuse_img(diffuse_img Image) {
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("set_diffuse_img")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = diffuse_img.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSpecGloss) get_diffuse_factor() Color {
    mut object_out := Color{}
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("get_diffuse_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_diffuse_factor(diffuse_factor Color) {
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("set_diffuse_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&diffuse_factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSpecGloss) get_gloss_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("get_gloss_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_gloss_factor(gloss_factor f64) {
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("set_gloss_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gloss_factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSpecGloss) get_specular_factor() Color {
    mut object_out := Color{}
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("get_specular_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_specular_factor(specular_factor Color) {
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("set_specular_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&specular_factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSpecGloss) get_spec_gloss_img() Image {
    mut object_out := Image{}
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("get_spec_gloss_img")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_spec_gloss_img(spec_gloss_img Image) {
    classname := StringName.new("GLTFSpecGloss")
    fnname := StringName.new("set_spec_gloss_img")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = spec_gloss_img.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

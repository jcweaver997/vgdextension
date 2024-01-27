pub type GLTFSpecGloss = voidptr

pub fn (mut r GLTFSpecGloss) get_diffuse_img() Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("get_diffuse_img")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_diffuse_img(diffuse_img Image) {
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("set_diffuse_img")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFSpecGloss) get_diffuse_factor() Color {
    mut object_out := Color{}
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("get_diffuse_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_diffuse_factor(diffuse_factor Color) {
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("set_diffuse_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFSpecGloss) get_gloss_factor() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("get_gloss_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_gloss_factor(gloss_factor f32) {
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("set_gloss_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFSpecGloss) get_specular_factor() Color {
    mut object_out := Color{}
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("get_specular_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_specular_factor(specular_factor Color) {
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("set_specular_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFSpecGloss) get_spec_gloss_img() Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("get_spec_gloss_img")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFSpecGloss) set_spec_gloss_img(spec_gloss_img Image) {
    classname := StringName.new("GLTFSpecGloss")
    defer { classname.deinit() }
    fnname := StringName.new("set_spec_gloss_img")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

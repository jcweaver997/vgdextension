module vgdextension

@[noinit]
pub struct FontVariation {
    Font
}

pub fn (mut r FontVariation) set_base_font(font Font) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_base_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FontVariation) get_base_font() Font {
    mut object_out := Font{}
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontVariation) set_variation_opentype(coords Dictionary) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_variation_opentype")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FontVariation) get_variation_opentype() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("get_variation_opentype")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontVariation) set_variation_embolden(strength f64) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_variation_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FontVariation) get_variation_embolden() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("get_variation_embolden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontVariation) set_variation_face_index(face_index i32) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_variation_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&face_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FontVariation) get_variation_face_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("get_variation_face_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontVariation) set_variation_transform(transform Transform2D) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_variation_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FontVariation) get_variation_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("get_variation_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FontVariation) set_opentype_features(features Dictionary) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_opentype_features")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&features)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r FontVariation) set_spacing(spacing TextServerSpacingType, value i32) {
    classname := StringName.new("FontVariation")
    defer { classname.deinit() }
    fnname := StringName.new("set_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3122339690)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&spacing)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

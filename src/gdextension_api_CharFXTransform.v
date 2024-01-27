module vgdextension

pub type CharFXTransform = voidptr

pub fn (mut r CharFXTransform) get_range() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741790807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_range(range Vector2i) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CharFXTransform) get_elapsed_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_elapsed_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_elapsed_time(time f32) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_elapsed_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CharFXTransform) is_visible() bool {
    mut object_out := false
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("is_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_visibility(visibility bool) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CharFXTransform) is_outline() bool {
    mut object_out := false
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("is_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_outline(outline bool) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CharFXTransform) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_offset(offset Vector2) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CharFXTransform) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_color(color Color) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CharFXTransform) get_environment() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_environment(environment Dictionary) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CharFXTransform) get_glyph_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_glyph_index(glyph_index i32) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CharFXTransform) get_relative_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_relative_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_relative_index(relative_index i32) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_relative_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CharFXTransform) get_glyph_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_glyph_count(glyph_count i32) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CharFXTransform) get_glyph_flags() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_glyph_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_glyph_flags(glyph_flags i32) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_glyph_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CharFXTransform) get_font() RID {
    mut object_out := RID{}
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("get_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CharFXTransform) set_font(font RID) {
    classname := StringName.new("CharFXTransform")
    defer { classname.deinit() }
    fnname := StringName.new("set_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

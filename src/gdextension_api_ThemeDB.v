module vgdextension

pub type ThemeDB = voidptr

pub fn (mut r ThemeDB) get_default_theme() Theme {
    mut object_out := Theme(unsafe{nil})
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 754276358)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) get_project_theme() Theme {
    mut object_out := Theme(unsafe{nil})
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_project_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 754276358)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_base_scale(base_scale f32) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_base_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_font(font Font) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_font() Font {
    mut object_out := Font(unsafe{nil})
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3656929885)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_font_size(font_size i32) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_icon(icon Texture2D) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_icon() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 255860311)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_stylebox(stylebox StyleBox) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2797200388)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_stylebox() StyleBox {
    mut object_out := StyleBox(unsafe{nil})
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 496040854)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

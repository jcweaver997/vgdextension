module vgdextension

pub struct ThemeDB {
    Object
}

pub fn ThemeDB.get_singleton() ThemeDB {
    sn := StringName.new("ThemeDB")
    defer {sn.deinit()}
    o := ThemeDB{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r ThemeDB) get_default_theme() Theme {
    mut object_out := Theme{}
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 754276358)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) get_project_theme() Theme {
    mut object_out := Theme{}
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_project_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 754276358)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_base_scale(base_scale f64) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_base_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_font(font Font) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_font() Font {
    mut object_out := Font{}
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3656929885)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_font_size(font_size i32) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_icon(icon Texture2D) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_icon() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 255860311)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ThemeDB) set_fallback_stylebox(stylebox StyleBox) {
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2797200388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = stylebox.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ThemeDB) get_fallback_stylebox() StyleBox {
    mut object_out := StyleBox{}
    classname := StringName.new("ThemeDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 496040854)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

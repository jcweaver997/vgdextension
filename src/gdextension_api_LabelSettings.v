module vgdextension

pub type LabelSettings = voidptr

pub fn (mut r LabelSettings) set_line_spacing(spacing f32) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_line_spacing() f32 {
    mut object_out := f32(0)
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_font(font Font) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_font() Font {
    mut object_out := Font(unsafe{nil})
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_font_size(size i32) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_font_color(color Color) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_font_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_outline_size(size i32) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_outline_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_outline_color(color Color) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_outline_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_shadow_size(size i32) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_shadow_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_shadow_color(color Color) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_shadow_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LabelSettings) set_shadow_offset(offset Vector2) {
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LabelSettings) get_shadow_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("LabelSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct LabelSettings {
    Resource
}

pub fn (r &LabelSettings) set_line_spacing(spacing f64) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_line_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_line_spacing() f64 {
    mut object_out := f64(0)
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_line_spacing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_font(font Font) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&font.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_font() Font {
    mut object_out := Font{}
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_font_size(size i32) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_font_color(color Color) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_font_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_font_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_font_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_outline_size(size i32) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_outline_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_outline_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_outline_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_outline_color(color Color) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_outline_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_outline_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_outline_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_shadow_size(size i32) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_shadow_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_shadow_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_shadow_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_shadow_color(color Color) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_shadow_color() Color {
    mut object_out := Color{}
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &LabelSettings) set_shadow_offset(offset Vector2) {
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("set_shadow_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LabelSettings) get_shadow_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("LabelSettings")
    fnname := StringName.new("get_shadow_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

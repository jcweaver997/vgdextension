module vgdextension

pub enum ThemeDataType {
    data_type_color = 0
    data_type_constant = 1
    data_type_font = 2
    data_type_font_size = 3
    data_type_icon = 4
    data_type_stylebox = 5
    data_type_max = 6
}

@[noinit]
pub struct Theme {
    Resource
}

pub fn (mut r Theme) set_icon(name StringName, theme_type StringName, texture Texture2D) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2188371082)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    args[2] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_icon(name StringName, theme_type StringName) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 934555193)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_icon(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_icon(old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_icon(name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_icon_list(theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_icon_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_stylebox(name StringName, theme_type StringName, texture StyleBox) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2075907568)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    args[2] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_stylebox(name StringName, theme_type StringName) StyleBox {
    mut object_out := StyleBox{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3405608165)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_stylebox(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_stylebox(old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_stylebox(name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_stylebox_list(theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_stylebox_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_stylebox_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_stylebox_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_font(name StringName, theme_type StringName, font Font) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 177292320)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    args[2] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_font(name StringName, theme_type StringName) Font {
    mut object_out := Font{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3445063586)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_font(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_font(old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_font(name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_font_list(theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_font_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_font_size(name StringName, theme_type StringName, font_size i32) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 281601298)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    args[2] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_font_size(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_font_size(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_font_size(old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_font_size(name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_font_size_list(theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_size_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_font_size_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_size_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_color(name StringName, theme_type StringName, color Color) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4111215154)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_color(name StringName, theme_type StringName) Color {
    mut object_out := Color{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2015923404)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_color(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_color(old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_color(name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_color_list(theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_color_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_constant(name StringName, theme_type StringName, constant i32) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 281601298)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    args[2] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_constant(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_constant(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_constant(old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_constant(name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_constant_list(theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_constant_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_default_base_scale(base_scale f64) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_default_base_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_default_base_scale() bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_default_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_default_font(font Font) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_default_font() Font {
    mut object_out := Font{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_default_font() bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_default_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_default_font_size(font_size i32) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_default_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_default_font_size() bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_default_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_theme_item(data_type ThemeDataType, name StringName, theme_type StringName, value Variant) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_theme_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2492983623)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    args[3] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_theme_item(data_type ThemeDataType, name StringName, theme_type StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2191024021)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) has_theme_item(data_type ThemeDataType, name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1739311056)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) rename_theme_item(data_type ThemeDataType, old_name StringName, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("rename_theme_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900867553)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    args[1] = unsafe{voidptr(&old_name)}
    args[2] = unsafe{voidptr(&name)}
    args[3] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear_theme_item(data_type ThemeDataType, name StringName, theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_theme_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2965505587)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_theme_item_list(data_type ThemeDataType, theme_type String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_item_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3726716710)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_theme_item_type_list(data_type ThemeDataType) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_item_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1316004935)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) set_type_variation(theme_type StringName, base_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("set_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    args[1] = unsafe{voidptr(&base_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) is_type_variation(theme_type StringName, base_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("is_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    args[1] = unsafe{voidptr(&base_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) clear_type_variation(theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_type_variation_base(theme_type StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_type_variation_base")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Theme) get_type_variation_list(base_type StringName) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_type_variation_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1761182771)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) add_type(theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("add_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) remove_type(theme_type StringName) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("remove_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Theme) get_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("get_type_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Theme) merge_with(other Theme) {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("merge_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2326690814)
    mut args := unsafe { [1]voidptr{} }
    args[0] = other.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Theme) clear() {
    classname := StringName.new("Theme")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

module vgdextension

pub enum ThemeDataType as i64 {
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

pub fn (r &Theme) set_icon(name string, theme_type string, texture Texture2D) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2188371082)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_icon(name string, theme_type string) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 934555193)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_icon(name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_icon(old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_icon(name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_icon_list(theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_icon_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_icon_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_icon_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_stylebox(name string, theme_type string, texture StyleBox) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2075907568)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_stylebox(name string, theme_type string) StyleBox {
    mut object_out := StyleBox{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3405608165)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_stylebox(name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_stylebox(old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_stylebox(name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_stylebox_list(theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_stylebox_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_stylebox_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_stylebox_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_font(name string, theme_type string, font Font) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 177292320)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = voidptr(&font.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_font(name string, theme_type string) Font {
    mut object_out := Font{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3445063586)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_font(name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_font(old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_font(name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_font_list(theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_font_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_font_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_font_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_font_size(name string, theme_type string, font_size i32) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 281601298)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_font_size(name string, theme_type string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Theme")
    fnname := StringName.new("get_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_font_size(name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_font_size(old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_font_size(name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_font_size_list(theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_font_size_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_font_size_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_font_size_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_color(name string, theme_type string, color Color) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4111215154)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_color(name string, theme_type string) Color {
    mut object_out := Color{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2015923404)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_color(name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_color(old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_color(name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_color_list(theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_color_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_color_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_color_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_constant(name string, theme_type string, constant i32) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 281601298)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_constant(name string, theme_type string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Theme")
    fnname := StringName.new("get_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_constant(name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_constant(old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 642128662)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_constant(name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_constant_list(theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_constant_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_constant_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_constant_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_default_base_scale(base_scale f64) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_default_base_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_default_base_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Theme")
    fnname := StringName.new("get_default_base_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_default_base_scale() bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_default_base_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_default_font(font Font) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_default_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&font.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_default_font() Font {
    mut object_out := Font{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_default_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_default_font() bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_default_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_default_font_size(font_size i32) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_default_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_default_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Theme")
    fnname := StringName.new("get_default_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_default_font_size() bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_default_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_theme_item(data_type ThemeDataType, name string, theme_type string, value Variant) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_theme_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2492983623)
    mut args := unsafe { [4]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_theme_item(data_type ThemeDataType, name string, theme_type string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_theme_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2191024021)
    mut args := unsafe { [3]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) has_theme_item(data_type ThemeDataType, name string, theme_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("has_theme_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1739311056)
    mut args := unsafe { [3]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) rename_theme_item(data_type ThemeDataType, old_name string, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("rename_theme_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900867553)
    mut args := unsafe { [4]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    arg_sn1 := StringName.new(old_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := StringName.new(theme_type)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn2.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear_theme_item(data_type ThemeDataType, name string, theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_theme_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2965505587)
    mut args := unsafe { [3]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(theme_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_theme_item_list(data_type ThemeDataType, theme_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_theme_item_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3726716710)
    mut args := unsafe { [2]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    arg_sn1 := String.new(theme_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) get_theme_item_type_list(data_type ThemeDataType) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_theme_item_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1316004935)
    mut args := unsafe { [1]voidptr{} }
    i64_data_type := i64(data_type)
    args[0] = unsafe{voidptr(&i64_data_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) set_type_variation(theme_type string, base_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("set_type_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(base_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) is_type_variation(theme_type string, base_type string) bool {
    mut object_out := false
    classname := StringName.new("Theme")
    fnname := StringName.new("is_type_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(base_type)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) clear_type_variation(theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear_type_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_type_variation_base(theme_type string) string {
    mut object_out := StringName{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_type_variation_base")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Theme) get_type_variation_list(base_type string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_type_variation_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1761182771)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(base_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) add_type(theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("add_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) remove_type(theme_type string) {
    classname := StringName.new("Theme")
    fnname := StringName.new("remove_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(theme_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) get_type_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Theme")
    fnname := StringName.new("get_type_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Theme) merge_with(other Theme) {
    classname := StringName.new("Theme")
    fnname := StringName.new("merge_with")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2326690814)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&other.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Theme) clear() {
    classname := StringName.new("Theme")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

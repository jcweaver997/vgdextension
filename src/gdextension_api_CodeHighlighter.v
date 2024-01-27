module vgdextension

pub type CodeHighlighter = voidptr

pub fn (mut r CodeHighlighter) add_keyword_color(keyword String, color Color) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("add_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1636512886)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeHighlighter) remove_keyword_color(keyword String) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("remove_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) has_keyword_color(keyword String) bool {
    mut object_out := false
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("has_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keyword)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeHighlighter) get_keyword_color(keyword String) Color {
    mut object_out := Color{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3855908743)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keyword)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_keyword_colors(keywords Dictionary) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_keyword_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeHighlighter) clear_keyword_colors() {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("clear_keyword_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_keyword_colors() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_keyword_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) add_member_keyword_color(member_keyword String, color Color) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("add_member_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1636512886)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeHighlighter) remove_member_keyword_color(member_keyword String) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("remove_member_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) has_member_keyword_color(member_keyword String) bool {
    mut object_out := false
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("has_member_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&member_keyword)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeHighlighter) get_member_keyword_color(member_keyword String) Color {
    mut object_out := Color{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_member_keyword_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3855908743)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&member_keyword)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_member_keyword_colors(member_keyword Dictionary) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_member_keyword_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeHighlighter) clear_member_keyword_colors() {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("clear_member_keyword_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_member_keyword_colors() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_member_keyword_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) add_color_region(start_key String, end_key String, color Color, line_only bool) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("add_color_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2924977451)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeHighlighter) remove_color_region(start_key String) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("remove_color_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) has_color_region(start_key String) bool {
    mut object_out := false
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("has_color_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&start_key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_color_regions(color_regions Dictionary) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_regions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeHighlighter) clear_color_regions() {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("clear_color_regions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_color_regions() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_regions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_function_color(color Color) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_function_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_function_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_function_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_number_color(color Color) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_number_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_number_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_number_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_symbol_color(color Color) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_symbol_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_symbol_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_symbol_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeHighlighter) set_member_variable_color(color Color) {
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("set_member_variable_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeHighlighter) get_member_variable_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CodeHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_member_variable_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

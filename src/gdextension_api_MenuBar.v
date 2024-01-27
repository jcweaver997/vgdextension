module vgdextension

pub type MenuBar = voidptr

pub fn (mut r MenuBar) set_switch_on_hover(enable bool) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_switch_on_hover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MenuBar) is_switch_on_hover() bool {
    mut object_out := false
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_switch_on_hover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_disable_shortcuts(disabled bool) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_shortcuts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MenuBar) set_prefer_global_menu(enabled bool) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_prefer_global_menu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) is_prefer_global_menu() bool {
    mut object_out := false
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_prefer_global_menu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MenuBar) is_native_menu() bool {
    mut object_out := false
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_native_menu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MenuBar) get_menu_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_menu_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) get_text_direction() ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_language(language String) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) get_language() String {
    mut object_out := String{}
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_flat(enabled bool) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_flat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) is_flat() bool {
    mut object_out := false
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_flat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_start_index(enabled i32) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_start_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) get_start_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_start_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_menu_title(menu i32, title String) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_menu_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) get_menu_title(menu i32) String {
    mut object_out := String{}
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_menu_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_menu_tooltip(menu i32, tooltip String) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_menu_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) get_menu_tooltip(menu i32) String {
    mut object_out := String{}
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_menu_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_menu_disabled(menu i32, disabled bool) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_menu_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) is_menu_disabled(menu i32) bool {
    mut object_out := false
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_menu_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MenuBar) set_menu_hidden(menu i32, hidden bool) {
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_menu_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MenuBar) is_menu_hidden(menu i32) bool {
    mut object_out := false
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("is_menu_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MenuBar) get_menu_popup(menu i32) PopupMenu {
    mut object_out := PopupMenu(unsafe{nil})
    classname := StringName.new("MenuBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_menu_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2100501353)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

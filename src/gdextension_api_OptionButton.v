pub type OptionButton = voidptr

pub fn (mut r OptionButton) add_item(label String, id i32) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("add_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3043792800)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) add_icon_item(texture Texture2D, label String, id i32) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3944051090)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_text(idx i32, text String) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_icon(idx i32, texture Texture2D) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_disabled(idx i32, disabled bool) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_id(idx i32, id i32) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_metadata(idx i32, metadata Variant) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_tooltip(idx i32, tooltip String) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OptionButton) get_item_text(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_item_icon(idx i32) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_item_id(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_item_index(id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_item_metadata(idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_item_tooltip(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) is_item_disabled(idx i32) bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) is_item_separator(idx i32) bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_separator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OptionButton) add_separator(text String) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("add_separator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005725572)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) clear() {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) gdselect(idx i32) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("select")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OptionButton) get_selected() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_selected_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_selected_metadata() Variant {
    mut object_out := Variant{}
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OptionButton) remove_item(idx i32) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("remove_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OptionButton) get_popup() PopupMenu {
    mut object_out := PopupMenu(unsafe{nil})
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OptionButton) show_popup() {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("show_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OptionButton) set_item_count(count i32) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OptionButton) get_item_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) has_selectable_items() bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("has_selectable_items")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OptionButton) get_selectable_item(from_last bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_selectable_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from_last)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OptionButton) set_fit_to_longest_item(fit bool) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_fit_to_longest_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OptionButton) is_fit_to_longest_item() bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_fit_to_longest_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OptionButton) set_allow_reselect(allow bool) {
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_reselect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OptionButton) get_allow_reselect() bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_allow_reselect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

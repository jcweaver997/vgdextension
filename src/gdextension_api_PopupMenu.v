pub type PopupMenu = voidptr

pub fn (mut r PopupMenu) add_item(label String, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3224536192)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_icon_item(texture Texture2D, label String, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1200674553)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_check_item(label String, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3224536192)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_icon_check_item(texture Texture2D, label String, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1200674553)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_radio_check_item(label String, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_radio_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3224536192)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_icon_radio_check_item(texture Texture2D, label String, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_radio_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1200674553)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_multistate_item(label String, max_states i32, default_state i32, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_multistate_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585218420)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_shortcut(shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168272394)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_icon_shortcut(texture Texture2D, shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 68101841)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_check_shortcut(shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_check_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168272394)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_icon_check_shortcut(texture Texture2D, shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_check_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 68101841)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_radio_check_shortcut(shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_radio_check_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168272394)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_icon_radio_check_shortcut(texture Texture2D, shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_icon_radio_check_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 68101841)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_submenu_item(label String, submenu String, id i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_submenu_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3728518296)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_text(index i32, text String) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_text_direction(index i32, direction ControlTextDirection) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_language(index i32, language String) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_icon(index i32, icon Texture2D) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_icon_max_width(index i32, width i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_icon_max_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_icon_modulate(index i32, modulate Color) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_icon_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_checked(index i32, checked bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_id(index i32, id i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_accelerator(index i32, accel Key) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_accelerator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2992817551)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_metadata(index i32, metadata Variant) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_disabled(index i32, disabled bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_submenu(index i32, submenu String) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_submenu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_as_separator(index i32, enable bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_as_separator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_as_checkable(index i32, enable bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_as_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_as_radio_checkable(index i32, enable bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_as_radio_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_tooltip(index i32, tooltip String) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_shortcut(index i32, shortcut Shortcut, global bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 825127832)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_indent(index i32, indent i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_indent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_multistate(index i32, state i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_multistate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_item_shortcut_disabled(index i32, disabled bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_shortcut_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) toggle_item_checked(index i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("toggle_item_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) toggle_item_multistate(index i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("toggle_item_multistate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) get_item_text(index i32) String {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_text_direction(index i32) ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_language(index i32) String {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_icon(index i32) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_icon_max_width(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_icon_max_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_icon_modulate(index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_icon_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) is_item_checked(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_id(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_index(id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_accelerator(index i32) Key {
    mut object_out := Key.key_none
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_accelerator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 253789942)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_metadata(index i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) is_item_disabled(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_submenu(index i32) String {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_submenu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) is_item_separator(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_separator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) is_item_checkable(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) is_item_radio_checkable(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_radio_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) is_item_shortcut_disabled(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_item_shortcut_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_tooltip(index i32) String {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_shortcut(index i32) Shortcut {
    mut object_out := Shortcut(unsafe{nil})
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1449483325)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PopupMenu) get_item_indent(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_indent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) set_focused_item(index i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_focused_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) get_focused_item() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_focused_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) set_item_count(count i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) get_item_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) scroll_to_item(index i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("scroll_to_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) remove_item(index i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("remove_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) add_separator(label String, id i32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("add_separator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2266703459)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) clear() {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PopupMenu) set_hide_on_item_selection(enable bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_hide_on_item_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) is_hide_on_item_selection() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_hide_on_item_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) set_hide_on_checkable_item_selection(enable bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_hide_on_checkable_item_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) is_hide_on_checkable_item_selection() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_hide_on_checkable_item_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) set_hide_on_state_item_selection(enable bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_hide_on_state_item_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) is_hide_on_state_item_selection() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("is_hide_on_state_item_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) set_submenu_popup_delay(seconds f32) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_submenu_popup_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) get_submenu_popup_delay() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_submenu_popup_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PopupMenu) set_allow_search(allow bool) {
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_search")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PopupMenu) get_allow_search() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    defer { classname.deinit() }
    fnname := StringName.new("get_allow_search")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

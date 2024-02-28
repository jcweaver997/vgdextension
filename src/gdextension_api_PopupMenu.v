module vgdextension

@[noinit]
pub struct PopupMenu {
    Popup
}

pub fn (r &PopupMenu) activate_item_by_event(event InputEvent, for_global_only bool) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("activate_item_by_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3716412023)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&event.ptr)
    args[1] = unsafe{voidptr(&for_global_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) add_item(label string, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674230041)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[2] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_icon_item(texture Texture2D, label string, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_icon_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1086190128)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[3] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_check_item(label string, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674230041)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[2] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_icon_check_item(texture Texture2D, label string, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_icon_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1086190128)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[3] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_radio_check_item(label string, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_radio_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674230041)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[2] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_icon_radio_check_item(texture Texture2D, label string, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_icon_radio_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1086190128)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[3] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_multistate_item(label string, max_states i32, default_state i32, id i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_multistate_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 150780458)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&max_states)}
    args[2] = unsafe{voidptr(&default_state)}
    args[3] = unsafe{voidptr(&id)}
    i64_accel := i64(accel)
    args[4] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_shortcut(shortcut Shortcut, id i32, global bool, allow_echo bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3451850107)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&shortcut.ptr)
    args[1] = unsafe{voidptr(&id)}
    args[2] = unsafe{voidptr(&global)}
    args[3] = unsafe{voidptr(&allow_echo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_icon_shortcut(texture Texture2D, shortcut Shortcut, id i32, global bool, allow_echo bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_icon_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2997871092)
    mut args := unsafe { [5]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    args[1] = voidptr(&shortcut.ptr)
    args[2] = unsafe{voidptr(&id)}
    args[3] = unsafe{voidptr(&global)}
    args[4] = unsafe{voidptr(&allow_echo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_check_shortcut(shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_check_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1642193386)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&shortcut.ptr)
    args[1] = unsafe{voidptr(&id)}
    args[2] = unsafe{voidptr(&global)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_icon_check_shortcut(texture Texture2D, shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_icon_check_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3856247530)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    args[1] = voidptr(&shortcut.ptr)
    args[2] = unsafe{voidptr(&id)}
    args[3] = unsafe{voidptr(&global)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_radio_check_shortcut(shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_radio_check_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1642193386)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&shortcut.ptr)
    args[1] = unsafe{voidptr(&id)}
    args[2] = unsafe{voidptr(&global)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_icon_radio_check_shortcut(texture Texture2D, shortcut Shortcut, id i32, global bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_icon_radio_check_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3856247530)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    args[1] = voidptr(&shortcut.ptr)
    args[2] = unsafe{voidptr(&id)}
    args[3] = unsafe{voidptr(&global)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_submenu_item(label string, submenu string, id i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_submenu_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2979222410)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(submenu)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_text(index i32, text string) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_text_direction(index i32, direction ControlTextDirection) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    i64_direction := i64(direction)
    args[1] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_language(index i32, language string) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    arg_sn1 := String.new(language)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_icon(index i32, icon Texture2D) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = voidptr(&icon.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_icon_max_width(index i32, width i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_icon_max_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_icon_modulate(index i32, modulate Color) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_icon_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_checked(index i32, checked bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&checked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_id(index i32, id i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_accelerator(index i32, accel Key) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_accelerator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2992817551)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    i64_accel := i64(accel)
    args[1] = unsafe{voidptr(&i64_accel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_metadata(index i32, metadata Variant) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_disabled(index i32, disabled bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_submenu(index i32, submenu string) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_submenu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    arg_sn1 := String.new(submenu)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_as_separator(index i32, enable bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_as_separator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_as_checkable(index i32, enable bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_as_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_as_radio_checkable(index i32, enable bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_as_radio_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_tooltip(index i32, tooltip string) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_tooltip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    arg_sn1 := String.new(tooltip)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_shortcut(index i32, shortcut Shortcut, global bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 825127832)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = voidptr(&shortcut.ptr)
    args[2] = unsafe{voidptr(&global)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_indent(index i32, indent i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_indent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&indent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_multistate(index i32, state i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_multistate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_item_shortcut_disabled(index i32, disabled bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_shortcut_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) toggle_item_checked(index i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("toggle_item_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) toggle_item_multistate(index i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("toggle_item_multistate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) get_item_text(index i32) string {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &PopupMenu) get_item_text_direction(index i32) ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (r &PopupMenu) get_item_language(index i32) string {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &PopupMenu) get_item_icon(index i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_icon_max_width(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_icon_max_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_icon_modulate(index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_icon_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) is_item_checked(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_item_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_id(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_index(id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_accelerator(index i32) Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_accelerator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 253789942)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (r &PopupMenu) get_item_metadata(index i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) is_item_disabled(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_item_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_submenu(index i32) string {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_submenu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &PopupMenu) is_item_separator(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_item_separator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) is_item_checkable(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_item_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) is_item_radio_checkable(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_item_radio_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) is_item_shortcut_disabled(index i32) bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_item_shortcut_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_tooltip(index i32) string {
    mut object_out := String{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_tooltip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &PopupMenu) get_item_shortcut(index i32) Shortcut {
    mut object_out := Shortcut{}
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1449483325)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) get_item_indent(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_indent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) set_focused_item(index i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_focused_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) get_focused_item() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_focused_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) set_item_count(count i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) get_item_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) scroll_to_item(index i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("scroll_to_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) remove_item(index i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("remove_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) add_separator(label string, id i32) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("add_separator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2266703459)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) clear(free_submenus bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&free_submenus)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) set_hide_on_item_selection(enable bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_hide_on_item_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) is_hide_on_item_selection() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_hide_on_item_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) set_hide_on_checkable_item_selection(enable bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_hide_on_checkable_item_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) is_hide_on_checkable_item_selection() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_hide_on_checkable_item_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) set_hide_on_state_item_selection(enable bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_hide_on_state_item_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) is_hide_on_state_item_selection() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("is_hide_on_state_item_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) set_submenu_popup_delay(seconds f64) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_submenu_popup_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) get_submenu_popup_delay() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_submenu_popup_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PopupMenu) set_allow_search(allow bool) {
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("set_allow_search")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PopupMenu) get_allow_search() bool {
    mut object_out := false
    classname := StringName.new("PopupMenu")
    fnname := StringName.new("get_allow_search")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

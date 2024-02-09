module vgdextension

pub enum BaseButtonDrawMode {
    draw_normal = 0
    draw_pressed = 1
    draw_hover = 2
    draw_disabled = 3
    draw_hover_pressed = 4
}

pub enum BaseButtonActionMode {
    action_mode_button_press = 0
    action_mode_button_release = 1
}

pub struct BaseButton {
    Control
}

pub interface IBaseButtonPressed {
    mut:
    virt_pressed()
}

pub fn (mut r BaseButton) upressed() {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IBaseButtonToggled {
    mut:
    virt_toggled(button_pressed bool)
}

pub fn (mut r BaseButton) utoggled(button_pressed bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("_toggled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&button_pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r BaseButton) set_pressed(pressed bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_pressed() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_pressed_no_signal(pressed bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed_no_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_hovered() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_hovered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_toggle_mode(enabled bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_toggle_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_toggle_mode() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_toggle_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_shortcut_in_tooltip(enabled bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_shortcut_in_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_shortcut_in_tooltip_enabled() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_shortcut_in_tooltip_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_disabled(disabled bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_action_mode(mode BaseButtonActionMode) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_action_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1985162088)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) get_action_mode() BaseButtonActionMode {
    mut object_out := BaseButtonActionMode.action_mode_button_press
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2589712189)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_button_mask(mask MouseButtonMask) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950145251)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) get_button_mask() MouseButtonMask {
    mut object_out := MouseButtonMask.mouse_button_mask_left
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &BaseButton) get_draw_mode() BaseButtonDrawMode {
    mut object_out := BaseButtonDrawMode.draw_normal
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2492721305)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_keep_pressed_outside(enabled bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_keep_pressed_outside")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_keep_pressed_outside() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_keep_pressed_outside")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_shortcut_feedback(enabled bool) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_shortcut_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) is_shortcut_feedback() bool {
    mut object_out := false
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_shortcut_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_shortcut(shortcut Shortcut) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 857163497)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shortcut.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) get_shortcut() Shortcut {
    mut object_out := Shortcut{}
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3415666916)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BaseButton) set_button_group(button_group ButtonGroup) {
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794463739)
    mut args := unsafe { [1]voidptr{} }
    args[0] = button_group.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BaseButton) get_button_group() ButtonGroup {
    mut object_out := ButtonGroup{}
    classname := StringName.new("BaseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 281644053)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

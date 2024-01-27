pub enum ScrollContainerScrollMode {
    scroll_mode_disabled = 0
    scroll_mode_auto = 1
    scroll_mode_show_always = 2
    scroll_mode_show_never = 3
}

pub type ScrollContainer = voidptr

pub fn (mut r ScrollContainer) set_h_scroll(value i32) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_scroll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_h_scroll() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_scroll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_v_scroll(value i32) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_scroll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_v_scroll() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_scroll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_horizontal_custom_step(value f32) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_horizontal_custom_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_vertical_custom_step(value f32) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical_custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_vertical_custom_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertical_custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_horizontal_scroll_mode(enable ScrollContainerScrollMode) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_scroll_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2750506364)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_horizontal_scroll_mode() ScrollContainerScrollMode {
    mut object_out := ScrollContainerScrollMode.scroll_mode_disabled
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_scroll_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3987985145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_vertical_scroll_mode(enable ScrollContainerScrollMode) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical_scroll_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2750506364)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_vertical_scroll_mode() ScrollContainerScrollMode {
    mut object_out := ScrollContainerScrollMode.scroll_mode_disabled
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertical_scroll_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3987985145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_deadzone(deadzone i32) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_deadzone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) get_deadzone() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_deadzone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) set_follow_focus(enabled bool) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_follow_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollContainer) is_following_focus() bool {
    mut object_out := false
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_following_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) get_h_scroll_bar() HScrollBar {
    mut object_out := HScrollBar(unsafe{nil})
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_scroll_bar")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4004517983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) get_v_scroll_bar() VScrollBar {
    mut object_out := VScrollBar(unsafe{nil})
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_scroll_bar")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2630340773)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScrollContainer) ensure_control_visible(control Control) {
    classname := StringName.new("ScrollContainer")
    defer { classname.deinit() }
    fnname := StringName.new("ensure_control_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

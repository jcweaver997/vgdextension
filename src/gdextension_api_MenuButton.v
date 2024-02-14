module vgdextension

@[noinit]
pub struct MenuButton {
    Button
}

pub fn (r &MenuButton) get_popup() PopupMenu {
    mut object_out := PopupMenu{}
    classname := StringName.new("MenuButton")
    fnname := StringName.new("get_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MenuButton) show_popup() {
    classname := StringName.new("MenuButton")
    fnname := StringName.new("show_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MenuButton) set_switch_on_hover(enable bool) {
    classname := StringName.new("MenuButton")
    fnname := StringName.new("set_switch_on_hover")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MenuButton) is_switch_on_hover() bool {
    mut object_out := false
    classname := StringName.new("MenuButton")
    fnname := StringName.new("is_switch_on_hover")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MenuButton) set_disable_shortcuts(disabled bool) {
    classname := StringName.new("MenuButton")
    fnname := StringName.new("set_disable_shortcuts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MenuButton) set_item_count(count i32) {
    classname := StringName.new("MenuButton")
    fnname := StringName.new("set_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MenuButton) get_item_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MenuButton")
    fnname := StringName.new("get_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

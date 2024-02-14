module vgdextension

@[noinit]
pub struct AcceptDialog {
    Window
}

pub fn (mut r AcceptDialog) get_ok_button() Button {
    mut object_out := Button{}
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("get_ok_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1856205918)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) get_label() Label {
    mut object_out := Label{}
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("get_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 566733104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) set_hide_on_ok(enabled bool) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("set_hide_on_ok")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AcceptDialog) get_hide_on_ok() bool {
    mut object_out := false
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("get_hide_on_ok")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) set_close_on_escape(enabled bool) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("set_close_on_escape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AcceptDialog) get_close_on_escape() bool {
    mut object_out := false
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("get_close_on_escape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) add_button(text String, right bool, action String) Button {
    mut object_out := Button{}
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("add_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3328440682)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = unsafe{voidptr(&right)}
    args[2] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) add_cancel_button(name String) Button {
    mut object_out := Button{}
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("add_cancel_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 242045556)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) remove_button(button Control) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("remove_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = button.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AcceptDialog) register_text_enter(line_edit Control) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("register_text_enter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = line_edit.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AcceptDialog) set_text(text String) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("set_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AcceptDialog) get_text() String {
    mut object_out := String{}
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) set_autowrap(autowrap bool) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("set_autowrap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&autowrap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AcceptDialog) has_autowrap() bool {
    mut object_out := false
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("has_autowrap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AcceptDialog) set_ok_button_text(text String) {
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("set_ok_button_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AcceptDialog) get_ok_button_text() String {
    mut object_out := String{}
    classname := StringName.new("AcceptDialog")
    fnname := StringName.new("get_ok_button_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

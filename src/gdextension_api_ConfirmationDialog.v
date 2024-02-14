module vgdextension

@[noinit]
pub struct ConfirmationDialog {
    AcceptDialog
}

pub fn (mut r ConfirmationDialog) get_cancel_button() Button {
    mut object_out := Button{}
    classname := StringName.new("ConfirmationDialog")
    fnname := StringName.new("get_cancel_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1856205918)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ConfirmationDialog) set_cancel_button_text(text String) {
    classname := StringName.new("ConfirmationDialog")
    fnname := StringName.new("set_cancel_button_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConfirmationDialog) get_cancel_button_text() String {
    mut object_out := String{}
    classname := StringName.new("ConfirmationDialog")
    fnname := StringName.new("get_cancel_button_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

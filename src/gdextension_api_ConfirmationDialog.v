module vgdextension

pub type ConfirmationDialog = voidptr

pub fn (mut r ConfirmationDialog) get_cancel_button() Button {
    mut object_out := Button(unsafe{nil})
    classname := StringName.new("ConfirmationDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_cancel_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1856205918)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfirmationDialog) set_cancel_button_text(text String) {
    classname := StringName.new("ConfirmationDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_cancel_button_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ConfirmationDialog) get_cancel_button_text() String {
    mut object_out := String{}
    classname := StringName.new("ConfirmationDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_cancel_button_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

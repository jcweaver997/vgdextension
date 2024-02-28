module vgdextension

@[noinit]
pub struct ConfirmationDialog {
    AcceptDialog
}

pub fn (r &ConfirmationDialog) get_cancel_button() Button {
    mut object_out := Button{}
    classname := StringName.new("ConfirmationDialog")
    fnname := StringName.new("get_cancel_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1856205918)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ConfirmationDialog) set_cancel_button_text(text string) {
    classname := StringName.new("ConfirmationDialog")
    fnname := StringName.new("set_cancel_button_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConfirmationDialog) get_cancel_button_text() string {
    mut object_out := String{}
    classname := StringName.new("ConfirmationDialog")
    fnname := StringName.new("get_cancel_button_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}

module vgdextension

@[noinit]
pub struct EditorCommandPalette {
    ConfirmationDialog
}

pub fn (r &EditorCommandPalette) add_command(command_name string, key_name string, binded_callable Callable, shortcut_text string) {
    classname := StringName.new("EditorCommandPalette")
    fnname := StringName.new("add_command")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 864043298)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(command_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&binded_callable)}
    arg_sn3 := String.new(shortcut_text)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorCommandPalette) remove_command(key_name string) {
    classname := StringName.new("EditorCommandPalette")
    fnname := StringName.new("remove_command")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(key_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}

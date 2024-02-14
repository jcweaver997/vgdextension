module vgdextension

@[noinit]
pub struct EditorCommandPalette {
    ConfirmationDialog
}

pub fn (mut r EditorCommandPalette) add_command(command_name String, key_name String, binded_callable Callable, shortcut_text String) {
    classname := StringName.new("EditorCommandPalette")
    fnname := StringName.new("add_command")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 864043298)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&command_name)}
    args[1] = unsafe{voidptr(&key_name)}
    args[2] = unsafe{voidptr(&binded_callable)}
    args[3] = unsafe{voidptr(&shortcut_text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorCommandPalette) remove_command(key_name String) {
    classname := StringName.new("EditorCommandPalette")
    fnname := StringName.new("remove_command")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&key_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

pub type EditorCommandPalette = voidptr

pub fn (mut r EditorCommandPalette) add_command(command_name String, key_name String, binded_callable Callable, shortcut_text String) {
    classname := StringName.new("EditorCommandPalette")
    defer { classname.deinit() }
    fnname := StringName.new("add_command")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3664614892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorCommandPalette) remove_command(key_name String) {
    classname := StringName.new("EditorCommandPalette")
    defer { classname.deinit() }
    fnname := StringName.new("remove_command")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

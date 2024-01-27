pub type InputEventShortcut = voidptr

pub fn (mut r InputEventShortcut) set_shortcut(shortcut Shortcut) {
    classname := StringName.new("InputEventShortcut")
    defer { classname.deinit() }
    fnname := StringName.new("set_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 857163497)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputEventShortcut) get_shortcut() Shortcut {
    mut object_out := Shortcut(unsafe{nil})
    classname := StringName.new("InputEventShortcut")
    defer { classname.deinit() }
    fnname := StringName.new("get_shortcut")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3766804753)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

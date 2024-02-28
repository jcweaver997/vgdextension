module vgdextension

@[noinit]
pub struct InputEventShortcut {
    InputEvent
}

pub fn (r &InputEventShortcut) set_shortcut(shortcut Shortcut) {
    classname := StringName.new("InputEventShortcut")
    fnname := StringName.new("set_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 857163497)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&shortcut.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventShortcut) get_shortcut() Shortcut {
    mut object_out := Shortcut{}
    classname := StringName.new("InputEventShortcut")
    fnname := StringName.new("get_shortcut")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3766804753)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

pub type Shortcut = voidptr

pub fn (mut r Shortcut) set_events(events Array) {
    classname := StringName.new("Shortcut")
    defer { classname.deinit() }
    fnname := StringName.new("set_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Shortcut) get_events() Array {
    mut object_out := Array{}
    classname := StringName.new("Shortcut")
    defer { classname.deinit() }
    fnname := StringName.new("get_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Shortcut) has_valid_event() bool {
    mut object_out := false
    classname := StringName.new("Shortcut")
    defer { classname.deinit() }
    fnname := StringName.new("has_valid_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Shortcut) matches_event(event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("Shortcut")
    defer { classname.deinit() }
    fnname := StringName.new("matches_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3738334489)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&event)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Shortcut) get_as_text() String {
    mut object_out := String{}
    classname := StringName.new("Shortcut")
    defer { classname.deinit() }
    fnname := StringName.new("get_as_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

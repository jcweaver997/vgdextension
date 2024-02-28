module vgdextension

@[noinit]
pub struct Shortcut {
    Resource
}

pub fn (r &Shortcut) set_events(events Array) {
    classname := StringName.new("Shortcut")
    fnname := StringName.new("set_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&events)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shortcut) get_events() Array {
    mut object_out := Array{}
    classname := StringName.new("Shortcut")
    fnname := StringName.new("get_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Shortcut) has_valid_event() bool {
    mut object_out := false
    classname := StringName.new("Shortcut")
    fnname := StringName.new("has_valid_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Shortcut) matches_event(event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("Shortcut")
    fnname := StringName.new("matches_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3738334489)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Shortcut) get_as_text() string {
    mut object_out := String{}
    classname := StringName.new("Shortcut")
    fnname := StringName.new("get_as_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}

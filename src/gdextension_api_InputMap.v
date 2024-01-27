pub type InputMap = voidptr

pub fn (r &InputMap) has_action(action StringName) bool {
    mut object_out := false
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("has_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r InputMap) get_actions() Array {
    mut object_out := Array{}
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_actions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputMap) add_action(action StringName, deadzone f32) {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("add_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 573731101)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputMap) erase_action(action StringName) {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("erase_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputMap) action_set_deadzone(action StringName, deadzone f32) {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_set_deadzone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135858297)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputMap) action_get_deadzone(action StringName) f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_get_deadzone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391627649)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r InputMap) action_add_event(action StringName, event InputEvent) {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_add_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518302593)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputMap) action_has_event(action StringName, event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_has_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1185871985)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&event)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r InputMap) action_erase_event(action StringName, event InputEvent) {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_erase_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518302593)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputMap) action_erase_events(action StringName) {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_erase_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputMap) action_get_events(action StringName) Array {
    mut object_out := Array{}
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("action_get_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 689397652)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputMap) event_is_action(event InputEvent, action StringName, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("event_is_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193353650)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&event)}
    args[1] = unsafe{voidptr(&action)}
    args[2] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r InputMap) load_from_project_settings() {
    classname := StringName.new("InputMap")
    defer { classname.deinit() }
    fnname := StringName.new("load_from_project_settings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

module vgdextension

@[noinit]
pub struct InputMap {
    Object
}

pub fn InputMap.get_singleton() InputMap {
    sn := StringName.new("InputMap")
    o := InputMap{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &InputMap) has_action(action string) bool {
    mut object_out := false
    classname := StringName.new("InputMap")
    fnname := StringName.new("has_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputMap) get_actions() Array {
    mut object_out := Array{}
    classname := StringName.new("InputMap")
    fnname := StringName.new("get_actions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputMap) add_action(action string, deadzone f64) {
    classname := StringName.new("InputMap")
    fnname := StringName.new("add_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4100757082)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&deadzone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputMap) erase_action(action string) {
    classname := StringName.new("InputMap")
    fnname := StringName.new("erase_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputMap) action_set_deadzone(action string, deadzone f64) {
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_set_deadzone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135858297)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&deadzone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputMap) action_get_deadzone(action string) f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_get_deadzone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391627649)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputMap) action_add_event(action string, event InputEvent) {
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_add_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518302593)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputMap) action_has_event(action string, event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_has_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1185871985)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputMap) action_erase_event(action string, event InputEvent) {
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_erase_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518302593)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputMap) action_erase_events(action string) {
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_erase_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputMap) action_get_events(action string) Array {
    mut object_out := Array{}
    classname := StringName.new("InputMap")
    fnname := StringName.new("action_get_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 689397652)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputMap) event_is_action(event InputEvent, action string, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputMap")
    fnname := StringName.new("event_is_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193353650)
    mut args := unsafe { [3]voidptr{} }
    args[0] = event.ptr
    arg_sn1 := StringName.new(action)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputMap) load_from_project_settings() {
    classname := StringName.new("InputMap")
    fnname := StringName.new("load_from_project_settings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

module vgdextension

pub enum SceneTreeGroupCallFlags {
    group_call_default = 0
    group_call_reverse = 1
    group_call_deferred = 2
    group_call_unique = 4
}

pub type SceneTree = voidptr

pub fn (r &SceneTree) get_root() Window {
    mut object_out := Window(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SceneTree) has_group(name StringName) bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("has_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &SceneTree) is_auto_accept_quit() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_auto_accept_quit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_auto_accept_quit(enabled bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_accept_quit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) is_quit_on_go_back() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_quit_on_go_back")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_quit_on_go_back(enabled bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_quit_on_go_back")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) set_debug_collisions_hint(enable bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_collisions_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) is_debugging_collisions_hint() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_debugging_collisions_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_debug_paths_hint(enable bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_paths_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) is_debugging_paths_hint() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_debugging_paths_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_debug_navigation_hint(enable bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_navigation_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) is_debugging_navigation_hint() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_debugging_navigation_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_edited_scene_root(scene Node) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_edited_scene_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) get_edited_scene_root() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_edited_scene_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_pause(enable bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) is_paused() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) create_timer(time_sec f32, process_always bool, process_in_physics bool, ignore_time_scale bool) SceneTreeTimer {
    mut object_out := SceneTreeTimer(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("create_timer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1780978058)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&time_sec)}
    args[1] = unsafe{voidptr(&process_always)}
    args[2] = unsafe{voidptr(&process_in_physics)}
    args[3] = unsafe{voidptr(&ignore_time_scale)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) create_tween() Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("create_tween")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) get_processed_tweens() Array {
    mut object_out := Array{}
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_processed_tweens")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SceneTree) get_node_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SceneTree) get_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) quit(exit_code i32) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("quit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) queue_delete(obj Object) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("queue_delete")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) notify_group_flags(call_flags i32, group StringName, notification i32) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("notify_group_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1245489420)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) set_group_flags(call_flags i32, group StringName, property String, value Variant) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_group_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3497599527)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) notify_group(group StringName, notification i32) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("notify_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) set_group(group StringName, property String, value Variant) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1279312029)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) get_nodes_in_group(group StringName) Array {
    mut object_out := Array{}
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_nodes_in_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 689397652)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) get_first_node_in_group(group StringName) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_first_node_in_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071044623)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_current_scene(child_node Node) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) get_current_scene() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) change_scene_to_file(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("change_scene_to_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) change_scene_to_packed(packed_scene PackedScene) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("change_scene_to_packed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107349098)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&packed_scene)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) reload_current_scene() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("reload_current_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) unload_current_scene() {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("unload_current_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneTree) set_multiplayer(multiplayer MultiplayerAPI, root_path NodePath) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_multiplayer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385607013)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) get_multiplayer(for_path NodePath) MultiplayerAPI {
    mut object_out := MultiplayerAPI(unsafe{nil})
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_multiplayer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3453401404)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&for_path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneTree) set_multiplayer_poll_enabled(enabled bool) {
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_multiplayer_poll_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTree) is_multiplayer_poll_enabled() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_multiplayer_poll_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

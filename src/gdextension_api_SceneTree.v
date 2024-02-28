module vgdextension

pub enum SceneTreeGroupCallFlags as i64 {
    group_call_default = 0
    group_call_reverse = 1
    group_call_deferred = 2
    group_call_unique = 4
}

@[noinit]
pub struct SceneTree {
    MainLoop
}

pub fn (r &SceneTree) get_root() Window {
    mut object_out := Window{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) has_group(name string) bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("has_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) is_auto_accept_quit() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_auto_accept_quit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_auto_accept_quit(enabled bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_auto_accept_quit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) is_quit_on_go_back() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_quit_on_go_back")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_quit_on_go_back(enabled bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_quit_on_go_back")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) set_debug_collisions_hint(enable bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_debug_collisions_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) is_debugging_collisions_hint() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_debugging_collisions_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_debug_paths_hint(enable bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_debug_paths_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) is_debugging_paths_hint() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_debugging_paths_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_debug_navigation_hint(enable bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_debug_navigation_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) is_debugging_navigation_hint() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_debugging_navigation_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_edited_scene_root(scene Node) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_edited_scene_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scene.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) get_edited_scene_root() Node {
    mut object_out := Node{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_edited_scene_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_pause(enable bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_pause")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) is_paused() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) create_timer(time_sec f64, process_always bool, process_in_physics bool, ignore_time_scale bool) SceneTreeTimer {
    mut object_out := SceneTreeTimer{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("create_timer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2709170273)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&time_sec)}
    args[1] = unsafe{voidptr(&process_always)}
    args[2] = unsafe{voidptr(&process_in_physics)}
    args[3] = unsafe{voidptr(&ignore_time_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) create_tween() Tween {
    mut object_out := Tween{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("create_tween")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) get_processed_tweens() Array {
    mut object_out := Array{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_processed_tweens")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) get_node_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_node_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) get_frame() i64 {
    mut object_out := i64(0)
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) quit(exit_code i32) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("quit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exit_code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) queue_delete(obj Object) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("queue_delete")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&obj.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) notify_group_flags(call_flags u32, group string, notification i32) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("notify_group_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1245489420)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&call_flags)}
    arg_sn1 := StringName.new(group)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&notification)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) set_group_flags(call_flags u32, group string, property string, value Variant) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_group_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3497599527)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&call_flags)}
    arg_sn1 := StringName.new(group)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(property)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) notify_group(group string, notification i32) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("notify_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&notification)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) set_group(group string, property string, value Variant) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1279312029)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) get_nodes_in_group(group string) Array {
    mut object_out := Array{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_nodes_in_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 689397652)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) get_first_node_in_group(group string) Node {
    mut object_out := Node{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_first_node_in_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071044623)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_current_scene(child_node Node) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_current_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&child_node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) get_current_scene() Node {
    mut object_out := Node{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_current_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) change_scene_to_file(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("SceneTree")
    fnname := StringName.new("change_scene_to_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &SceneTree) change_scene_to_packed(packed_scene PackedScene) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("SceneTree")
    fnname := StringName.new("change_scene_to_packed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107349098)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&packed_scene.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &SceneTree) reload_current_scene() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("SceneTree")
    fnname := StringName.new("reload_current_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &SceneTree) unload_current_scene() {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("unload_current_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) set_multiplayer(multiplayer MultiplayerAPI, root_path NodePath) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_multiplayer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385607013)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&multiplayer.ptr)
    args[1] = unsafe{voidptr(&root_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) get_multiplayer(for_path NodePath) MultiplayerAPI {
    mut object_out := MultiplayerAPI{}
    classname := StringName.new("SceneTree")
    fnname := StringName.new("get_multiplayer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3453401404)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&for_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneTree) set_multiplayer_poll_enabled(enabled bool) {
    classname := StringName.new("SceneTree")
    fnname := StringName.new("set_multiplayer_poll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTree) is_multiplayer_poll_enabled() bool {
    mut object_out := false
    classname := StringName.new("SceneTree")
    fnname := StringName.new("is_multiplayer_poll_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

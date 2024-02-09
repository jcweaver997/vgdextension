module vgdextension

pub enum MultiplayerSynchronizerVisibilityUpdateMode {
    visibility_process_idle = 0
    visibility_process_physics = 1
    visibility_process_none = 2
}

pub struct MultiplayerSynchronizer {
    Node
}

pub fn (mut r MultiplayerSynchronizer) set_root_path(path NodePath) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_root_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_replication_interval(milliseconds f64) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_replication_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&milliseconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_replication_interval() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_replication_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_delta_interval(milliseconds f64) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_delta_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&milliseconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_delta_interval() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_delta_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_replication_config(config SceneReplicationConfig) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_replication_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3889206742)
    mut args := unsafe { [1]voidptr{} }
    args[0] = config.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) get_replication_config() SceneReplicationConfig {
    mut object_out := SceneReplicationConfig{}
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_replication_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200254614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_visibility_update_mode(mode MultiplayerSynchronizerVisibilityUpdateMode) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3494860300)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_visibility_update_mode() MultiplayerSynchronizerVisibilityUpdateMode {
    mut object_out := MultiplayerSynchronizerVisibilityUpdateMode.visibility_process_idle
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352241418)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) update_visibility(for_peer i32) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("update_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&for_peer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) set_visibility_public(visible bool) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_public")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) is_visibility_public() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("is_visibility_public")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) add_visibility_filter(filter Callable) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("add_visibility_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) remove_visibility_filter(filter Callable) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_visibility_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) set_visibility_for(peer i32, visible bool) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_for")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer)}
    args[1] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_visibility_for(peer i32) bool {
    mut object_out := false
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_for")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

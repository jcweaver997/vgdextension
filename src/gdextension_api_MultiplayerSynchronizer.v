module vgdextension

pub enum MultiplayerSynchronizerVisibilityUpdateMode {
    visibility_process_idle = 0
    visibility_process_physics = 1
    visibility_process_none = 2
}

pub type MultiplayerSynchronizer = voidptr

pub fn (mut r MultiplayerSynchronizer) set_root_path(path NodePath) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_root_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_replication_interval(milliseconds f32) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_replication_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_replication_interval() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_replication_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_delta_interval(milliseconds f32) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_delta_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_delta_interval() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_delta_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_replication_config(config SceneReplicationConfig) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_replication_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3889206742)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) get_replication_config() SceneReplicationConfig {
    mut object_out := SceneReplicationConfig(unsafe{nil})
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_replication_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200254614)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) set_visibility_update_mode(mode MultiplayerSynchronizerVisibilityUpdateMode) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3494860300)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) get_visibility_update_mode() MultiplayerSynchronizerVisibilityUpdateMode {
    mut object_out := MultiplayerSynchronizerVisibilityUpdateMode.visibility_process_idle
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352241418)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) update_visibility(for_peer i32) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("update_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) set_visibility_public(visible bool) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_public")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerSynchronizer) is_visibility_public() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("is_visibility_public")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSynchronizer) add_visibility_filter(filter Callable) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("add_visibility_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) remove_visibility_filter(filter Callable) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_visibility_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerSynchronizer) set_visibility_for(peer i32, visible bool) {
    classname := StringName.new("MultiplayerSynchronizer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_for")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

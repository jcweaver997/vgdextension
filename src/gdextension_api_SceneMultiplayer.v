module vgdextension

@[noinit]
pub struct SceneMultiplayer {
    MultiplayerAPI
}

pub fn (mut r SceneMultiplayer) set_root_path(path NodePath) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) get_root_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) clear() {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneMultiplayer) disconnect_peer(id i32) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r SceneMultiplayer) get_authenticating_peers() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_authenticating_peers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) send_auth(id i32, data PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("send_auth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 506032537)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) complete_auth(id i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("complete_auth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_auth_callback(callback Callable) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_auth_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) get_auth_callback() Callable {
    mut object_out := Callable{}
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_auth_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307783378)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_auth_timeout(timeout f64) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_auth_timeout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) get_auth_timeout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_auth_timeout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_refuse_new_connections(refuse bool) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_refuse_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&refuse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) is_refusing_new_connections() bool {
    mut object_out := false
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_refusing_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_allow_object_decoding(enable bool) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_object_decoding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) is_object_decoding_allowed() bool {
    mut object_out := false
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_object_decoding_allowed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_server_relay_enabled(enabled bool) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_server_relay_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) is_server_relay_enabled() bool {
    mut object_out := false
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_server_relay_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) send_bytes(bytes PackedByteArray, id i32, mode MultiplayerPeerTransferMode, channel i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("send_bytes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2742700601)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    args[1] = unsafe{voidptr(&id)}
    args[2] = unsafe{voidptr(&mode)}
    args[3] = unsafe{voidptr(&channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &SceneMultiplayer) get_max_sync_packet_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_sync_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_max_sync_packet_size(size i32) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_sync_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SceneMultiplayer) get_max_delta_packet_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_delta_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneMultiplayer) set_max_delta_packet_size(size i32) {
    classname := StringName.new("SceneMultiplayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_delta_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

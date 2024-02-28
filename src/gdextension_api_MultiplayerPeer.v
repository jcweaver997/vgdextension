module vgdextension

pub enum MultiplayerPeerConnectionStatus as i64 {
    connection_disconnected = 0
    connection_connecting = 1
    connection_connected = 2
}

pub enum MultiplayerPeerTransferMode as i64 {
    transfer_mode_unreliable = 0
    transfer_mode_unreliable_ordered = 1
    transfer_mode_reliable = 2
}

@[noinit]
pub struct MultiplayerPeer {
    PacketPeer
}

pub fn (r &MultiplayerPeer) set_transfer_channel(channel i32) {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("set_transfer_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) get_transfer_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_transfer_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerPeer) set_transfer_mode(mode MultiplayerPeerTransferMode) {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("set_transfer_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 950411049)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) get_transfer_mode() MultiplayerPeerTransferMode {
    mut object_out := i64(MultiplayerPeerTransferMode.transfer_mode_unreliable)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_transfer_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3369852622)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MultiplayerPeerTransferMode(object_out)}
}
pub fn (r &MultiplayerPeer) set_target_peer(id i32) {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("set_target_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) get_packet_peer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_packet_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerPeer) get_packet_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_packet_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerPeer) get_packet_mode() MultiplayerPeerTransferMode {
    mut object_out := i64(MultiplayerPeerTransferMode.transfer_mode_unreliable)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_packet_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3369852622)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MultiplayerPeerTransferMode(object_out)}
}
pub fn (r &MultiplayerPeer) poll() {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) close() {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) disconnect_peer(peer i32, force bool) {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("disconnect_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) get_connection_status() MultiplayerPeerConnectionStatus {
    mut object_out := i64(MultiplayerPeerConnectionStatus.connection_disconnected)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_connection_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147374275)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MultiplayerPeerConnectionStatus(object_out)}
}
pub fn (r &MultiplayerPeer) get_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("get_unique_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerPeer) generate_unique_id() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("generate_unique_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerPeer) set_refuse_new_connections(enable bool) {
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("set_refuse_new_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerPeer) is_refusing_new_connections() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("is_refusing_new_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerPeer) is_server_relay_supported() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeer")
    fnname := StringName.new("is_server_relay_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

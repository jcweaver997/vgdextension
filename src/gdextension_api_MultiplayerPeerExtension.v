module vgdextension

@[noinit]
pub struct MultiplayerPeerExtension {
    MultiplayerPeer
}

pub interface IMultiplayerPeerExtensionGetPacket {
    mut:
    virt_get_packet(r_buffer &&u8 , r_buffer_size &i32) GDError
}

pub fn (mut r MultiplayerPeerExtension) uget_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_packet")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IMultiplayerPeerExtensionPutPacket {
    mut:
    virt_put_packet(p_buffer &u8, p_buffer_size i32) GDError
}

pub fn (mut r MultiplayerPeerExtension) uput_packet(p_buffer &u8, p_buffer_size i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_put_packet")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_buffer)}
    args[1] = unsafe{voidptr(&p_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IMultiplayerPeerExtensionGetAvailablePacketCount {
    mut:
    virt_get_available_packet_count() i32
}

pub fn (r &MultiplayerPeerExtension) uget_available_packet_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_available_packet_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionGetMaxPacketSize {
    mut:
    virt_get_max_packet_size() i32
}

pub fn (r &MultiplayerPeerExtension) uget_max_packet_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_max_packet_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionGetPacketScript {
    mut:
    virt_get_packet_script() PackedByteArray
}

pub fn (mut r MultiplayerPeerExtension) uget_packet_script() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_packet_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionPutPacketScript {
    mut:
    virt_put_packet_script(p_buffer PackedByteArray) GDError
}

pub fn (mut r MultiplayerPeerExtension) uput_packet_script(p_buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_put_packet_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IMultiplayerPeerExtensionGetPacketChannel {
    mut:
    virt_get_packet_channel() i32
}

pub fn (r &MultiplayerPeerExtension) uget_packet_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_packet_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionGetPacketMode {
    mut:
    virt_get_packet_mode() MultiplayerPeerTransferMode
}

pub fn (r &MultiplayerPeerExtension) uget_packet_mode() MultiplayerPeerTransferMode {
    mut object_out := i64(MultiplayerPeerTransferMode.transfer_mode_unreliable)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_packet_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MultiplayerPeerTransferMode(object_out)}
}
pub interface IMultiplayerPeerExtensionSetTransferChannel {
    mut:
    virt_set_transfer_channel(p_channel i32)
}

pub fn (mut r MultiplayerPeerExtension) uset_transfer_channel(p_channel i32) {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_set_transfer_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionGetTransferChannel {
    mut:
    virt_get_transfer_channel() i32
}

pub fn (r &MultiplayerPeerExtension) uget_transfer_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_transfer_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionSetTransferMode {
    mut:
    virt_set_transfer_mode(p_mode MultiplayerPeerTransferMode)
}

pub fn (mut r MultiplayerPeerExtension) uset_transfer_mode(p_mode MultiplayerPeerTransferMode) {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_set_transfer_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    i64_p_mode := i64(p_mode)
    args[0] = unsafe{voidptr(&i64_p_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionGetTransferMode {
    mut:
    virt_get_transfer_mode() MultiplayerPeerTransferMode
}

pub fn (r &MultiplayerPeerExtension) uget_transfer_mode() MultiplayerPeerTransferMode {
    mut object_out := i64(MultiplayerPeerTransferMode.transfer_mode_unreliable)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_transfer_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MultiplayerPeerTransferMode(object_out)}
}
pub interface IMultiplayerPeerExtensionSetTargetPeer {
    mut:
    virt_set_target_peer(p_peer i32)
}

pub fn (mut r MultiplayerPeerExtension) uset_target_peer(p_peer i32) {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_set_target_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_peer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionGetPacketPeer {
    mut:
    virt_get_packet_peer() i32
}

pub fn (r &MultiplayerPeerExtension) uget_packet_peer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_packet_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionIsServer {
    mut:
    virt_is_server() bool
}

pub fn (r &MultiplayerPeerExtension) uis_server() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_is_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionPoll {
    mut:
    virt_poll()
}

pub fn (mut r MultiplayerPeerExtension) upoll() {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionClose {
    mut:
    virt_close()
}

pub fn (mut r MultiplayerPeerExtension) uclose() {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionDisconnectPeer {
    mut:
    virt_disconnect_peer(p_peer i32, p_force bool)
}

pub fn (mut r MultiplayerPeerExtension) udisconnect_peer(p_peer i32, p_force bool) {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_disconnect_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_peer)}
    args[1] = unsafe{voidptr(&p_force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionGetUniqueId {
    mut:
    virt_get_unique_id() i32
}

pub fn (r &MultiplayerPeerExtension) uget_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_unique_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionSetRefuseNewConnections {
    mut:
    virt_set_refuse_new_connections(p_enable bool)
}

pub fn (mut r MultiplayerPeerExtension) uset_refuse_new_connections(p_enable bool) {
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_set_refuse_new_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerPeerExtensionIsRefusingNewConnections {
    mut:
    virt_is_refusing_new_connections() bool
}

pub fn (r &MultiplayerPeerExtension) uis_refusing_new_connections() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_is_refusing_new_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionIsServerRelaySupported {
    mut:
    virt_is_server_relay_supported() bool
}

pub fn (r &MultiplayerPeerExtension) uis_server_relay_supported() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_is_server_relay_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerPeerExtensionGetConnectionStatus {
    mut:
    virt_get_connection_status() MultiplayerPeerConnectionStatus
}

pub fn (r &MultiplayerPeerExtension) uget_connection_status() MultiplayerPeerConnectionStatus {
    mut object_out := i64(MultiplayerPeerConnectionStatus.connection_disconnected)
    classname := StringName.new("MultiplayerPeerExtension")
    fnname := StringName.new("_get_connection_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MultiplayerPeerConnectionStatus(object_out)}
}

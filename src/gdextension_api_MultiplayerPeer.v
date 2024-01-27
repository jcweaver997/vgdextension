pub enum MultiplayerPeerConnectionStatus {
    connection_disconnected = 0
    connection_connecting = 1
    connection_connected = 2
}

pub enum MultiplayerPeerTransferMode {
    transfer_mode_unreliable = 0
    transfer_mode_unreliable_ordered = 1
    transfer_mode_reliable = 2
}

pub type MultiplayerPeer = voidptr

pub fn (mut r MultiplayerPeer) set_transfer_channel(channel i32) {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_transfer_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeer) get_transfer_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_transfer_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeer) set_transfer_mode(mode MultiplayerPeerTransferMode) {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_transfer_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 950411049)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeer) get_transfer_mode() MultiplayerPeerTransferMode {
    mut object_out := MultiplayerPeerTransferMode.transfer_mode_unreliable
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_transfer_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3369852622)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeer) set_target_peer(id i32) {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeer) get_packet_peer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeer) get_packet_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeer) get_packet_mode() MultiplayerPeerTransferMode {
    mut object_out := MultiplayerPeerTransferMode.transfer_mode_unreliable
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3369852622)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeer) poll() {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerPeer) close() {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerPeer) disconnect_peer(peer i32, force bool) {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeer) get_connection_status() MultiplayerPeerConnectionStatus {
    mut object_out := MultiplayerPeerConnectionStatus.connection_disconnected
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147374275)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeer) get_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_unique_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeer) generate_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("generate_unique_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeer) set_refuse_new_connections(enable bool) {
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_refuse_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeer) is_refusing_new_connections() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("is_refusing_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeer) is_server_relay_supported() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("is_server_relay_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

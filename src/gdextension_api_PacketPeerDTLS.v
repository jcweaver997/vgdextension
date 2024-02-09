module vgdextension

pub enum PacketPeerDTLSStatus {
    status_disconnected = 0
    status_handshaking = 1
    status_connected = 2
    status_error = 3
    status_error_hostname_mismatch = 4
}

pub struct PacketPeerDTLS {
    PacketPeer
}

pub fn (mut r PacketPeerDTLS) poll() {
    classname := StringName.new("PacketPeerDTLS")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r PacketPeerDTLS) connect_to_peer(packet_peer PacketPeerUDP, hostname String, client_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerDTLS")
    defer { classname.deinit() }
    fnname := StringName.new("connect_to_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1801538152)
    mut args := unsafe { [3]voidptr{} }
    args[0] = packet_peer.ptr
    args[1] = unsafe{voidptr(&hostname)}
    args[2] = client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerDTLS) get_status() PacketPeerDTLSStatus {
    mut object_out := PacketPeerDTLSStatus.status_disconnected
    classname := StringName.new("PacketPeerDTLS")
    defer { classname.deinit() }
    fnname := StringName.new("get_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3248654679)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerDTLS) disconnect_from_peer() {
    classname := StringName.new("PacketPeerDTLS")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_from_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

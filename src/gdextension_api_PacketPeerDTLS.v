module vgdextension

pub enum PacketPeerDTLSStatus as i64 {
    status_disconnected = 0
    status_handshaking = 1
    status_connected = 2
    status_error = 3
    status_error_hostname_mismatch = 4
}

@[noinit]
pub struct PacketPeerDTLS {
    PacketPeer
}

pub fn (r &PacketPeerDTLS) poll() {
    classname := StringName.new("PacketPeerDTLS")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PacketPeerDTLS) connect_to_peer(packet_peer PacketPeerUDP, hostname string, client_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerDTLS")
    fnname := StringName.new("connect_to_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2880188099)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&packet_peer.ptr)
    arg_sn1 := String.new(hostname)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = voidptr(&client_options.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeerDTLS) get_status() PacketPeerDTLSStatus {
    mut object_out := i64(PacketPeerDTLSStatus.status_disconnected)
    classname := StringName.new("PacketPeerDTLS")
    fnname := StringName.new("get_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3248654679)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PacketPeerDTLSStatus(object_out)}
}
pub fn (r &PacketPeerDTLS) disconnect_from_peer() {
    classname := StringName.new("PacketPeerDTLS")
    fnname := StringName.new("disconnect_from_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

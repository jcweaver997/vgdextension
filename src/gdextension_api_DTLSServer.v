module vgdextension

@[noinit]
pub struct DTLSServer {
    RefCounted
}

pub fn (r &DTLSServer) setup(server_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DTLSServer")
    fnname := StringName.new("setup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262296096)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&server_options.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &DTLSServer) take_connection(udp_peer PacketPeerUDP) PacketPeerDTLS {
    mut object_out := PacketPeerDTLS{}
    classname := StringName.new("DTLSServer")
    fnname := StringName.new("take_connection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3946580474)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&udp_peer.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

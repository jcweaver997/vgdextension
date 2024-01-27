module vgdextension

pub type DTLSServer = voidptr

pub fn (mut r DTLSServer) setup(server_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DTLSServer")
    defer { classname.deinit() }
    fnname := StringName.new("setup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262296096)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&server_options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DTLSServer) take_connection(udp_peer PacketPeerUDP) PacketPeerDTLS {
    mut object_out := PacketPeerDTLS(unsafe{nil})
    classname := StringName.new("DTLSServer")
    defer { classname.deinit() }
    fnname := StringName.new("take_connection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3946580474)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&udp_peer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

pub type ENetMultiplayerPeer = voidptr

pub fn (mut r ENetMultiplayerPeer) create_server(port i32, max_clients i32, max_channels i32, in_bandwidth i32, out_bandwidth i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1616151701)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&max_clients)}
    args[2] = unsafe{voidptr(&max_channels)}
    args[3] = unsafe{voidptr(&in_bandwidth)}
    args[4] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetMultiplayerPeer) create_client(address String, port i32, channel_count i32, in_bandwidth i32, out_bandwidth i32, local_port i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_client")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 920217784)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&address)}
    args[1] = unsafe{voidptr(&port)}
    args[2] = unsafe{voidptr(&channel_count)}
    args[3] = unsafe{voidptr(&in_bandwidth)}
    args[4] = unsafe{voidptr(&out_bandwidth)}
    args[5] = unsafe{voidptr(&local_port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetMultiplayerPeer) create_mesh(unique_id i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unique_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetMultiplayerPeer) add_mesh_peer(peer_id i32, host ENetConnection) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("add_mesh_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1293458335)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    args[1] = unsafe{voidptr(&host)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetMultiplayerPeer) set_bind_ip(ip String) {
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_bind_ip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ENetMultiplayerPeer) get_host() ENetConnection {
    mut object_out := ENetConnection(unsafe{nil})
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4103238886)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ENetMultiplayerPeer) get_peer(id i32) ENetPacketPeer {
    mut object_out := ENetPacketPeer(unsafe{nil})
    classname := StringName.new("ENetMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3793311544)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

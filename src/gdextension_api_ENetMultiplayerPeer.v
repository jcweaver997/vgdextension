module vgdextension

@[noinit]
pub struct ENetMultiplayerPeer {
    MultiplayerPeer
}

pub fn (r &ENetMultiplayerPeer) create_server(port i32, max_clients i32, max_channels i32, in_bandwidth i32, out_bandwidth i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("create_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2917761309)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&max_clients)}
    args[2] = unsafe{voidptr(&max_channels)}
    args[3] = unsafe{voidptr(&in_bandwidth)}
    args[4] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ENetMultiplayerPeer) create_client(address string, port i32, channel_count i32, in_bandwidth i32, out_bandwidth i32, local_port i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("create_client")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2327163476)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := String.new(address)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    args[2] = unsafe{voidptr(&channel_count)}
    args[3] = unsafe{voidptr(&in_bandwidth)}
    args[4] = unsafe{voidptr(&out_bandwidth)}
    args[5] = unsafe{voidptr(&local_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ENetMultiplayerPeer) create_mesh(unique_id i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("create_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unique_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ENetMultiplayerPeer) add_mesh_peer(peer_id i32, host ENetConnection) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("add_mesh_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1293458335)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    args[1] = voidptr(&host.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ENetMultiplayerPeer) set_bind_ip(ip string) {
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("set_bind_ip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(ip)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetMultiplayerPeer) get_host() ENetConnection {
    mut object_out := ENetConnection{}
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("get_host")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4103238886)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ENetMultiplayerPeer) get_peer(id i32) ENetPacketPeer {
    mut object_out := ENetPacketPeer{}
    classname := StringName.new("ENetMultiplayerPeer")
    fnname := StringName.new("get_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3793311544)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

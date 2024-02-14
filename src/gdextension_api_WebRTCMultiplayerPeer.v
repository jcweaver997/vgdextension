module vgdextension

@[noinit]
pub struct WebRTCMultiplayerPeer {
    MultiplayerPeer
}

pub fn (mut r WebRTCMultiplayerPeer) create_server(channels_config Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("create_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865356025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&channels_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCMultiplayerPeer) create_client(peer_id i32, channels_config Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("create_client")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2641732907)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    args[1] = unsafe{voidptr(&channels_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCMultiplayerPeer) create_mesh(peer_id i32, channels_config Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("create_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2641732907)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    args[1] = unsafe{voidptr(&channels_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCMultiplayerPeer) add_peer(peer WebRTCPeerConnection, peer_id i32, unreliable_lifetime i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("add_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4078953270)
    mut args := unsafe { [3]voidptr{} }
    args[0] = peer.ptr
    args[1] = unsafe{voidptr(&peer_id)}
    args[2] = unsafe{voidptr(&unreliable_lifetime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCMultiplayerPeer) remove_peer(peer_id i32) {
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("remove_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r WebRTCMultiplayerPeer) has_peer(peer_id i32) bool {
    mut object_out := false
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("has_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) get_peer(peer_id i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("get_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) get_peers() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("WebRTCMultiplayerPeer")
    fnname := StringName.new("get_peers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

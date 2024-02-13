module vgdextension

@[noinit]
pub struct WebRTCMultiplayerPeer {
    MultiplayerPeer
}

pub fn (mut r WebRTCMultiplayerPeer) create_server(channels_config Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2865356025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&channels_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) create_client(peer_id i32, channels_config Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_client")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1777354631)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    args[1] = unsafe{voidptr(&channels_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) create_mesh(peer_id i32, channels_config Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1777354631)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    args[1] = unsafe{voidptr(&channels_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) add_peer(peer WebRTCPeerConnection, peer_id i32, unreliable_lifetime i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("add_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2555866323)
    mut args := unsafe { [3]voidptr{} }
    args[0] = peer.ptr
    args[1] = unsafe{voidptr(&peer_id)}
    args[2] = unsafe{voidptr(&unreliable_lifetime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) remove_peer(peer_id i32) {
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r WebRTCMultiplayerPeer) has_peer(peer_id i32) bool {
    mut object_out := false
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("has_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) get_peer(peer_id i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCMultiplayerPeer) get_peers() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("WebRTCMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_peers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

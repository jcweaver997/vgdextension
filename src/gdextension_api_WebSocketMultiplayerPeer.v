module vgdextension

@[noinit]
pub struct WebSocketMultiplayerPeer {
    MultiplayerPeer
}

pub fn (mut r WebSocketMultiplayerPeer) create_client(url String, tls_client_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("create_client")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1966198364)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    args[1] = tls_client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebSocketMultiplayerPeer) create_server(port i32, bind_address String, tls_server_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("create_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2400822951)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&bind_address)}
    args[2] = tls_server_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WebSocketMultiplayerPeer) get_peer(peer_id i32) WebSocketPeer {
    mut object_out := WebSocketPeer{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1381378851)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_peer_address(id i32) String {
    mut object_out := String{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_peer_address")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_peer_port(id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_peer_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_supported_protocols() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_supported_protocols")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_supported_protocols(protocols PackedStringArray) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("set_supported_protocols")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&protocols)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketMultiplayerPeer) get_handshake_headers() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_handshake_headers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_handshake_headers(protocols PackedStringArray) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("set_handshake_headers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&protocols)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketMultiplayerPeer) get_inbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_inbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_inbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("set_inbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketMultiplayerPeer) get_outbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_outbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_outbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("set_outbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketMultiplayerPeer) get_handshake_timeout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_handshake_timeout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_handshake_timeout(timeout f64) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("set_handshake_timeout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r WebSocketMultiplayerPeer) set_max_queued_packets(max_queued_packets i32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("set_max_queued_packets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_queued_packets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketMultiplayerPeer) get_max_queued_packets() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    fnname := StringName.new("get_max_queued_packets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

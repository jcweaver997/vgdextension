module vgdextension

pub type WebSocketMultiplayerPeer = voidptr

pub fn (mut r WebSocketMultiplayerPeer) create_client(url String, tls_client_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_client")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3097527179)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    args[1] = unsafe{voidptr(&tls_client_options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) create_server(port i32, bind_address String, tls_server_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("create_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 337374795)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&bind_address)}
    args[2] = unsafe{voidptr(&tls_server_options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_peer(peer_id i32) WebSocketPeer {
    mut object_out := WebSocketPeer(unsafe{nil})
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1381378851)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&peer_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_peer_address(id i32) String {
    mut object_out := String{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_peer_address")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_peer_port(id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_peer_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketMultiplayerPeer) get_supported_protocols() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_supported_protocols")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_supported_protocols(protocols PackedStringArray) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_supported_protocols")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketMultiplayerPeer) get_handshake_headers() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_handshake_headers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_handshake_headers(protocols PackedStringArray) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_handshake_headers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketMultiplayerPeer) get_inbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_inbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_inbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_inbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketMultiplayerPeer) get_outbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_outbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_outbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_outbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketMultiplayerPeer) get_handshake_timeout() f32 {
    mut object_out := f32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_handshake_timeout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketMultiplayerPeer) set_handshake_timeout(timeout f32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_handshake_timeout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r WebSocketMultiplayerPeer) set_max_queued_packets(max_queued_packets i32) {
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_queued_packets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketMultiplayerPeer) get_max_queued_packets() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketMultiplayerPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_queued_packets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

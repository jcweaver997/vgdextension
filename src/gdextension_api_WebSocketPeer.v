pub enum WebSocketPeerWriteMode {
    write_mode_text = 0
    write_mode_binary = 1
}

pub enum WebSocketPeerState {
    state_connecting = 0
    state_open = 1
    state_closing = 2
    state_closed = 3
}

pub type WebSocketPeer = voidptr

pub fn (mut r WebSocketPeer) connect_to_url(url String, tls_client_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("connect_to_url")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3097527179)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    args[1] = unsafe{voidptr(&tls_client_options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) accept_stream(stream StreamPeer) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("accept_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 255125695)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) send(message PackedByteArray, write_mode WebSocketPeerWriteMode) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("send")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3440492527)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&write_mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) send_text(message String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("send_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) was_string_packet() bool {
    mut object_out := false
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("was_string_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) poll() {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r WebSocketPeer) close(code i32, reason String) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1047156615)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketPeer) get_connected_host() String {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_connected_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_connected_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_connected_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_selected_protocol() String {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected_protocol")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_requested_url() String {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_requested_url")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) set_no_delay(enabled bool) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_no_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketPeer) get_current_outbound_buffered_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_outbound_buffered_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_ready_state() WebSocketPeerState {
    mut object_out := WebSocketPeerState.state_connecting
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_ready_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 346482985)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_close_code() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_close_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_close_reason() String {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_close_reason")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebSocketPeer) get_supported_protocols() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_supported_protocols")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) set_supported_protocols(protocols PackedStringArray) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_supported_protocols")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketPeer) get_handshake_headers() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_handshake_headers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) set_handshake_headers(protocols PackedStringArray) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_handshake_headers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketPeer) get_inbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_inbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) set_inbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_inbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketPeer) get_outbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_outbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebSocketPeer) set_outbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_outbound_buffer_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r WebSocketPeer) set_max_queued_packets(buffer_size i32) {
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_queued_packets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WebSocketPeer) get_max_queued_packets() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_queued_packets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

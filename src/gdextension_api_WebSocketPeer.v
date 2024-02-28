module vgdextension

pub enum WebSocketPeerWriteMode as i64 {
    write_mode_text = 0
    write_mode_binary = 1
}

pub enum WebSocketPeerState as i64 {
    state_connecting = 0
    state_open = 1
    state_closing = 2
    state_closed = 3
}

@[noinit]
pub struct WebSocketPeer {
    PacketPeer
}

pub fn (r &WebSocketPeer) connect_to_url(url string, tls_client_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("connect_to_url")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1966198364)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(url)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&tls_client_options.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WebSocketPeer) accept_stream(stream StreamPeer) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("accept_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 255125695)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&stream.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WebSocketPeer) send(message PackedByteArray, write_mode WebSocketPeerWriteMode) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("send")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2780360567)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    i64_write_mode := i64(write_mode)
    args[1] = unsafe{voidptr(&i64_write_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WebSocketPeer) send_text(message string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("send_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WebSocketPeer) was_string_packet() bool {
    mut object_out := false
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("was_string_packet")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) poll() {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) close(code i32, reason string) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1047156615)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    arg_sn1 := String.new(reason)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) get_connected_host() string {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_connected_host")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebSocketPeer) get_connected_port() u16 {
    mut object_out := u16(0)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_connected_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) get_selected_protocol() string {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_selected_protocol")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebSocketPeer) get_requested_url() string {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_requested_url")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebSocketPeer) set_no_delay(enabled bool) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("set_no_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) get_current_outbound_buffered_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_current_outbound_buffered_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) get_ready_state() WebSocketPeerState {
    mut object_out := i64(WebSocketPeerState.state_connecting)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_ready_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 346482985)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebSocketPeerState(object_out)}
}
pub fn (r &WebSocketPeer) get_close_code() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_close_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) get_close_reason() string {
    mut object_out := String{}
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_close_reason")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebSocketPeer) get_supported_protocols() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_supported_protocols")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) set_supported_protocols(protocols PackedStringArray) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("set_supported_protocols")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&protocols)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) get_handshake_headers() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_handshake_headers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) set_handshake_headers(protocols PackedStringArray) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("set_handshake_headers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&protocols)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) get_inbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_inbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) set_inbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("set_inbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) get_outbound_buffer_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_outbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebSocketPeer) set_outbound_buffer_size(buffer_size i32) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("set_outbound_buffer_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) set_max_queued_packets(buffer_size i32) {
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("set_max_queued_packets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebSocketPeer) get_max_queued_packets() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebSocketPeer")
    fnname := StringName.new("get_max_queued_packets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

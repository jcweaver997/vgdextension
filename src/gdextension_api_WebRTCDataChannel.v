module vgdextension

pub enum WebRTCDataChannelWriteMode as i64 {
    write_mode_text = 0
    write_mode_binary = 1
}

pub enum WebRTCDataChannelChannelState as i64 {
    state_connecting = 0
    state_open = 1
    state_closing = 2
    state_closed = 3
}

@[noinit]
pub struct WebRTCDataChannel {
    PacketPeer
}

pub fn (r &WebRTCDataChannel) poll() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WebRTCDataChannel) close() {
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebRTCDataChannel) was_string_packet() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("was_string_packet")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebRTCDataChannel) set_write_mode(write_mode WebRTCDataChannelWriteMode) {
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("set_write_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999768052)
    mut args := unsafe { [1]voidptr{} }
    i64_write_mode := i64(write_mode)
    args[0] = unsafe{voidptr(&i64_write_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebRTCDataChannel) get_write_mode() WebRTCDataChannelWriteMode {
    mut object_out := i64(WebRTCDataChannelWriteMode.write_mode_text)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_write_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2848495172)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCDataChannelWriteMode(object_out)}
}
pub fn (r &WebRTCDataChannel) get_ready_state() WebRTCDataChannelChannelState {
    mut object_out := i64(WebRTCDataChannelChannelState.state_connecting)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_ready_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3501143017)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCDataChannelChannelState(object_out)}
}
pub fn (r &WebRTCDataChannel) get_label() string {
    mut object_out := String{}
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebRTCDataChannel) is_ordered() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("is_ordered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebRTCDataChannel) get_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebRTCDataChannel) get_max_packet_life_time() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_max_packet_life_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebRTCDataChannel) get_max_retransmits() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_max_retransmits")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebRTCDataChannel) get_protocol() string {
    mut object_out := String{}
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_protocol")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &WebRTCDataChannel) is_negotiated() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("is_negotiated")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WebRTCDataChannel) get_buffered_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    fnname := StringName.new("get_buffered_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

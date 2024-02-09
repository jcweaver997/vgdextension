module vgdextension

pub enum WebRTCDataChannelWriteMode {
    write_mode_text = 0
    write_mode_binary = 1
}

pub enum WebRTCDataChannelChannelState {
    state_connecting = 0
    state_open = 1
    state_closing = 2
    state_closed = 3
}

pub struct WebRTCDataChannel {
    PacketPeer
}

pub fn (mut r WebRTCDataChannel) poll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCDataChannel) close() {
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &WebRTCDataChannel) was_string_packet() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("was_string_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCDataChannel) set_write_mode(write_mode WebRTCDataChannelWriteMode) {
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("set_write_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999768052)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&write_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &WebRTCDataChannel) get_write_mode() WebRTCDataChannelWriteMode {
    mut object_out := WebRTCDataChannelWriteMode.write_mode_text
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_write_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2848495172)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_ready_state() WebRTCDataChannelChannelState {
    mut object_out := WebRTCDataChannelChannelState.state_connecting
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_ready_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3501143017)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_label() String {
    mut object_out := String{}
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) is_ordered() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("is_ordered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_max_packet_life_time() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_packet_life_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_max_retransmits() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_retransmits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_protocol() String {
    mut object_out := String{}
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_protocol")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) is_negotiated() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("is_negotiated")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCDataChannel) get_buffered_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannel")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffered_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

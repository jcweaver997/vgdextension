module vgdextension

@[noinit]
pub struct WebRTCDataChannelExtension {
    WebRTCDataChannel
}

pub interface IWebRTCDataChannelExtensionGetPacket {
    mut:
    virt_get_packet(r_buffer &&u8 , r_buffer_size &i32) GDError
}

pub fn (mut r WebRTCDataChannelExtension) uget_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionPutPacket {
    mut:
    virt_put_packet(p_buffer &u8, p_buffer_size i32) GDError
}

pub fn (mut r WebRTCDataChannelExtension) uput_packet(p_buffer &u8, p_buffer_size i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_put_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_buffer)}
    args[1] = unsafe{voidptr(&p_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetAvailablePacketCount {
    mut:
    virt_get_available_packet_count() i32
}

pub fn (r &WebRTCDataChannelExtension) uget_available_packet_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_available_packet_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetMaxPacketSize {
    mut:
    virt_get_max_packet_size() i32
}

pub fn (r &WebRTCDataChannelExtension) uget_max_packet_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_max_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionPoll {
    mut:
    virt_poll() GDError
}

pub fn (mut r WebRTCDataChannelExtension) upoll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionClose {
    mut:
    virt_close()
}

pub fn (mut r WebRTCDataChannelExtension) uclose() {
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IWebRTCDataChannelExtensionSetWriteMode {
    mut:
    virt_set_write_mode(p_write_mode WebRTCDataChannelWriteMode)
}

pub fn (mut r WebRTCDataChannelExtension) uset_write_mode(p_write_mode WebRTCDataChannelWriteMode) {
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_write_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_write_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IWebRTCDataChannelExtensionGetWriteMode {
    mut:
    virt_get_write_mode() WebRTCDataChannelWriteMode
}

pub fn (r &WebRTCDataChannelExtension) uget_write_mode() WebRTCDataChannelWriteMode {
    mut object_out := WebRTCDataChannelWriteMode.write_mode_text
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_write_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionWasStringPacket {
    mut:
    virt_was_string_packet() bool
}

pub fn (r &WebRTCDataChannelExtension) uwas_string_packet() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_was_string_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetReadyState {
    mut:
    virt_get_ready_state() WebRTCDataChannelChannelState
}

pub fn (r &WebRTCDataChannelExtension) uget_ready_state() WebRTCDataChannelChannelState {
    mut object_out := WebRTCDataChannelChannelState.state_connecting
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_ready_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetLabel {
    mut:
    virt_get_label() String
}

pub fn (r &WebRTCDataChannelExtension) uget_label() String {
    mut object_out := String{}
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionIsOrdered {
    mut:
    virt_is_ordered() bool
}

pub fn (r &WebRTCDataChannelExtension) uis_ordered() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_ordered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetId {
    mut:
    virt_get_id() i32
}

pub fn (r &WebRTCDataChannelExtension) uget_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetMaxPacketLifeTime {
    mut:
    virt_get_max_packet_life_time() i32
}

pub fn (r &WebRTCDataChannelExtension) uget_max_packet_life_time() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_max_packet_life_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetMaxRetransmits {
    mut:
    virt_get_max_retransmits() i32
}

pub fn (r &WebRTCDataChannelExtension) uget_max_retransmits() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_max_retransmits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetProtocol {
    mut:
    virt_get_protocol() String
}

pub fn (r &WebRTCDataChannelExtension) uget_protocol() String {
    mut object_out := String{}
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_protocol")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionIsNegotiated {
    mut:
    virt_is_negotiated() bool
}

pub fn (r &WebRTCDataChannelExtension) uis_negotiated() bool {
    mut object_out := false
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_negotiated")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCDataChannelExtensionGetBufferedAmount {
    mut:
    virt_get_buffered_amount() i32
}

pub fn (r &WebRTCDataChannelExtension) uget_buffered_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("WebRTCDataChannelExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_buffered_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

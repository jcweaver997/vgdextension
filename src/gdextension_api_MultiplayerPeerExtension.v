pub type MultiplayerPeerExtension = voidptr

pub fn (mut r MultiplayerPeerExtension) uget_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uput_packet(p_buffer &u8, p_buffer_size i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_put_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_buffer)}
    args[1] = unsafe{voidptr(&p_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uget_available_packet_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_available_packet_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uget_max_packet_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_max_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uget_packet_script() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uput_packet_script(p_buffer PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_put_packet_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_buffer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uget_packet_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uget_packet_mode() MultiplayerPeerTransferMode {
    mut object_out := MultiplayerPeerTransferMode.transfer_mode_unreliable
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uset_transfer_channel(p_channel i32) {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_transfer_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeerExtension) uget_transfer_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_transfer_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uset_transfer_mode(p_mode MultiplayerPeerTransferMode) {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_transfer_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeerExtension) uget_transfer_mode() MultiplayerPeerTransferMode {
    mut object_out := MultiplayerPeerTransferMode.transfer_mode_unreliable
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_transfer_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uset_target_peer(p_peer i32) {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_target_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeerExtension) uget_packet_peer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uis_server() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) upoll() {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerPeerExtension) uclose() {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerPeerExtension) udisconnect_peer(p_peer i32, p_force bool) {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_disconnect_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeerExtension) uget_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_unique_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerPeerExtension) uset_refuse_new_connections(p_enable bool) {
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_refuse_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiplayerPeerExtension) uis_refusing_new_connections() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_refusing_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uis_server_relay_supported() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_server_relay_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerPeerExtension) uget_connection_status() MultiplayerPeerConnectionStatus {
    mut object_out := MultiplayerPeerConnectionStatus.connection_disconnected
    classname := StringName.new("MultiplayerPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_connection_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

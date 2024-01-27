module vgdextension

pub enum StreamPeerTLSStatus {
    status_disconnected = 0
    status_handshaking = 1
    status_connected = 2
    status_error = 3
    status_error_hostname_mismatch = 4
}

pub type StreamPeerTLS = voidptr

pub fn (mut r StreamPeerTLS) poll() {
    classname := StringName.new("StreamPeerTLS")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeerTLS) accept_stream(stream StreamPeer, server_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerTLS")
    defer { classname.deinit() }
    fnname := StringName.new("accept_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4292689651)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    args[1] = unsafe{voidptr(&server_options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerTLS) connect_to_stream(stream StreamPeer, common_name String, client_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerTLS")
    defer { classname.deinit() }
    fnname := StringName.new("connect_to_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1325480781)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&stream)}
    args[1] = unsafe{voidptr(&common_name)}
    args[2] = unsafe{voidptr(&client_options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerTLS) get_status() StreamPeerTLSStatus {
    mut object_out := StreamPeerTLSStatus.status_disconnected
    classname := StringName.new("StreamPeerTLS")
    defer { classname.deinit() }
    fnname := StringName.new("get_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128380576)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerTLS) get_stream() StreamPeer {
    mut object_out := StreamPeer(unsafe{nil})
    classname := StringName.new("StreamPeerTLS")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741655269)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerTLS) disconnect_from_stream() {
    classname := StringName.new("StreamPeerTLS")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_from_stream")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

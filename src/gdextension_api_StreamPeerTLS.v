module vgdextension

pub enum StreamPeerTLSStatus as i64 {
    status_disconnected = 0
    status_handshaking = 1
    status_connected = 2
    status_error = 3
    status_error_hostname_mismatch = 4
}

@[noinit]
pub struct StreamPeerTLS {
    StreamPeer
}

pub fn (r &StreamPeerTLS) poll() {
    classname := StringName.new("StreamPeerTLS")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StreamPeerTLS) accept_stream(stream StreamPeer, server_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerTLS")
    fnname := StringName.new("accept_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4292689651)
    mut args := unsafe { [2]voidptr{} }
    args[0] = stream.ptr
    args[1] = server_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &StreamPeerTLS) connect_to_stream(stream StreamPeer, common_name string, client_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerTLS")
    fnname := StringName.new("connect_to_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 57169517)
    mut args := unsafe { [3]voidptr{} }
    args[0] = stream.ptr
    arg_sn1 := String.new(common_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &StreamPeerTLS) get_status() StreamPeerTLSStatus {
    mut object_out := i64(StreamPeerTLSStatus.status_disconnected)
    classname := StringName.new("StreamPeerTLS")
    fnname := StringName.new("get_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128380576)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{StreamPeerTLSStatus(object_out)}
}
pub fn (r &StreamPeerTLS) get_stream() StreamPeer {
    mut object_out := StreamPeer{}
    classname := StringName.new("StreamPeerTLS")
    fnname := StringName.new("get_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741655269)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StreamPeerTLS) disconnect_from_stream() {
    classname := StringName.new("StreamPeerTLS")
    fnname := StringName.new("disconnect_from_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

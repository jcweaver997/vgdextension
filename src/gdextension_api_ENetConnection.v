module vgdextension

pub enum ENetConnectionCompressionMode {
    compress_none = 0
    compress_range_coder = 1
    compress_fastlz = 2
    compress_zlib = 3
    compress_zstd = 4
}

pub enum ENetConnectionEventType {
    event_error = -1
    event_none = 0
    event_connect = 1
    event_disconnect = 2
    event_receive = 3
}

pub enum ENetConnectionHostStatistic {
    host_total_sent_data = 0
    host_total_sent_packets = 1
    host_total_received_data = 2
    host_total_received_packets = 3
}

@[noinit]
pub struct ENetConnection {
    RefCounted
}

pub fn (mut r ENetConnection) create_host_bound(bind_address String, bind_port i32, max_peers i32, max_channels i32, in_bandwidth i32, out_bandwidth i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("create_host_bound")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866250949)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&bind_address)}
    args[1] = unsafe{voidptr(&bind_port)}
    args[2] = unsafe{voidptr(&max_peers)}
    args[3] = unsafe{voidptr(&max_channels)}
    args[4] = unsafe{voidptr(&in_bandwidth)}
    args[5] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) create_host(max_peers i32, max_channels i32, in_bandwidth i32, out_bandwidth i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("create_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 117198950)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&max_peers)}
    args[1] = unsafe{voidptr(&max_channels)}
    args[2] = unsafe{voidptr(&in_bandwidth)}
    args[3] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) destroy() {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("destroy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ENetConnection) connect_to_host(address String, port i32, channels i32, data i32) ENetPacketPeer {
    mut object_out := ENetPacketPeer{}
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("connect_to_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 385984708)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&address)}
    args[1] = unsafe{voidptr(&port)}
    args[2] = unsafe{voidptr(&channels)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) service(timeout i32) Array {
    mut object_out := Array{}
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("service")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2402345344)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) flush() {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("flush")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ENetConnection) bandwidth_limit(in_bandwidth i32, out_bandwidth i32) {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("bandwidth_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2302169788)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&in_bandwidth)}
    args[1] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ENetConnection) channel_limit(limit i32) {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("channel_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ENetConnection) broadcast(channel i32, packet PackedByteArray, flags i32) {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("broadcast")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2772371345)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&channel)}
    args[1] = unsafe{voidptr(&packet)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ENetConnection) compress(mode ENetConnectionCompressionMode) {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("compress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660215187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ENetConnection) dtls_server_setup(server_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("dtls_server_setup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262296096)
    mut args := unsafe { [1]voidptr{} }
    args[0] = server_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) dtls_client_setup(hostname String, client_options TLSOptions) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("dtls_client_setup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3097527179)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&hostname)}
    args[1] = client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) refuse_new_connections(refuse bool) {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("refuse_new_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&refuse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ENetConnection) pop_statistic(statistic ENetConnectionHostStatistic) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("pop_statistic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2166904170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&statistic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ENetConnection) get_max_channels() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_channels")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ENetConnection) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) get_peers() Array {
    mut object_out := Array{}
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("get_peers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ENetConnection) socket_send(destination_address String, destination_port i32, packet PackedByteArray) {
    classname := StringName.new("ENetConnection")
    defer { classname.deinit() }
    fnname := StringName.new("socket_send")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1100646812)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&destination_address)}
    args[1] = unsafe{voidptr(&destination_port)}
    args[2] = unsafe{voidptr(&packet)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

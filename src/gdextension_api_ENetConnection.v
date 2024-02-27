module vgdextension

pub enum ENetConnectionCompressionMode as i64 {
    compress_none = 0
    compress_range_coder = 1
    compress_fastlz = 2
    compress_zlib = 3
    compress_zstd = 4
}

pub enum ENetConnectionEventType as i64 {
    event_error = -1
    event_none = 0
    event_connect = 1
    event_disconnect = 2
    event_receive = 3
}

pub enum ENetConnectionHostStatistic as i64 {
    host_total_sent_data = 0
    host_total_sent_packets = 1
    host_total_received_data = 2
    host_total_received_packets = 3
}

@[noinit]
pub struct ENetConnection {
    RefCounted
}

pub fn (mut r ENetConnection) create_host_bound(bind_address string, bind_port i32, max_peers i32, max_channels i32, in_bandwidth i32, out_bandwidth i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("create_host_bound")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1515002313)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := String.new(bind_address)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&bind_port)}
    args[2] = unsafe{voidptr(&max_peers)}
    args[3] = unsafe{voidptr(&max_channels)}
    args[4] = unsafe{voidptr(&in_bandwidth)}
    args[5] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ENetConnection) create_host(max_peers i32, max_channels i32, in_bandwidth i32, out_bandwidth i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("create_host")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 117198950)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&max_peers)}
    args[1] = unsafe{voidptr(&max_channels)}
    args[2] = unsafe{voidptr(&in_bandwidth)}
    args[3] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ENetConnection) destroy() {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("destroy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) connect_to_host(address string, port i32, channels i32, data i32) ENetPacketPeer {
    mut object_out := ENetPacketPeer{}
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("connect_to_host")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171300490)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(address)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    args[2] = unsafe{voidptr(&channels)}
    args[3] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ENetConnection) service(timeout i32) Array {
    mut object_out := Array{}
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("service")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2402345344)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ENetConnection) flush() {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("flush")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) bandwidth_limit(in_bandwidth i32, out_bandwidth i32) {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("bandwidth_limit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2302169788)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&in_bandwidth)}
    args[1] = unsafe{voidptr(&out_bandwidth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) channel_limit(limit i32) {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("channel_limit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) broadcast(channel i32, packet PackedByteArray, flags i32) {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("broadcast")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2772371345)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&channel)}
    args[1] = unsafe{voidptr(&packet)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) compress(mode ENetConnectionCompressionMode) {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("compress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2660215187)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) dtls_server_setup(server_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("dtls_server_setup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262296096)
    mut args := unsafe { [1]voidptr{} }
    args[0] = server_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ENetConnection) dtls_client_setup(hostname string, client_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("dtls_client_setup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1966198364)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(hostname)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ENetConnection) refuse_new_connections(refuse bool) {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("refuse_new_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&refuse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ENetConnection) pop_statistic(statistic ENetConnectionHostStatistic) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("pop_statistic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2166904170)
    mut args := unsafe { [1]voidptr{} }
    i64_statistic := i64(statistic)
    args[0] = unsafe{voidptr(&i64_statistic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ENetConnection) get_max_channels() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("get_max_channels")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ENetConnection) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("get_local_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ENetConnection) get_peers() Array {
    mut object_out := Array{}
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("get_peers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ENetConnection) socket_send(destination_address string, destination_port i32, packet PackedByteArray) {
    classname := StringName.new("ENetConnection")
    fnname := StringName.new("socket_send")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1100646812)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(destination_address)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&destination_port)}
    args[2] = unsafe{voidptr(&packet)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}

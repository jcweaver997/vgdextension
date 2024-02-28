module vgdextension

pub enum ENetPacketPeerPeerState as i64 {
    state_disconnected = 0
    state_connecting = 1
    state_acknowledging_connect = 2
    state_connection_pending = 3
    state_connection_succeeded = 4
    state_connected = 5
    state_disconnect_later = 6
    state_disconnecting = 7
    state_acknowledging_disconnect = 8
    state_zombie = 9
}

pub enum ENetPacketPeerPeerStatistic as i64 {
    peer_packet_loss = 0
    peer_packet_loss_variance = 1
    peer_packet_loss_epoch = 2
    peer_round_trip_time = 3
    peer_round_trip_time_variance = 4
    peer_last_round_trip_time = 5
    peer_last_round_trip_time_variance = 6
    peer_packet_throttle = 7
    peer_packet_throttle_limit = 8
    peer_packet_throttle_counter = 9
    peer_packet_throttle_epoch = 10
    peer_packet_throttle_acceleration = 11
    peer_packet_throttle_deceleration = 12
    peer_packet_throttle_interval = 13
}

@[noinit]
pub struct ENetPacketPeer {
    PacketPeer
}

pub fn (r &ENetPacketPeer) peer_disconnect(data i32) {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("peer_disconnect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) peer_disconnect_later(data i32) {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("peer_disconnect_later")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) peer_disconnect_now(data i32) {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("peer_disconnect_now")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) ping() {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("ping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) ping_interval(ping_interval i32) {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("ping_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ping_interval)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) reset() {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) send(channel i32, packet PackedByteArray, flags i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("send")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 120522849)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&channel)}
    args[1] = unsafe{voidptr(&packet)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ENetPacketPeer) throttle_configure(interval i32, acceleration i32, deceleration i32) {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("throttle_configure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&interval)}
    args[1] = unsafe{voidptr(&acceleration)}
    args[2] = unsafe{voidptr(&deceleration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) set_timeout(timeout i32, timeout_min i32, timeout_max i32) {
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("set_timeout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    args[1] = unsafe{voidptr(&timeout_min)}
    args[2] = unsafe{voidptr(&timeout_max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ENetPacketPeer) get_remote_address() string {
    mut object_out := String{}
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("get_remote_address")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ENetPacketPeer) get_remote_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("get_remote_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ENetPacketPeer) get_statistic(statistic ENetPacketPeerPeerStatistic) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("get_statistic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1642578323)
    mut args := unsafe { [1]voidptr{} }
    i64_statistic := i64(statistic)
    args[0] = unsafe{voidptr(&i64_statistic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ENetPacketPeer) get_state() ENetPacketPeerPeerState {
    mut object_out := i64(ENetPacketPeerPeerState.state_disconnected)
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711068532)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ENetPacketPeerPeerState(object_out)}
}
pub fn (r &ENetPacketPeer) get_channels() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("get_channels")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ENetPacketPeer) is_active() bool {
    mut object_out := false
    classname := StringName.new("ENetPacketPeer")
    fnname := StringName.new("is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

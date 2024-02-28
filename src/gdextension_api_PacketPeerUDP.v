module vgdextension

@[noinit]
pub struct PacketPeerUDP {
    PacketPeer
}

pub fn (r &PacketPeerUDP) bind(port i32, bind_address string, recv_buf_size i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("bind")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051239242)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    arg_sn1 := String.new(bind_address)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&recv_buf_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeerUDP) close() {
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PacketPeerUDP) wait() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("wait")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeerUDP) is_bound() bool {
    mut object_out := false
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("is_bound")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PacketPeerUDP) connect_to_host(host string, port i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("connect_to_host")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeerUDP) is_socket_connected() bool {
    mut object_out := false
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("is_socket_connected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PacketPeerUDP) get_packet_ip() string {
    mut object_out := String{}
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("get_packet_ip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &PacketPeerUDP) get_packet_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("get_packet_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PacketPeerUDP) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("get_local_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PacketPeerUDP) set_dest_address(host string, port i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("set_dest_address")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeerUDP) set_broadcast_enabled(enabled bool) {
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("set_broadcast_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PacketPeerUDP) join_multicast_group(multicast_address string, interface_name string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("join_multicast_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(multicast_address)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(interface_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeerUDP) leave_multicast_group(multicast_address string, interface_name string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeerUDP")
    fnname := StringName.new("leave_multicast_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(multicast_address)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(interface_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}

pub type PacketPeerUDP = voidptr

pub fn (mut r PacketPeerUDP) bind(port i32, bind_address String, recv_buf_size i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("bind")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290438434)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&bind_address)}
    args[2] = unsafe{voidptr(&recv_buf_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerUDP) close() {
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PacketPeerUDP) wait() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("wait")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerUDP) is_bound() bool {
    mut object_out := false
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("is_bound")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerUDP) connect_to_host(host String, port i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("connect_to_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerUDP) is_socket_connected() bool {
    mut object_out := false
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("is_socket_connected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerUDP) get_packet_ip() String {
    mut object_out := String{}
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_ip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerUDP) get_packet_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerUDP) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerUDP) set_dest_address(host String, port i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("set_dest_address")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerUDP) set_broadcast_enabled(enabled bool) {
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("set_broadcast_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PacketPeerUDP) join_multicast_group(multicast_address String, interface_name String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("join_multicast_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multicast_address)}
    args[1] = unsafe{voidptr(&interface_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerUDP) leave_multicast_group(multicast_address String, interface_name String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerUDP")
    defer { classname.deinit() }
    fnname := StringName.new("leave_multicast_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&multicast_address)}
    args[1] = unsafe{voidptr(&interface_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

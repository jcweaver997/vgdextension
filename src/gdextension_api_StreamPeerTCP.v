module vgdextension

pub enum StreamPeerTCPStatus {
    status_none = 0
    status_connecting = 1
    status_connected = 2
    status_error = 3
}

pub struct StreamPeerTCP {
    StreamPeer
}

pub fn (mut r StreamPeerTCP) bind(port i32, host String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("bind")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025329869)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&host)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerTCP) connect_to_host(host String, port i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("connect_to_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 993915709)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerTCP) poll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerTCP) get_status() StreamPeerTCPStatus {
    mut object_out := StreamPeerTCPStatus.status_none
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("get_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 859471121)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerTCP) get_connected_host() String {
    mut object_out := String{}
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("get_connected_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerTCP) get_connected_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("get_connected_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerTCP) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerTCP) disconnect_from_host() {
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_from_host")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeerTCP) set_no_delay(enabled bool) {
    classname := StringName.new("StreamPeerTCP")
    defer { classname.deinit() }
    fnname := StringName.new("set_no_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

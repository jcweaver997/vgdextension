module vgdextension

@[noinit]
pub struct UDPServer {
    RefCounted
}

pub fn (mut r UDPServer) listen(port u16, bind_address String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("listen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025329869)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&bind_address)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r UDPServer) poll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UDPServer) is_connection_available() bool {
    mut object_out := false
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_connection_available")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UDPServer) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UDPServer) is_listening() bool {
    mut object_out := false
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_listening")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UDPServer) take_connection() PacketPeerUDP {
    mut object_out := PacketPeerUDP{}
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("take_connection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 808734560)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UDPServer) stop() {
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r UDPServer) set_max_pending_connections(max_pending_connections i32) {
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_pending_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_pending_connections)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &UDPServer) get_max_pending_connections() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UDPServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_pending_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

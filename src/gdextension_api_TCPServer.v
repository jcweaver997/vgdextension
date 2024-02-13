module vgdextension

@[noinit]
pub struct TCPServer {
    RefCounted
}

pub fn (mut r TCPServer) listen(port u16, bind_address String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("TCPServer")
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
pub fn (r &TCPServer) is_connection_available() bool {
    mut object_out := false
    classname := StringName.new("TCPServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_connection_available")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TCPServer) is_listening() bool {
    mut object_out := false
    classname := StringName.new("TCPServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_listening")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TCPServer) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TCPServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TCPServer) take_connection() StreamPeerTCP {
    mut object_out := StreamPeerTCP{}
    classname := StringName.new("TCPServer")
    defer { classname.deinit() }
    fnname := StringName.new("take_connection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30545006)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TCPServer) stop() {
    classname := StringName.new("TCPServer")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

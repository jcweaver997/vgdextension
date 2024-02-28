module vgdextension

@[noinit]
pub struct TCPServer {
    RefCounted
}

pub fn (r &TCPServer) listen(port u16, bind_address string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("TCPServer")
    fnname := StringName.new("listen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3167955072)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    arg_sn1 := String.new(bind_address)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &TCPServer) is_connection_available() bool {
    mut object_out := false
    classname := StringName.new("TCPServer")
    fnname := StringName.new("is_connection_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TCPServer) is_listening() bool {
    mut object_out := false
    classname := StringName.new("TCPServer")
    fnname := StringName.new("is_listening")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TCPServer) get_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TCPServer")
    fnname := StringName.new("get_local_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TCPServer) take_connection() StreamPeerTCP {
    mut object_out := StreamPeerTCP{}
    classname := StringName.new("TCPServer")
    fnname := StringName.new("take_connection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30545006)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TCPServer) stop() {
    classname := StringName.new("TCPServer")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

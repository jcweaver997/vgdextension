module vgdextension

@[noinit]
pub struct PacketPeerStream {
    PacketPeer
}

pub fn (mut r PacketPeerStream) set_stream_peer(peer StreamPeer) {
    classname := StringName.new("PacketPeerStream")
    defer { classname.deinit() }
    fnname := StringName.new("set_stream_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3281897016)
    mut args := unsafe { [1]voidptr{} }
    args[0] = peer.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PacketPeerStream) get_stream_peer() StreamPeer {
    mut object_out := StreamPeer{}
    classname := StringName.new("PacketPeerStream")
    defer { classname.deinit() }
    fnname := StringName.new("get_stream_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741655269)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PacketPeerStream) set_input_buffer_max_size(max_size_bytes i32) {
    classname := StringName.new("PacketPeerStream")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_buffer_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_size_bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PacketPeerStream) set_output_buffer_max_size(max_size_bytes i32) {
    classname := StringName.new("PacketPeerStream")
    defer { classname.deinit() }
    fnname := StringName.new("set_output_buffer_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_size_bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PacketPeerStream) get_input_buffer_max_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerStream")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_buffer_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PacketPeerStream) get_output_buffer_max_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerStream")
    defer { classname.deinit() }
    fnname := StringName.new("get_output_buffer_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

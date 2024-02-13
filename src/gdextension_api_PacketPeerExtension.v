module vgdextension

@[noinit]
pub struct PacketPeerExtension {
    PacketPeer
}

pub interface IPacketPeerExtensionGetPacket {
    mut:
    virt_get_packet(r_buffer &&u8 , r_buffer_size &i32) GDError
}

pub fn (mut r PacketPeerExtension) uget_packet(r_buffer &&u8 , r_buffer_size &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPacketPeerExtensionPutPacket {
    mut:
    virt_put_packet(p_buffer &u8, p_buffer_size i32) GDError
}

pub fn (mut r PacketPeerExtension) uput_packet(p_buffer &u8, p_buffer_size i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PacketPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_put_packet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_buffer)}
    args[1] = unsafe{voidptr(&p_buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPacketPeerExtensionGetAvailablePacketCount {
    mut:
    virt_get_available_packet_count() i32
}

pub fn (r &PacketPeerExtension) uget_available_packet_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_available_packet_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPacketPeerExtensionGetMaxPacketSize {
    mut:
    virt_get_max_packet_size() i32
}

pub fn (r &PacketPeerExtension) uget_max_packet_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_max_packet_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

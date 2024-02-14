module vgdextension

@[noinit]
pub struct PacketPeer {
    RefCounted
}

pub fn (mut r PacketPeer) get_var(allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("get_var")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3442865206)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PacketPeer) put_var(var Variant, full_objects bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("put_var")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436251611)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&var)}
    args[1] = unsafe{voidptr(&full_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r PacketPeer) get_packet() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("get_packet")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PacketPeer) put_packet(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("put_packet")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeer) get_packet_error() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("get_packet_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3185525595)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PacketPeer) get_available_packet_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("get_available_packet_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PacketPeer) get_encode_buffer_max_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("get_encode_buffer_max_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PacketPeer) set_encode_buffer_max_size(max_size i32) {
    classname := StringName.new("PacketPeer")
    fnname := StringName.new("set_encode_buffer_max_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

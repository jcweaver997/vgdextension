module vgdextension

pub struct StreamPeerBuffer {
    StreamPeer
}

pub fn (mut r StreamPeerBuffer) seek(position i32) {
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StreamPeerBuffer) get_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerBuffer) get_position() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerBuffer) resize(size i32) {
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r StreamPeerBuffer) set_data_array(data PackedByteArray) {
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("set_data_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StreamPeerBuffer) get_data_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("get_data_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerBuffer) clear() {
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &StreamPeerBuffer) duplicate() StreamPeerBuffer {
    mut object_out := StreamPeerBuffer{}
    classname := StringName.new("StreamPeerBuffer")
    defer { classname.deinit() }
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2474064677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

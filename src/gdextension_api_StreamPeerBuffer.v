module vgdextension

@[noinit]
pub struct StreamPeerBuffer {
    StreamPeer
}

pub fn (r &StreamPeerBuffer) seek(position i32) {
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StreamPeerBuffer) get_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StreamPeerBuffer) get_position() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StreamPeerBuffer) resize(size i32) {
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("resize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StreamPeerBuffer) set_data_array(data PackedByteArray) {
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("set_data_array")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StreamPeerBuffer) get_data_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("get_data_array")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StreamPeerBuffer) clear() {
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StreamPeerBuffer) duplicate() StreamPeerBuffer {
    mut object_out := StreamPeerBuffer{}
    classname := StringName.new("StreamPeerBuffer")
    fnname := StringName.new("duplicate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2474064677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

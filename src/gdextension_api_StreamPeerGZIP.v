module vgdextension

@[noinit]
pub struct StreamPeerGZIP {
    StreamPeer
}

pub fn (r &StreamPeerGZIP) start_compression(use_deflate bool, buffer_size i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerGZIP")
    fnname := StringName.new("start_compression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 781582770)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&use_deflate)}
    args[1] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &StreamPeerGZIP) start_decompression(use_deflate bool, buffer_size i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerGZIP")
    fnname := StringName.new("start_decompression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 781582770)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&use_deflate)}
    args[1] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &StreamPeerGZIP) finish() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerGZIP")
    fnname := StringName.new("finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &StreamPeerGZIP) clear() {
    classname := StringName.new("StreamPeerGZIP")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

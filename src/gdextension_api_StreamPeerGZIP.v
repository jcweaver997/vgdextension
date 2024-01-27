pub type StreamPeerGZIP = voidptr

pub fn (mut r StreamPeerGZIP) start_compression(use_deflate bool, buffer_size i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerGZIP")
    defer { classname.deinit() }
    fnname := StringName.new("start_compression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 781582770)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&use_deflate)}
    args[1] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerGZIP) start_decompression(use_deflate bool, buffer_size i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerGZIP")
    defer { classname.deinit() }
    fnname := StringName.new("start_decompression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 781582770)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&use_deflate)}
    args[1] = unsafe{voidptr(&buffer_size)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerGZIP) finish() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerGZIP")
    defer { classname.deinit() }
    fnname := StringName.new("finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerGZIP) clear() {
    classname := StringName.new("StreamPeerGZIP")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

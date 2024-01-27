pub type StreamPeerExtension = voidptr

pub fn (mut r StreamPeerExtension) uget_data(r_buffer &u8, r_bytes i32, r_received &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_bytes)}
    args[2] = unsafe{voidptr(&r_received)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerExtension) uget_partial_data(r_buffer &u8, r_bytes i32, r_received &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_partial_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_bytes)}
    args[2] = unsafe{voidptr(&r_received)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerExtension) uput_data(p_data &u8, p_bytes i32, r_sent &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_put_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&p_data)}
    args[1] = unsafe{voidptr(&p_bytes)}
    args[2] = unsafe{voidptr(&r_sent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeerExtension) uput_partial_data(p_data &u8, p_bytes i32, r_sent &i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_put_partial_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&p_data)}
    args[1] = unsafe{voidptr(&p_bytes)}
    args[2] = unsafe{voidptr(&r_sent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeerExtension) uget_available_bytes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_available_bytes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

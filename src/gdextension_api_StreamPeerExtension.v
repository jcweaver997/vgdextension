module vgdextension

@[noinit]
pub struct StreamPeerExtension {
    StreamPeer
}

pub interface IStreamPeerExtensionGetData {
    mut:
    virt_get_data(r_buffer &u8, r_bytes i32, r_received &i32) GDError
}

pub fn (r &StreamPeerExtension) uget_data(r_buffer &u8, r_bytes i32, r_received &i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerExtension")
    fnname := StringName.new("_get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_bytes)}
    args[2] = unsafe{voidptr(&r_received)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IStreamPeerExtensionGetPartialData {
    mut:
    virt_get_partial_data(r_buffer &u8, r_bytes i32, r_received &i32) GDError
}

pub fn (r &StreamPeerExtension) uget_partial_data(r_buffer &u8, r_bytes i32, r_received &i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerExtension")
    fnname := StringName.new("_get_partial_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&r_buffer)}
    args[1] = unsafe{voidptr(&r_bytes)}
    args[2] = unsafe{voidptr(&r_received)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IStreamPeerExtensionPutData {
    mut:
    virt_put_data(p_data &u8, p_bytes i32, r_sent &i32) GDError
}

pub fn (r &StreamPeerExtension) uput_data(p_data &u8, p_bytes i32, r_sent &i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerExtension")
    fnname := StringName.new("_put_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&p_data)}
    args[1] = unsafe{voidptr(&p_bytes)}
    args[2] = unsafe{voidptr(&r_sent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IStreamPeerExtensionPutPartialData {
    mut:
    virt_put_partial_data(p_data &u8, p_bytes i32, r_sent &i32) GDError
}

pub fn (r &StreamPeerExtension) uput_partial_data(p_data &u8, p_bytes i32, r_sent &i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeerExtension")
    fnname := StringName.new("_put_partial_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&p_data)}
    args[1] = unsafe{voidptr(&p_bytes)}
    args[2] = unsafe{voidptr(&r_sent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IStreamPeerExtensionGetAvailableBytes {
    mut:
    virt_get_available_bytes() i32
}

pub fn (r &StreamPeerExtension) uget_available_bytes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeerExtension")
    fnname := StringName.new("_get_available_bytes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

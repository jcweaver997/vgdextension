module vgdextension

pub enum CameraServerFeedImage {
    feed_rgba_image = 0
    feed_cbcr_image = 1
}

@[noinit]
pub struct CameraServer {
    Object
}

pub fn CameraServer.get_singleton() CameraServer {
    sn := StringName.new("CameraServer")
    defer {sn.deinit()}
    o := CameraServer{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r CameraServer) get_feed(index i32) CameraFeed {
    mut object_out := CameraFeed{}
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 361927068)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraServer) get_feed_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_feed_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraServer) feeds() Array {
    mut object_out := Array{}
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("feeds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraServer) add_feed(feed CameraFeed) {
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("add_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3204782488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = feed.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r CameraServer) remove_feed(feed CameraFeed) {
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3204782488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = feed.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

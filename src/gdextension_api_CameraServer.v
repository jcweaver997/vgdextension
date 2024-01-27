module vgdextension

pub enum CameraServerFeedImage {
    feed_rgba_image = 0
    feed_cbcr_image = 1
}

pub type CameraServer = voidptr

pub fn (mut r CameraServer) get_feed(index i32) CameraFeed {
    mut object_out := CameraFeed(unsafe{nil})
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 361927068)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraServer) get_feed_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_feed_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraServer) feeds() Array {
    mut object_out := Array{}
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("feeds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraServer) add_feed(feed CameraFeed) {
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("add_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3204782488)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CameraServer) remove_feed(feed CameraFeed) {
    classname := StringName.new("CameraServer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3204782488)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

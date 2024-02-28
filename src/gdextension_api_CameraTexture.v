module vgdextension

@[noinit]
pub struct CameraTexture {
    Texture2D
}

pub fn (r &CameraTexture) set_camera_feed_id(feed_id i32) {
    classname := StringName.new("CameraTexture")
    fnname := StringName.new("set_camera_feed_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feed_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CameraTexture) get_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CameraTexture")
    fnname := StringName.new("get_camera_feed_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CameraTexture) set_which_feed(which_feed CameraServerFeedImage) {
    classname := StringName.new("CameraTexture")
    fnname := StringName.new("set_which_feed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1595299230)
    mut args := unsafe { [1]voidptr{} }
    i64_which_feed := i64(which_feed)
    args[0] = unsafe{voidptr(&i64_which_feed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CameraTexture) get_which_feed() CameraServerFeedImage {
    mut object_out := i64(CameraServerFeedImage.feed_rgba_image)
    classname := StringName.new("CameraTexture")
    fnname := StringName.new("get_which_feed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 91039457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CameraServerFeedImage(object_out)}
}
pub fn (r &CameraTexture) set_camera_active(active bool) {
    classname := StringName.new("CameraTexture")
    fnname := StringName.new("set_camera_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CameraTexture) get_camera_active() bool {
    mut object_out := false
    classname := StringName.new("CameraTexture")
    fnname := StringName.new("get_camera_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

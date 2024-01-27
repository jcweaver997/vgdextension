module vgdextension

pub type CameraTexture = voidptr

pub fn (mut r CameraTexture) set_camera_feed_id(feed_id i32) {
    classname := StringName.new("CameraTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_feed_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraTexture) get_camera_feed_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CameraTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_feed_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraTexture) set_which_feed(which_feed CameraServerFeedImage) {
    classname := StringName.new("CameraTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_which_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1595299230)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraTexture) get_which_feed() CameraServerFeedImage {
    mut object_out := CameraServerFeedImage.feed_rgba_image
    classname := StringName.new("CameraTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_which_feed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 91039457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraTexture) set_camera_active(active bool) {
    classname := StringName.new("CameraTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraTexture) get_camera_active() bool {
    mut object_out := false
    classname := StringName.new("CameraTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

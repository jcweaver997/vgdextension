pub enum CameraFeedFeedDataType {
    feed_noimage = 0
    feed_rgb = 1
    feed_ycbcr = 2
    feed_ycbcr_sep = 3
}

pub enum CameraFeedFeedPosition {
    feed_unspecified = 0
    feed_front = 1
    feed_back = 2
}

pub type CameraFeed = voidptr

pub fn (r &CameraFeed) get_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("get_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CameraFeed) is_active() bool {
    mut object_out := false
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraFeed) set_active(active bool) {
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraFeed) get_name() String {
    mut object_out := String{}
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CameraFeed) get_position() CameraFeedFeedPosition {
    mut object_out := CameraFeedFeedPosition.feed_unspecified
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2711679033)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CameraFeed) get_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraFeed) set_transform(transform Transform2D) {
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraFeed) get_datatype() CameraFeedFeedDataType {
    mut object_out := CameraFeedFeedDataType.feed_noimage
    classname := StringName.new("CameraFeed")
    defer { classname.deinit() }
    fnname := StringName.new("get_datatype")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1477782850)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

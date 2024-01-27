pub type ConvexPolygonShape2D = voidptr

pub fn (mut r ConvexPolygonShape2D) set_point_cloud(point_cloud PackedVector2Array) {
    classname := StringName.new("ConvexPolygonShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_cloud")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ConvexPolygonShape2D) set_points(points PackedVector2Array) {
    classname := StringName.new("ConvexPolygonShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ConvexPolygonShape2D) get_points() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("ConvexPolygonShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

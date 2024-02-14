module vgdextension

@[noinit]
pub struct ConvexPolygonShape2D {
    Shape2D
}

pub fn (mut r ConvexPolygonShape2D) set_point_cloud(point_cloud PackedVector2Array) {
    classname := StringName.new("ConvexPolygonShape2D")
    fnname := StringName.new("set_point_cloud")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_cloud)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ConvexPolygonShape2D) set_points(points PackedVector2Array) {
    classname := StringName.new("ConvexPolygonShape2D")
    fnname := StringName.new("set_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConvexPolygonShape2D) get_points() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("ConvexPolygonShape2D")
    fnname := StringName.new("get_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

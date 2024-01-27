pub type ConvexPolygonShape3D = voidptr

pub fn (mut r ConvexPolygonShape3D) set_points(points PackedVector3Array) {
    classname := StringName.new("ConvexPolygonShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ConvexPolygonShape3D) get_points() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("ConvexPolygonShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

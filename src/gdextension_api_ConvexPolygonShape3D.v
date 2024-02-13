module vgdextension

@[noinit]
pub struct ConvexPolygonShape3D {
    Shape3D
}

pub fn (mut r ConvexPolygonShape3D) set_points(points PackedVector3Array) {
    classname := StringName.new("ConvexPolygonShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ConvexPolygonShape3D) get_points() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("ConvexPolygonShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

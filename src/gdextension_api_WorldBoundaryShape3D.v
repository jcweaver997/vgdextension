module vgdextension

pub struct WorldBoundaryShape3D {
    Shape3D
}

pub fn (mut r WorldBoundaryShape3D) set_plane(plane Plane) {
    classname := StringName.new("WorldBoundaryShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_plane")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&plane)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &WorldBoundaryShape3D) get_plane() Plane {
    mut object_out := Plane{}
    classname := StringName.new("WorldBoundaryShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_plane")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753500971)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

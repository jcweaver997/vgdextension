module vgdextension

@[noinit]
pub struct WorldBoundaryShape3D {
    Shape3D
}

pub fn (mut r WorldBoundaryShape3D) set_plane(plane Plane) {
    classname := StringName.new("WorldBoundaryShape3D")
    fnname := StringName.new("set_plane")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&plane)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WorldBoundaryShape3D) get_plane() Plane {
    mut object_out := Plane{}
    classname := StringName.new("WorldBoundaryShape3D")
    fnname := StringName.new("get_plane")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753500971)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

@[noinit]
pub struct XRAnchor3D {
    XRNode3D
}

pub fn (r &XRAnchor3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("XRAnchor3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XRAnchor3D) get_plane() Plane {
    mut object_out := Plane{}
    classname := StringName.new("XRAnchor3D")
    fnname := StringName.new("get_plane")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753500971)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

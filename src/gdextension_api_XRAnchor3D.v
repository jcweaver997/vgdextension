module vgdextension

pub type XRAnchor3D = voidptr

pub fn (r &XRAnchor3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("XRAnchor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRAnchor3D) get_plane() Plane {
    mut object_out := Plane{}
    classname := StringName.new("XRAnchor3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_plane")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2753500971)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

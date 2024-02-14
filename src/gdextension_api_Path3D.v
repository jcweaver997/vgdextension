module vgdextension

@[noinit]
pub struct Path3D {
    Node3D
}

pub fn (mut r Path3D) set_curve(curve Curve3D) {
    classname := StringName.new("Path3D")
    fnname := StringName.new("set_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408955118)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Path3D) get_curve() Curve3D {
    mut object_out := Curve3D{}
    classname := StringName.new("Path3D")
    fnname := StringName.new("get_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4244715212)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

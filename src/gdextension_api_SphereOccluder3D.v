module vgdextension

@[noinit]
pub struct SphereOccluder3D {
    Occluder3D
}

pub fn (mut r SphereOccluder3D) set_radius(radius f64) {
    classname := StringName.new("SphereOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SphereOccluder3D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SphereOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

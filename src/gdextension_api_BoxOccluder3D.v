module vgdextension

@[noinit]
pub struct BoxOccluder3D {
    Occluder3D
}

pub fn (mut r BoxOccluder3D) set_size(size Vector3) {
    classname := StringName.new("BoxOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxOccluder3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BoxOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

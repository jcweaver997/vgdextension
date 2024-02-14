module vgdextension

@[noinit]
pub struct BoxShape3D {
    Shape3D
}

pub fn (mut r BoxShape3D) set_size(size Vector3) {
    classname := StringName.new("BoxShape3D")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoxShape3D) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BoxShape3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

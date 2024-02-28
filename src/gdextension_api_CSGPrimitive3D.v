module vgdextension

@[noinit]
pub struct CSGPrimitive3D {
    CSGShape3D
}

pub fn (r &CSGPrimitive3D) set_flip_faces(flip_faces bool) {
    classname := StringName.new("CSGPrimitive3D")
    fnname := StringName.new("set_flip_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_faces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPrimitive3D) get_flip_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGPrimitive3D")
    fnname := StringName.new("get_flip_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

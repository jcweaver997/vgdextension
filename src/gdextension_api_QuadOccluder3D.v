module vgdextension

@[noinit]
pub struct QuadOccluder3D {
    Occluder3D
}

pub fn (mut r QuadOccluder3D) set_size(size Vector2) {
    classname := StringName.new("QuadOccluder3D")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &QuadOccluder3D) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("QuadOccluder3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

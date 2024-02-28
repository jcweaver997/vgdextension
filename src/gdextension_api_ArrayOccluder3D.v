module vgdextension

@[noinit]
pub struct ArrayOccluder3D {
    Occluder3D
}

pub fn (r &ArrayOccluder3D) set_arrays(vertices PackedVector3Array, indices PackedInt32Array) {
    classname := StringName.new("ArrayOccluder3D")
    fnname := StringName.new("set_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3233972621)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertices)}
    args[1] = unsafe{voidptr(&indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ArrayOccluder3D) set_vertices(vertices PackedVector3Array) {
    classname := StringName.new("ArrayOccluder3D")
    fnname := StringName.new("set_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ArrayOccluder3D) set_indices(indices PackedInt32Array) {
    classname := StringName.new("ArrayOccluder3D")
    fnname := StringName.new("set_indices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

module vgdextension

pub type ArrayOccluder3D = voidptr

pub fn (mut r ArrayOccluder3D) set_arrays(vertices PackedVector3Array, indices PackedInt32Array) {
    classname := StringName.new("ArrayOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3233972621)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ArrayOccluder3D) set_vertices(vertices PackedVector3Array) {
    classname := StringName.new("ArrayOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ArrayOccluder3D) set_indices(indices PackedInt32Array) {
    classname := StringName.new("ArrayOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

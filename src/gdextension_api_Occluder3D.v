module vgdextension

pub struct Occluder3D {
    Resource
}

pub fn (r &Occluder3D) get_vertices() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Occluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Occluder3D) get_indices() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Occluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

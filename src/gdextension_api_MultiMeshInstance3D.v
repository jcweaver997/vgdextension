module vgdextension

@[noinit]
pub struct MultiMeshInstance3D {
    GeometryInstance3D
}

pub fn (mut r MultiMeshInstance3D) set_multimesh(multimesh MultiMesh) {
    classname := StringName.new("MultiMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2246127404)
    mut args := unsafe { [1]voidptr{} }
    args[0] = multimesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiMeshInstance3D) get_multimesh() MultiMesh {
    mut object_out := MultiMesh{}
    classname := StringName.new("MultiMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385450523)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

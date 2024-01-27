pub type MultiMeshInstance3D = voidptr

pub fn (mut r MultiMeshInstance3D) set_multimesh(multimesh MultiMesh) {
    classname := StringName.new("MultiMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2246127404)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMeshInstance3D) get_multimesh() MultiMesh {
    mut object_out := MultiMesh(unsafe{nil})
    classname := StringName.new("MultiMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385450523)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

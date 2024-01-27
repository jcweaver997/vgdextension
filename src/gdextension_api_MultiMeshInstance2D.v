pub type MultiMeshInstance2D = voidptr

pub fn (mut r MultiMeshInstance2D) set_multimesh(multimesh MultiMesh) {
    classname := StringName.new("MultiMeshInstance2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2246127404)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMeshInstance2D) get_multimesh() MultiMesh {
    mut object_out := MultiMesh(unsafe{nil})
    classname := StringName.new("MultiMeshInstance2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_multimesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385450523)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMeshInstance2D) set_texture(texture Texture2D) {
    classname := StringName.new("MultiMeshInstance2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMeshInstance2D) get_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("MultiMeshInstance2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

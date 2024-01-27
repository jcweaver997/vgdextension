module vgdextension

pub type ImporterMeshInstance3D = voidptr

pub fn (mut r ImporterMeshInstance3D) set_mesh(mesh ImporterMesh) {
    classname := StringName.new("ImporterMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ImporterMeshInstance3D) get_mesh() ImporterMesh {
    mut object_out := ImporterMesh(unsafe{nil})
    classname := StringName.new("ImporterMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161779525)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_skin(skin Skin) {
    classname := StringName.new("ImporterMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ImporterMeshInstance3D) get_skin() Skin {
    mut object_out := Skin(unsafe{nil})
    classname := StringName.new("ImporterMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMeshInstance3D) set_skeleton_path(skeleton_path NodePath) {
    classname := StringName.new("ImporterMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skeleton_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ImporterMeshInstance3D) get_skeleton_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("ImporterMeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

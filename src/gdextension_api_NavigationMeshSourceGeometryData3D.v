module vgdextension

pub type NavigationMeshSourceGeometryData3D = voidptr

pub fn (mut r NavigationMeshSourceGeometryData3D) set_vertices(vertices PackedFloat32Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMeshSourceGeometryData3D) get_vertices() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData3D) set_indices(indices PackedInt32Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationMeshSourceGeometryData3D) get_indices() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData3D) clear() {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMeshSourceGeometryData3D) has_data() bool {
    mut object_out := false
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData3D) add_mesh(mesh Mesh, xform Transform3D) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 975462459)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMeshSourceGeometryData3D) add_mesh_array(mesh_array Array, xform Transform3D) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_mesh_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235710913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMeshSourceGeometryData3D) add_faces(faces PackedVector3Array, xform Transform3D) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440358797)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

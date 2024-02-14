module vgdextension

@[noinit]
pub struct NavigationMeshSourceGeometryData3D {
    Resource
}

pub fn (mut r NavigationMeshSourceGeometryData3D) set_vertices(vertices PackedFloat32Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("set_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshSourceGeometryData3D) get_vertices() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("get_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData3D) set_indices(indices PackedInt32Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("set_indices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshSourceGeometryData3D) get_indices() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("get_indices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData3D) clear() {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NavigationMeshSourceGeometryData3D) has_data() bool {
    mut object_out := false
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("has_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData3D) add_mesh(mesh Mesh, xform Transform3D) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("add_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 975462459)
    mut args := unsafe { [2]voidptr{} }
    args[0] = mesh.ptr
    args[1] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NavigationMeshSourceGeometryData3D) add_mesh_array(mesh_array Array, xform Transform3D) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("add_mesh_array")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235710913)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mesh_array)}
    args[1] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NavigationMeshSourceGeometryData3D) add_faces(faces PackedVector3Array, xform Transform3D) {
    classname := StringName.new("NavigationMeshSourceGeometryData3D")
    fnname := StringName.new("add_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440358797)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&faces)}
    args[1] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

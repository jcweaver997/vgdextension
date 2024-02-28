module vgdextension

@[noinit]
pub struct NavigationMeshGenerator {
    Object
}

pub fn NavigationMeshGenerator.get_singleton() NavigationMeshGenerator {
    sn := StringName.new("NavigationMeshGenerator")
    o := NavigationMeshGenerator{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &NavigationMeshGenerator) bake(navigation_mesh NavigationMesh, root_node Node) {
    classname := StringName.new("NavigationMeshGenerator")
    fnname := StringName.new("bake")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1401173477)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&navigation_mesh.ptr)
    args[1] = voidptr(&root_node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshGenerator) clear(navigation_mesh NavigationMesh) {
    classname := StringName.new("NavigationMeshGenerator")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2923361153)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&navigation_mesh.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshGenerator) parse_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, root_node Node, callback Callable) {
    classname := StringName.new("NavigationMeshGenerator")
    fnname := StringName.new("parse_source_geometry_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 685862123)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&navigation_mesh.ptr)
    args[1] = voidptr(&source_geometry_data.ptr)
    args[2] = voidptr(&root_node.ptr)
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshGenerator) bake_from_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, callback Callable) {
    classname := StringName.new("NavigationMeshGenerator")
    fnname := StringName.new("bake_from_source_geometry_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2469318639)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&navigation_mesh.ptr)
    args[1] = voidptr(&source_geometry_data.ptr)
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

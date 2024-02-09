module vgdextension

pub struct NavigationMeshGenerator {
    Object
}

pub fn NavigationMeshGenerator.get_singleton() NavigationMeshGenerator {
    sn := StringName.new("NavigationMeshGenerator")
    defer {sn.deinit()}
    o := NavigationMeshGenerator{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r NavigationMeshGenerator) bake(navigation_mesh NavigationMesh, root_node Node) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("bake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1401173477)
    mut args := unsafe { [2]voidptr{} }
    args[0] = navigation_mesh.ptr
    args[1] = root_node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NavigationMeshGenerator) clear(navigation_mesh NavigationMesh) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2923361153)
    mut args := unsafe { [1]voidptr{} }
    args[0] = navigation_mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NavigationMeshGenerator) parse_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, root_node Node, callback Callable) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("parse_source_geometry_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3703028813)
    mut args := unsafe { [4]voidptr{} }
    args[0] = navigation_mesh.ptr
    args[1] = source_geometry_data.ptr
    args[2] = root_node.ptr
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r NavigationMeshGenerator) bake_from_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, callback Callable) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("bake_from_source_geometry_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3669016597)
    mut args := unsafe { [3]voidptr{} }
    args[0] = navigation_mesh.ptr
    args[1] = source_geometry_data.ptr
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

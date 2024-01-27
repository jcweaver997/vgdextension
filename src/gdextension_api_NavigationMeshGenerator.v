module vgdextension

pub type NavigationMeshGenerator = voidptr

pub fn (mut r NavigationMeshGenerator) bake(navigation_mesh NavigationMesh, root_node Node) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("bake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1401173477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMeshGenerator) clear(navigation_mesh NavigationMesh) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2923361153)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMeshGenerator) parse_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, root_node Node, callback Callable) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("parse_source_geometry_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3703028813)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationMeshGenerator) bake_from_source_geometry_data(navigation_mesh NavigationMesh, source_geometry_data NavigationMeshSourceGeometryData3D, callback Callable) {
    classname := StringName.new("NavigationMeshGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("bake_from_source_geometry_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3669016597)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

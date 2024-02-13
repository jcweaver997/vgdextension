module vgdextension

pub enum NavigationPathQueryParameters2DPathfindingAlgorithm {
    pathfinding_algorithm_astar = 0
}

pub enum NavigationPathQueryParameters2DPathPostProcessing {
    path_postprocessing_corridorfunnel = 0
    path_postprocessing_edgecentered = 1
}

pub enum NavigationPathQueryParameters2DPathMetadataFlags {
    path_metadata_include_none = 0
    path_metadata_include_types = 1
    path_metadata_include_rids = 2
    path_metadata_include_owners = 4
    path_metadata_include_all = 7
}

@[noinit]
pub struct NavigationPathQueryParameters2D {
    RefCounted
}

pub fn (mut r NavigationPathQueryParameters2D) set_pathfinding_algorithm(pathfinding_algorithm NavigationPathQueryParameters2DPathfindingAlgorithm) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pathfinding_algorithm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783519915)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pathfinding_algorithm)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_pathfinding_algorithm() NavigationPathQueryParameters2DPathfindingAlgorithm {
    mut object_out := NavigationPathQueryParameters2DPathfindingAlgorithm.pathfinding_algorithm_astar
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pathfinding_algorithm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3000421146)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryParameters2D) set_path_postprocessing(path_postprocessing NavigationPathQueryParameters2DPathPostProcessing) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_postprocessing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2864409082)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path_postprocessing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_path_postprocessing() NavigationPathQueryParameters2DPathPostProcessing {
    mut object_out := NavigationPathQueryParameters2DPathPostProcessing.path_postprocessing_corridorfunnel
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_postprocessing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3798118993)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryParameters2D) set_map(mape RID) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryParameters2D) set_start_position(start_position Vector2) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&start_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_start_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryParameters2D) set_target_position(target_position Vector2) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&target_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_target_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryParameters2D) set_navigation_layers(navigation_layers u32) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_navigation_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryParameters2D) set_metadata_flags(flags NavigationPathQueryParameters2DPathMetadataFlags) {
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_metadata_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 24274129)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &NavigationPathQueryParameters2D) get_metadata_flags() NavigationPathQueryParameters2DPathMetadataFlags {
    mut object_out := NavigationPathQueryParameters2DPathMetadataFlags.path_metadata_include_none
    classname := StringName.new("NavigationPathQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_metadata_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 488152976)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

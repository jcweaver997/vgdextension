module vgdextension

pub enum NavigationPathQueryParameters3DPathfindingAlgorithm as i64 {
    pathfinding_algorithm_astar = 0
}

pub enum NavigationPathQueryParameters3DPathPostProcessing as i64 {
    path_postprocessing_corridorfunnel = 0
    path_postprocessing_edgecentered = 1
}

pub enum NavigationPathQueryParameters3DPathMetadataFlags as i64 {
    path_metadata_include_none = 0
    path_metadata_include_types = 1
    path_metadata_include_rids = 2
    path_metadata_include_owners = 4
    path_metadata_include_all = 7
}

@[noinit]
pub struct NavigationPathQueryParameters3D {
    RefCounted
}

pub fn (r &NavigationPathQueryParameters3D) set_pathfinding_algorithm(pathfinding_algorithm NavigationPathQueryParameters3DPathfindingAlgorithm) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_pathfinding_algorithm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 394560454)
    mut args := unsafe { [1]voidptr{} }
    i64_pathfinding_algorithm := i64(pathfinding_algorithm)
    args[0] = unsafe{voidptr(&i64_pathfinding_algorithm)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_pathfinding_algorithm() NavigationPathQueryParameters3DPathfindingAlgorithm {
    mut object_out := i64(NavigationPathQueryParameters3DPathfindingAlgorithm.pathfinding_algorithm_astar)
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_pathfinding_algorithm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3398491350)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPathQueryParameters3DPathfindingAlgorithm(object_out)}
}
pub fn (r &NavigationPathQueryParameters3D) set_path_postprocessing(path_postprocessing NavigationPathQueryParameters3DPathPostProcessing) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_path_postprocessing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2267362344)
    mut args := unsafe { [1]voidptr{} }
    i64_path_postprocessing := i64(path_postprocessing)
    args[0] = unsafe{voidptr(&i64_path_postprocessing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_path_postprocessing() NavigationPathQueryParameters3DPathPostProcessing {
    mut object_out := i64(NavigationPathQueryParameters3DPathPostProcessing.path_postprocessing_corridorfunnel)
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_path_postprocessing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3883858360)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPathQueryParameters3DPathPostProcessing(object_out)}
}
pub fn (r &NavigationPathQueryParameters3D) set_map(mape RID) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_map() RID {
    mut object_out := RID{}
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryParameters3D) set_start_position(start_position Vector3) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&start_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_start_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryParameters3D) set_target_position(target_position Vector3) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&target_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_target_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_target_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryParameters3D) set_navigation_layers(navigation_layers u32) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_navigation_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_navigation_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryParameters3D) set_metadata_flags(flags NavigationPathQueryParameters3DPathMetadataFlags) {
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("set_metadata_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2713846708)
    mut args := unsafe { [1]voidptr{} }
    i64_flags := i64(flags)
    args[0] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryParameters3D) get_metadata_flags() NavigationPathQueryParameters3DPathMetadataFlags {
    mut object_out := i64(NavigationPathQueryParameters3DPathMetadataFlags.path_metadata_include_none)
    classname := StringName.new("NavigationPathQueryParameters3D")
    fnname := StringName.new("get_metadata_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1582332802)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPathQueryParameters3DPathMetadataFlags(object_out)}
}

module vgdextension

pub enum MeshConvexDecompositionSettingsMode {
    convex_decomposition_mode_voxel = 0
    convex_decomposition_mode_tetrahedron = 1
}

pub struct MeshConvexDecompositionSettings {
    RefCounted
}

pub fn (mut r MeshConvexDecompositionSettings) set_max_concavity(max_concavity f64) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_concavity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_concavity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_max_concavity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_concavity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_symmetry_planes_clipping_bias(symmetry_planes_clipping_bias f64) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_symmetry_planes_clipping_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&symmetry_planes_clipping_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_symmetry_planes_clipping_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_symmetry_planes_clipping_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_revolution_axes_clipping_bias(revolution_axes_clipping_bias f64) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_revolution_axes_clipping_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&revolution_axes_clipping_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_revolution_axes_clipping_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_revolution_axes_clipping_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_min_volume_per_convex_hull(min_volume_per_convex_hull f64) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_volume_per_convex_hull")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_volume_per_convex_hull)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_min_volume_per_convex_hull() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_volume_per_convex_hull")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_resolution(min_volume_per_convex_hull u32) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_volume_per_convex_hull)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_resolution() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_resolution")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_max_num_vertices_per_convex_hull(max_num_vertices_per_convex_hull u32) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_num_vertices_per_convex_hull")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_num_vertices_per_convex_hull)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_max_num_vertices_per_convex_hull() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_num_vertices_per_convex_hull")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_plane_downsampling(plane_downsampling u32) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_plane_downsampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&plane_downsampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_plane_downsampling() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_plane_downsampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_convex_hull_downsampling(convex_hull_downsampling u32) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_convex_hull_downsampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&convex_hull_downsampling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_convex_hull_downsampling() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_convex_hull_downsampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_normalize_mesh(normalize_mesh bool) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_normalize_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normalize_mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_normalize_mesh() bool {
    mut object_out := false
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_normalize_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_mode(mode MeshConvexDecompositionSettingsMode) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1668072869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_mode() MeshConvexDecompositionSettingsMode {
    mut object_out := MeshConvexDecompositionSettingsMode.convex_decomposition_mode_voxel
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 23479454)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_convex_hull_approximation(convex_hull_approximation bool) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_convex_hull_approximation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&convex_hull_approximation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_convex_hull_approximation() bool {
    mut object_out := false
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_convex_hull_approximation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_max_convex_hulls(max_convex_hulls u32) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_convex_hulls")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_convex_hulls)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_max_convex_hulls() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_convex_hulls")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshConvexDecompositionSettings) set_project_hull_vertices(project_hull_vertices bool) {
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_project_hull_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&project_hull_vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshConvexDecompositionSettings) get_project_hull_vertices() bool {
    mut object_out := false
    classname := StringName.new("MeshConvexDecompositionSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_project_hull_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

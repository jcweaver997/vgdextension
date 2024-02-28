module vgdextension

@[noinit]
pub struct VoxelGIData {
    Resource
}

pub fn (r &VoxelGIData) allocate(to_cell_xform Transform3D, aabb AABB, octree_size Vector3, octree_cells PackedByteArray, data_cells PackedByteArray, distance_field PackedByteArray, level_counts PackedInt32Array) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("allocate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4041601946)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&to_cell_xform)}
    args[1] = unsafe{voidptr(&aabb)}
    args[2] = unsafe{voidptr(&octree_size)}
    args[3] = unsafe{voidptr(&octree_cells)}
    args[4] = unsafe{voidptr(&data_cells)}
    args[5] = unsafe{voidptr(&distance_field)}
    args[6] = unsafe{voidptr(&level_counts)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) get_bounds() AABB {
    mut object_out := AABB{}
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) get_octree_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_octree_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) get_to_cell_xform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_to_cell_xform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) get_octree_cells() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_octree_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) get_data_cells() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_data_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) get_level_counts() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_level_counts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_dynamic_range(dynamic_range f64) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_dynamic_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dynamic_range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) get_dynamic_range() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_dynamic_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_energy(energy f64) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) get_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_bias(bias f64) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) get_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_normal_bias(bias f64) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_normal_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) get_normal_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_normal_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_propagation(propagation f64) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_propagation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&propagation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) get_propagation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("get_propagation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_interior(interior bool) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) is_interior() bool {
    mut object_out := false
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("is_interior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VoxelGIData) set_use_two_bounces(enable bool) {
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("set_use_two_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VoxelGIData) is_using_two_bounces() bool {
    mut object_out := false
    classname := StringName.new("VoxelGIData")
    fnname := StringName.new("is_using_two_bounces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

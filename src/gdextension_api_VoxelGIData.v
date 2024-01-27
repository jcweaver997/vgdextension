module vgdextension

pub type VoxelGIData = voidptr

pub fn (mut r VoxelGIData) allocate(to_cell_xform Transform3D, aabb AABB, octree_size Vector3, octree_cells PackedByteArray, data_cells PackedByteArray, distance_field PackedByteArray, level_counts PackedInt32Array) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("allocate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4041601946)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) get_bounds() AABB {
    mut object_out := AABB{}
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VoxelGIData) get_octree_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_octree_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VoxelGIData) get_to_cell_xform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_to_cell_xform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VoxelGIData) get_octree_cells() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_octree_cells")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VoxelGIData) get_data_cells() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_data_cells")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VoxelGIData) get_level_counts() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_level_counts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_dynamic_range(dynamic_range f32) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_dynamic_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) get_dynamic_range() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_dynamic_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_energy(energy f32) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) get_energy() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_bias(bias f32) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) get_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_normal_bias(bias f32) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_normal_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) get_normal_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_normal_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_propagation(propagation f32) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_propagation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) get_propagation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_propagation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_interior(interior bool) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) is_interior() bool {
    mut object_out := false
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("is_interior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGIData) set_use_two_bounces(enable bool) {
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_two_bounces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VoxelGIData) is_using_two_bounces() bool {
    mut object_out := false
    classname := StringName.new("VoxelGIData")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_two_bounces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

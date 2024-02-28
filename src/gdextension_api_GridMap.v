module vgdextension

@[noinit]
pub struct GridMap {
    Node3D
}

pub fn (r &GridMap) set_collision_layer(layer u32) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_collision_layer() u32 {
    mut object_out := u32(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_collision_mask(mask u32) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_collision_priority(priority f64) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_collision_priority() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_physics_material(material PhysicsMaterial) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_physics_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&material.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_physics_material() PhysicsMaterial {
    mut object_out := PhysicsMaterial{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_physics_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_bake_navigation(bake_navigation bool) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_bake_navigation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bake_navigation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) is_baking_navigation() bool {
    mut object_out := false
    classname := StringName.new("GridMap")
    fnname := StringName.new("is_baking_navigation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_navigation_map(navigation_map RID) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&navigation_map)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_mesh_library(mesh_library MeshLibrary) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_mesh_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488083439)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mesh_library.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_mesh_library() MeshLibrary {
    mut object_out := MeshLibrary{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_mesh_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3350993772)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_cell_size(size Vector3) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_cell_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_cell_scale(scale f64) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_cell_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_cell_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_cell_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_octant_size(size i32) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_octant_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_octant_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_octant_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_cell_item(position Vector3i, item i32, orientation i32) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_cell_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3449088946)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&item)}
    args[2] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_cell_item(position Vector3i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_cell_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724960147)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_cell_item_orientation(position Vector3i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_cell_item_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3724960147)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_cell_item_basis(position Vector3i) Basis {
    mut object_out := Basis{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_cell_item_basis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3493604918)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_basis_with_orthogonal_index(index i32) Basis {
    mut object_out := Basis{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_basis_with_orthogonal_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2816196998)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_orthogonal_index_from_basis(basis Basis) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_orthogonal_index_from_basis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4210359952)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&basis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) local_to_map(local_position Vector3) Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("local_to_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1257687843)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) map_to_local(map_position Vector3i) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("map_to_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1088329196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&map_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) resource_changed(resource Resource) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("resource_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&resource.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) set_center_x(enable bool) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_center_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_center_x() bool {
    mut object_out := false
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_center_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_center_y(enable bool) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_center_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_center_y() bool {
    mut object_out := false
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_center_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) set_center_z(enable bool) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("set_center_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_center_z() bool {
    mut object_out := false
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_center_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) clear() {
    classname := StringName.new("GridMap")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) get_used_cells() Array {
    mut object_out := Array{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_used_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_used_cells_by_item(item i32) Array {
    mut object_out := Array{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_used_cells_by_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&item)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_meshes() Array {
    mut object_out := Array{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_bake_meshes() Array {
    mut object_out := Array{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_bake_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) get_bake_mesh_instance(idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("GridMap")
    fnname := StringName.new("get_bake_mesh_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 937000113)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GridMap) clear_baked_meshes() {
    classname := StringName.new("GridMap")
    fnname := StringName.new("clear_baked_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GridMap) make_baked_meshes(gen_lightmap_uv bool, lightmap_uv_texel_size f64) {
    classname := StringName.new("GridMap")
    fnname := StringName.new("make_baked_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3609286057)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gen_lightmap_uv)}
    args[1] = unsafe{voidptr(&lightmap_uv_texel_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

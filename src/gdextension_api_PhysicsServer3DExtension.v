pub type PhysicsServer3DExtension = voidptr

pub fn (mut r PhysicsServer3DExtension) uworld_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_world_boundary_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) useparation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_separation_ray_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usphere_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_sphere_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubox_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_box_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ucapsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_capsule_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ucylinder_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_cylinder_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uconvex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_convex_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uconcave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_concave_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uheightmap_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_heightmap_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ucustom_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_custom_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ushape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ushape_set_custom_solver_bias(shape RID, bias f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ushape_set_margin(shape RID, margin f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ushape_get_margin(shape RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) ushape_get_type(shape RID) PhysicsServer3DShapeType {
    mut object_out := PhysicsServer3DShapeType.shape_world_boundary
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) ushape_get_data(shape RID) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) ushape_get_custom_solver_bias(shape RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uspace_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uspace_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uspace_is_active(space RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uspace_set_param(space RID, param PhysicsServer3DSpaceParameter, value f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uspace_get_param(space RID, param PhysicsServer3DSpaceParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uspace_get_direct_state(space RID) PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D(unsafe{nil})
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uspace_set_debug_contacts(space RID, max_contacts i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_debug_contacts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uspace_get_contacts(space RID) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_contacts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) uspace_get_contact_count(space RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uarea_get_space(area RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_add_shape(area RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_shape_transform(area RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uarea_get_shape_count(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) uarea_get_shape(area RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) uarea_get_shape_transform(area RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_attach_object_instance_id(area RID, id i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uarea_get_object_instance_id(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_param(area RID, param PhysicsServer3DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_transform(area RID, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uarea_get_param(area RID, param PhysicsServer3DAreaParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) uarea_get_transform(area RID) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_collision_layer(area RID, layer i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uarea_get_collision_layer(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_collision_mask(area RID, mask i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uarea_get_collision_mask(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_monitorable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_ray_pickable(area RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uarea_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_area_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_mode(body RID, mode PhysicsServer3DBodyMode) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_mode(body RID) PhysicsServer3DBodyMode {
    mut object_out := PhysicsServer3DBodyMode.body_mode_static
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_add_shape(body RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_shape_transform(body RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_shape_count(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) ubody_get_shape(body RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) ubody_get_shape_transform(body RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_attach_object_instance_id(body RID, id i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_object_instance_id(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_enable_continuous_collision_detection(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_enable_continuous_collision_detection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_is_continuous_collision_detection_enabled(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_is_continuous_collision_detection_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_collision_layer(body RID, layer i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_collision_layer(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_collision_mask(body RID, mask i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_collision_mask(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_collision_priority(body RID, priority f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_collision_priority(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_user_flags(body RID, flags i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_user_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_user_flags(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_user_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_param(body RID, param PhysicsServer3DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_param(body RID, param PhysicsServer3DBodyParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_reset_mass_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_state(body RID, state PhysicsServer3DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_state(body RID, state PhysicsServer3DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_apply_central_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_apply_impulse(body RID, impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_apply_torque_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_apply_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_apply_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_apply_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_add_constant_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_add_constant_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_add_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_constant_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_constant_force(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_constant_torque(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_axis_velocity(body RID, axis_velocity Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_axis_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_axis_lock(body RID, axis PhysicsServer3DBodyAxis, gdlock bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_axis_lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_is_axis_locked(body RID, axis PhysicsServer3DBodyAxis) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_is_axis_locked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_remove_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_collision_exceptions(body RID) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_max_contacts_reported(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_contacts_reported_depth_threshold(body RID, threshold f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_contacts_reported_depth_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_get_contacts_reported_depth_threshold(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_contacts_reported_depth_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_omit_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_is_omitting_force_integration(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_is_omitting_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_state_sync_callback(body RID, callable Callable) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_state_sync_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_force_integration_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ubody_set_ray_pickable(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ubody_test_motion(body RID, from Transform3D, motion Vector3, margin f32, max_collisions i32, collide_separation_ray bool, recovery_as_collision bool, result &PhysicsServer3DExtensionMotionResult) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_test_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&from)}
    args[2] = unsafe{voidptr(&motion)}
    args[3] = unsafe{voidptr(&margin)}
    args[4] = unsafe{voidptr(&max_collisions)}
    args[5] = unsafe{voidptr(&collide_separation_ray)}
    args[6] = unsafe{voidptr(&recovery_as_collision)}
    args[7] = unsafe{voidptr(&result)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ubody_get_direct_state(body RID) PhysicsDirectBodyState3D {
    mut object_out := PhysicsDirectBodyState3D(unsafe{nil})
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_update_rendering_server(body RID, rendering_server_handler PhysicsServer3DRenderingServerHandler) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_update_rendering_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_ray_pickable(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_collision_layer(body RID, layer i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_collision_layer(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_collision_mask(body RID, mask i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_collision_mask(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_add_collision_exception(body RID, body_b RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_add_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_remove_collision_exception(body RID, body_b RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_remove_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_collision_exceptions(body RID) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_collision_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_state(body RID, state PhysicsServer3DBodyState, variant Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_state(body RID, state PhysicsServer3DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_transform(body RID, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_simulation_precision(body RID, simulation_precision i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_simulation_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_simulation_precision(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_simulation_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_total_mass(body RID, total_mass f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_total_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_total_mass(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_total_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_linear_stiffness(body RID, linear_stiffness f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_linear_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_linear_stiffness(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_linear_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_pressure_coefficient(body RID, pressure_coefficient f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_pressure_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_pressure_coefficient(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_pressure_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_damping_coefficient(body RID, damping_coefficient f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_damping_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_damping_coefficient(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_damping_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_drag_coefficient(body RID, drag_coefficient f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_drag_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_drag_coefficient(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_drag_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_set_mesh(body RID, mesh RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_bounds(body RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_move_point(body RID, point_index i32, global_position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_move_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_get_point_global_position(body RID, point_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_get_point_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_remove_all_pinned_points(body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_remove_all_pinned_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) usoft_body_pin_point(body RID, point_index i32, pin bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_pin_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) usoft_body_is_point_pinned(body RID, point_index i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_soft_body_is_point_pinned")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_clear(joint RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ujoint_make_pin(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_pin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) upin_joint_set_param(joint RID, param PhysicsServer3DPinJointParam, value f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) upin_joint_get_param(joint RID, param PhysicsServer3DPinJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) upin_joint_set_local_a(joint RID, local_a Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_set_local_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) upin_joint_get_local_a(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_get_local_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) upin_joint_set_local_b(joint RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_set_local_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) upin_joint_get_local_b(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_get_local_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_make_hinge(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_hinge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ujoint_make_hinge_simple(joint RID, body_a RID, pivot_a Vector3, axis_a Vector3, body_b RID, pivot_b Vector3, axis_b Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_hinge_simple")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uhinge_joint_set_param(joint RID, param PhysicsServer3DHingeJointParam, value f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_hinge_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uhinge_joint_get_param(joint RID, param PhysicsServer3DHingeJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_hinge_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uhinge_joint_set_flag(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_hinge_joint_set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uhinge_joint_get_flag(joint RID, flag PhysicsServer3DHingeJointFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_hinge_joint_get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_make_slider(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_slider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uslider_joint_set_param(joint RID, param PhysicsServer3DSliderJointParam, value f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_slider_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uslider_joint_get_param(joint RID, param PhysicsServer3DSliderJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_slider_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_make_cone_twist(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_cone_twist")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ucone_twist_joint_set_param(joint RID, param PhysicsServer3DConeTwistJointParam, value f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_cone_twist_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ucone_twist_joint_get_param(joint RID, param PhysicsServer3DConeTwistJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_cone_twist_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_make_generic_6dof(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_generic_6dof")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ugeneric_6dof_joint_set_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_generic_6dof_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ugeneric_6dof_joint_get_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_generic_6dof_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&axis)}
    args[2] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ugeneric_6dof_joint_set_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_generic_6dof_joint_set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ugeneric_6dof_joint_get_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_generic_6dof_joint_get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&axis)}
    args[2] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) ujoint_get_type(joint RID) PhysicsServer3DJointType {
    mut object_out := PhysicsServer3DJointType.joint_type_pin
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_set_solver_priority(joint RID, priority i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_set_solver_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ujoint_get_solver_priority(joint RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_get_solver_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ujoint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_disable_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) ujoint_is_disabled_collisions_between_bodies(joint RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_is_disabled_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) ufree_rid(rid RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uset_active(active bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uinit() {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_init")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ustep(step f32) {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) usync() {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uflush_queries() {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_flush_queries")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) uend_sync() {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_end_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DExtension) ufinish() {
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3DExtension) uis_flushing_queries() bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_flushing_queries")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3DExtension) uget_process_info(process_info PhysicsServer3DProcessInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_process_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&process_info)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) body_test_motion_is_excluding_body(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("body_test_motion_is_excluding_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3DExtension) body_test_motion_is_excluding_object(object i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("body_test_motion_is_excluding_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

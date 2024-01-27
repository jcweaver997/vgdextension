module vgdextension

pub type PhysicsServer2DExtension = voidptr

pub fn (mut r PhysicsServer2DExtension) uworld_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_world_boundary_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) useparation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_separation_ray_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) usegment_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_segment_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ucircle_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_circle_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) urectangle_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_rectangle_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ucapsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_capsule_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uconvex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_convex_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uconcave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_concave_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ushape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ushape_set_custom_solver_bias(shape RID, bias f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ushape_get_type(shape RID) PhysicsServer2DShapeType {
    mut object_out := PhysicsServer2DShapeType.shape_world_boundary
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) ushape_get_data(shape RID) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) ushape_get_custom_solver_bias(shape RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ushape_collide(shape_a RID, xform_a Transform2D, motion_a Vector2, shape_b RID, xform_b Transform2D, motion_b Vector2, results voidptr, result_max i32, result_count &i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_collide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&shape_a)}
    args[1] = unsafe{voidptr(&xform_a)}
    args[2] = unsafe{voidptr(&motion_a)}
    args[3] = unsafe{voidptr(&shape_b)}
    args[4] = unsafe{voidptr(&xform_b)}
    args[5] = unsafe{voidptr(&motion_b)}
    args[6] = unsafe{voidptr(&results)}
    args[7] = unsafe{voidptr(&result_max)}
    args[8] = unsafe{voidptr(&result_count)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uspace_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uspace_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uspace_is_active(space RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uspace_set_param(space RID, param PhysicsServer2DSpaceParameter, value f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uspace_get_param(space RID, param PhysicsServer2DSpaceParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (mut r PhysicsServer2DExtension) uspace_get_direct_state(space RID) PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D(unsafe{nil})
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uspace_set_debug_contacts(space RID, max_contacts i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_debug_contacts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uspace_get_contacts(space RID) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_contacts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) uspace_get_contact_count(space RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_space(area RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_add_shape(area RID, shape RID, transform Transform2D, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_shape_transform(area RID, shape_idx i32, transform Transform2D) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_shape_count(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) uarea_get_shape(area RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (r &PhysicsServer2DExtension) uarea_get_shape_transform(area RID, shape_idx i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (mut r PhysicsServer2DExtension) uarea_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_attach_object_instance_id(area RID, id i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_object_instance_id(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_attach_canvas_instance_id(area RID, id i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_attach_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_canvas_instance_id(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_param(area RID, param PhysicsServer2DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_transform(area RID, transform Transform2D) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_param(area RID, param PhysicsServer2DAreaParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (r &PhysicsServer2DExtension) uarea_get_transform(area RID) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_collision_layer(area RID, layer i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_collision_layer(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_collision_mask(area RID, mask i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uarea_get_collision_mask(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_monitorable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_pickable(area RID, pickable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uarea_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_area_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_mode(body RID, mode PhysicsServer2DBodyMode) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_mode(body RID) PhysicsServer2DBodyMode {
    mut object_out := PhysicsServer2DBodyMode.body_mode_static
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_add_shape(body RID, shape RID, transform Transform2D, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_shape_transform(body RID, shape_idx i32, transform Transform2D) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_shape_count(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) ubody_get_shape(body RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (r &PhysicsServer2DExtension) ubody_get_shape_transform(body RID, shape_idx i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (mut r PhysicsServer2DExtension) ubody_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_shape_as_one_way_collision(body RID, shape_idx i32, enable bool, margin f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_as_one_way_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_attach_object_instance_id(body RID, id i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_object_instance_id(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_attach_canvas_instance_id(body RID, id i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_attach_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_canvas_instance_id(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_continuous_collision_detection_mode(body RID, mode PhysicsServer2DCCDMode) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_continuous_collision_detection_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_continuous_collision_detection_mode(body RID) PhysicsServer2DCCDMode {
    mut object_out := PhysicsServer2DCCDMode.ccd_mode_disabled
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_continuous_collision_detection_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_collision_layer(body RID, layer i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_collision_layer(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_collision_mask(body RID, mask i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_collision_mask(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_collision_priority(body RID, priority f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_collision_priority(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_param(body RID, param PhysicsServer2DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_param(body RID, param PhysicsServer2DBodyParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (mut r PhysicsServer2DExtension) ubody_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_reset_mass_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_state(body RID, state PhysicsServer2DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_state(body RID, state PhysicsServer2DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (mut r PhysicsServer2DExtension) ubody_apply_central_impulse(body RID, impulse Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_apply_torque_impulse(body RID, impulse f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_apply_impulse(body RID, impulse Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_apply_central_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_apply_force(body RID, force Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_apply_torque(body RID, torque f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_add_constant_central_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_add_constant_force(body RID, force Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_add_constant_torque(body RID, torque f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_constant_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_constant_force(body RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_constant_torque(body RID, torque f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_constant_torque(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_axis_velocity(body RID, axis_velocity Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_axis_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_remove_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_collision_exceptions(body RID) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_max_contacts_reported(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_contacts_reported_depth_threshold(body RID, threshold f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_contacts_reported_depth_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_get_contacts_reported_depth_threshold(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_contacts_reported_depth_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_omit_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ubody_is_omitting_force_integration(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_is_omitting_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_state_sync_callback(body RID, callable Callable) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_state_sync_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_force_integration_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_collide_shape(body RID, body_shape i32, shape RID, shape_xform Transform2D, motion Vector2, results voidptr, result_max i32, result_count &i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_collide_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&body_shape)}
    args[2] = unsafe{voidptr(&shape)}
    args[3] = unsafe{voidptr(&shape_xform)}
    args[4] = unsafe{voidptr(&motion)}
    args[5] = unsafe{voidptr(&results)}
    args[6] = unsafe{voidptr(&result_max)}
    args[7] = unsafe{voidptr(&result_count)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ubody_set_pickable(body RID, pickable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ubody_get_direct_state(body RID) PhysicsDirectBodyState2D {
    mut object_out := PhysicsDirectBodyState2D(unsafe{nil})
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) ubody_test_motion(body RID, from Transform2D, motion Vector2, margin f32, collide_separation_ray bool, recovery_as_collision bool, result &PhysicsServer2DExtensionMotionResult) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_test_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&from)}
    args[2] = unsafe{voidptr(&motion)}
    args[3] = unsafe{voidptr(&margin)}
    args[4] = unsafe{voidptr(&collide_separation_ray)}
    args[5] = unsafe{voidptr(&recovery_as_collision)}
    args[6] = unsafe{voidptr(&result)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ujoint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ujoint_clear(joint RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ujoint_set_param(joint RID, param PhysicsServer2DJointParam, value f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ujoint_get_param(joint RID, param PhysicsServer2DJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ujoint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_disable_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) ujoint_is_disabled_collisions_between_bodies(joint RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_is_disabled_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ujoint_make_pin(joint RID, anchor Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_pin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ujoint_make_groove(joint RID, a_groove1 Vector2, a_groove2 Vector2, b_anchor Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_groove")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ujoint_make_damped_spring(joint RID, anchor_a Vector2, anchor_b Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_damped_spring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) upin_joint_set_param(joint RID, param PhysicsServer2DPinJointParam, value f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) upin_joint_get_param(joint RID, param PhysicsServer2DPinJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
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
pub fn (mut r PhysicsServer2DExtension) udamped_spring_joint_set_param(joint RID, param PhysicsServer2DDampedSpringParam, value f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_damped_spring_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) udamped_spring_joint_get_param(joint RID, param PhysicsServer2DDampedSpringParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_damped_spring_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) ujoint_get_type(joint RID) PhysicsServer2DJointType {
    mut object_out := PhysicsServer2DJointType.joint_type_pin
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) ufree_rid(rid RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uset_active(active bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uinit() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_init")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ustep(step f32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) usync() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uflush_queries() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_flush_queries")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) uend_sync() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_end_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DExtension) ufinish() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer2DExtension) uis_flushing_queries() bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_flushing_queries")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer2DExtension) uget_process_info(process_info PhysicsServer2DProcessInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_process_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&process_info)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) body_test_motion_is_excluding_body(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("body_test_motion_is_excluding_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) body_test_motion_is_excluding_object(object i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("body_test_motion_is_excluding_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

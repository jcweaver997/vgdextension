module vgdextension

@[noinit]
pub struct PhysicsServer2DExtension {
    PhysicsServer2D
}

pub interface IPhysicsServer2DExtensionWorldBoundaryShapeCreate {
    mut:
    virt_world_boundary_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) uworld_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_world_boundary_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSeparationRayShapeCreate {
    mut:
    virt_separation_ray_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) useparation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_separation_ray_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSegmentShapeCreate {
    mut:
    virt_segment_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) usegment_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_segment_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionCircleShapeCreate {
    mut:
    virt_circle_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) ucircle_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_circle_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionRectangleShapeCreate {
    mut:
    virt_rectangle_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) urectangle_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_rectangle_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionCapsuleShapeCreate {
    mut:
    virt_capsule_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) ucapsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_capsule_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionConvexPolygonShapeCreate {
    mut:
    virt_convex_polygon_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) uconvex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_convex_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionConcavePolygonShapeCreate {
    mut:
    virt_concave_polygon_shape_create() RID
}

pub fn (mut r PhysicsServer2DExtension) uconcave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_concave_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionShapeSetData {
    mut:
    virt_shape_set_data(shape RID, data Variant)
}

pub fn (mut r PhysicsServer2DExtension) ushape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionShapeSetCustomSolverBias {
    mut:
    virt_shape_set_custom_solver_bias(shape RID, bias f64)
}

pub fn (mut r PhysicsServer2DExtension) ushape_set_custom_solver_bias(shape RID, bias f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_set_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionShapeGetType {
    mut:
    virt_shape_get_type(shape RID) PhysicsServer2DShapeType
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionShapeGetData {
    mut:
    virt_shape_get_data(shape RID) Variant
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionShapeGetCustomSolverBias {
    mut:
    virt_shape_get_custom_solver_bias(shape RID) f64
}

pub fn (r &PhysicsServer2DExtension) ushape_get_custom_solver_bias(shape RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_shape_get_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionShapeCollide {
    mut:
    virt_shape_collide(shape_a RID, xform_a Transform2D, motion_a Vector2, shape_b RID, xform_b Transform2D, motion_b Vector2, results voidptr, result_max i32, result_count &i32) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSpaceCreate {
    mut:
    virt_space_create() RID
}

pub fn (mut r PhysicsServer2DExtension) uspace_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSpaceSetActive {
    mut:
    virt_space_set_active(space RID, active bool)
}

pub fn (mut r PhysicsServer2DExtension) uspace_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionSpaceIsActive {
    mut:
    virt_space_is_active(space RID) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSpaceSetParam {
    mut:
    virt_space_set_param(space RID, param PhysicsServer2DSpaceParameter, value f64)
}

pub fn (mut r PhysicsServer2DExtension) uspace_set_param(space RID, param PhysicsServer2DSpaceParameter, value f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionSpaceGetParam {
    mut:
    virt_space_get_param(space RID, param PhysicsServer2DSpaceParameter) f64
}

pub fn (r &PhysicsServer2DExtension) uspace_get_param(space RID, param PhysicsServer2DSpaceParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSpaceGetDirectState {
    mut:
    virt_space_get_direct_state(space RID) PhysicsDirectSpaceState2D
}

pub fn (mut r PhysicsServer2DExtension) uspace_get_direct_state(space RID) PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSpaceSetDebugContacts {
    mut:
    virt_space_set_debug_contacts(space RID, max_contacts i32)
}

pub fn (mut r PhysicsServer2DExtension) uspace_set_debug_contacts(space RID, max_contacts i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_space_set_debug_contacts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&max_contacts)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionSpaceGetContacts {
    mut:
    virt_space_get_contacts(space RID) PackedVector2Array
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionSpaceGetContactCount {
    mut:
    virt_space_get_contact_count(space RID) i32
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaCreate {
    mut:
    virt_area_create() RID
}

pub fn (mut r PhysicsServer2DExtension) uarea_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaSetSpace {
    mut:
    virt_area_set_space(area RID, space RID)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetSpace {
    mut:
    virt_area_get_space(area RID) RID
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaAddShape {
    mut:
    virt_area_add_shape(area RID, shape RID, transform Transform2D, disabled bool)
}

pub fn (mut r PhysicsServer2DExtension) uarea_add_shape(area RID, shape RID, transform Transform2D, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetShape {
    mut:
    virt_area_set_shape(area RID, shape_idx i32, shape RID)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetShapeTransform {
    mut:
    virt_area_set_shape_transform(area RID, shape_idx i32, transform Transform2D)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_shape_transform(area RID, shape_idx i32, transform Transform2D) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetShapeDisabled {
    mut:
    virt_area_set_shape_disabled(area RID, shape_idx i32, disabled bool)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetShapeCount {
    mut:
    virt_area_get_shape_count(area RID) i32
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaGetShape {
    mut:
    virt_area_get_shape(area RID, shape_idx i32) RID
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaGetShapeTransform {
    mut:
    virt_area_get_shape_transform(area RID, shape_idx i32) Transform2D
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaRemoveShape {
    mut:
    virt_area_remove_shape(area RID, shape_idx i32)
}

pub fn (mut r PhysicsServer2DExtension) uarea_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaClearShapes {
    mut:
    virt_area_clear_shapes(area RID)
}

pub fn (mut r PhysicsServer2DExtension) uarea_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaAttachObjectInstanceId {
    mut:
    virt_area_attach_object_instance_id(area RID, id u64)
}

pub fn (mut r PhysicsServer2DExtension) uarea_attach_object_instance_id(area RID, id u64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetObjectInstanceId {
    mut:
    virt_area_get_object_instance_id(area RID) u64
}

pub fn (r &PhysicsServer2DExtension) uarea_get_object_instance_id(area RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaAttachCanvasInstanceId {
    mut:
    virt_area_attach_canvas_instance_id(area RID, id u64)
}

pub fn (mut r PhysicsServer2DExtension) uarea_attach_canvas_instance_id(area RID, id u64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_attach_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetCanvasInstanceId {
    mut:
    virt_area_get_canvas_instance_id(area RID) u64
}

pub fn (r &PhysicsServer2DExtension) uarea_get_canvas_instance_id(area RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaSetParam {
    mut:
    virt_area_set_param(area RID, param PhysicsServer2DAreaParameter, value Variant)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_param(area RID, param PhysicsServer2DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetTransform {
    mut:
    virt_area_set_transform(area RID, transform Transform2D)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_transform(area RID, transform Transform2D) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetParam {
    mut:
    virt_area_get_param(area RID, param PhysicsServer2DAreaParameter) Variant
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaGetTransform {
    mut:
    virt_area_get_transform(area RID) Transform2D
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaSetCollisionLayer {
    mut:
    virt_area_set_collision_layer(area RID, layer u32)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_collision_layer(area RID, layer u32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetCollisionLayer {
    mut:
    virt_area_get_collision_layer(area RID) u32
}

pub fn (r &PhysicsServer2DExtension) uarea_get_collision_layer(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaSetCollisionMask {
    mut:
    virt_area_set_collision_mask(area RID, mask u32)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_collision_mask(area RID, mask u32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaGetCollisionMask {
    mut:
    virt_area_get_collision_mask(area RID) u32
}

pub fn (r &PhysicsServer2DExtension) uarea_get_collision_mask(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionAreaSetMonitorable {
    mut:
    virt_area_set_monitorable(area RID, monitorable bool)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_monitorable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&monitorable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetPickable {
    mut:
    virt_area_set_pickable(area RID, pickable bool)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_pickable(area RID, pickable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&pickable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetMonitorCallback {
    mut:
    virt_area_set_monitor_callback(area RID, callback Callable)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionAreaSetAreaMonitorCallback {
    mut:
    virt_area_set_area_monitor_callback(area RID, callback Callable)
}

pub fn (mut r PhysicsServer2DExtension) uarea_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_area_set_area_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyCreate {
    mut:
    virt_body_create() RID
}

pub fn (mut r PhysicsServer2DExtension) ubody_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetSpace {
    mut:
    virt_body_set_space(body RID, space RID)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetSpace {
    mut:
    virt_body_get_space(body RID) RID
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetMode {
    mut:
    virt_body_set_mode(body RID, mode PhysicsServer2DBodyMode)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_mode(body RID, mode PhysicsServer2DBodyMode) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetMode {
    mut:
    virt_body_get_mode(body RID) PhysicsServer2DBodyMode
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyAddShape {
    mut:
    virt_body_add_shape(body RID, shape RID, transform Transform2D, disabled bool)
}

pub fn (mut r PhysicsServer2DExtension) ubody_add_shape(body RID, shape RID, transform Transform2D, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodySetShape {
    mut:
    virt_body_set_shape(body RID, shape_idx i32, shape RID)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodySetShapeTransform {
    mut:
    virt_body_set_shape_transform(body RID, shape_idx i32, transform Transform2D)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_shape_transform(body RID, shape_idx i32, transform Transform2D) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetShapeCount {
    mut:
    virt_body_get_shape_count(body RID) i32
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyGetShape {
    mut:
    virt_body_get_shape(body RID, shape_idx i32) RID
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyGetShapeTransform {
    mut:
    virt_body_get_shape_transform(body RID, shape_idx i32) Transform2D
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetShapeDisabled {
    mut:
    virt_body_set_shape_disabled(body RID, shape_idx i32, disabled bool)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodySetShapeAsOneWayCollision {
    mut:
    virt_body_set_shape_as_one_way_collision(body RID, shape_idx i32, enable bool, margin f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_shape_as_one_way_collision(body RID, shape_idx i32, enable bool, margin f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_shape_as_one_way_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&enable)}
    args[3] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyRemoveShape {
    mut:
    virt_body_remove_shape(body RID, shape_idx i32)
}

pub fn (mut r PhysicsServer2DExtension) ubody_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyClearShapes {
    mut:
    virt_body_clear_shapes(body RID)
}

pub fn (mut r PhysicsServer2DExtension) ubody_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyAttachObjectInstanceId {
    mut:
    virt_body_attach_object_instance_id(body RID, id u64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_attach_object_instance_id(body RID, id u64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetObjectInstanceId {
    mut:
    virt_body_get_object_instance_id(body RID) u64
}

pub fn (r &PhysicsServer2DExtension) ubody_get_object_instance_id(body RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyAttachCanvasInstanceId {
    mut:
    virt_body_attach_canvas_instance_id(body RID, id u64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_attach_canvas_instance_id(body RID, id u64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_attach_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetCanvasInstanceId {
    mut:
    virt_body_get_canvas_instance_id(body RID) u64
}

pub fn (r &PhysicsServer2DExtension) ubody_get_canvas_instance_id(body RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_canvas_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetContinuousCollisionDetectionMode {
    mut:
    virt_body_set_continuous_collision_detection_mode(body RID, mode PhysicsServer2DCCDMode)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_continuous_collision_detection_mode(body RID, mode PhysicsServer2DCCDMode) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_continuous_collision_detection_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetContinuousCollisionDetectionMode {
    mut:
    virt_body_get_continuous_collision_detection_mode(body RID) PhysicsServer2DCCDMode
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetCollisionLayer {
    mut:
    virt_body_set_collision_layer(body RID, layer u32)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_collision_layer(body RID, layer u32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetCollisionLayer {
    mut:
    virt_body_get_collision_layer(body RID) u32
}

pub fn (r &PhysicsServer2DExtension) ubody_get_collision_layer(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetCollisionMask {
    mut:
    virt_body_set_collision_mask(body RID, mask u32)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_collision_mask(body RID, mask u32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetCollisionMask {
    mut:
    virt_body_get_collision_mask(body RID) u32
}

pub fn (r &PhysicsServer2DExtension) ubody_get_collision_mask(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetCollisionPriority {
    mut:
    virt_body_set_collision_priority(body RID, priority f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_collision_priority(body RID, priority f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetCollisionPriority {
    mut:
    virt_body_get_collision_priority(body RID) f64
}

pub fn (r &PhysicsServer2DExtension) ubody_get_collision_priority(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetParam {
    mut:
    virt_body_set_param(body RID, param PhysicsServer2DBodyParameter, value Variant)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_param(body RID, param PhysicsServer2DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetParam {
    mut:
    virt_body_get_param(body RID, param PhysicsServer2DBodyParameter) Variant
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyResetMassProperties {
    mut:
    virt_body_reset_mass_properties(body RID)
}

pub fn (mut r PhysicsServer2DExtension) ubody_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_reset_mass_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodySetState {
    mut:
    virt_body_set_state(body RID, state PhysicsServer2DBodyState, value Variant)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_state(body RID, state PhysicsServer2DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&state)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetState {
    mut:
    virt_body_get_state(body RID, state PhysicsServer2DBodyState) Variant
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyApplyCentralImpulse {
    mut:
    virt_body_apply_central_impulse(body RID, impulse Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_apply_central_impulse(body RID, impulse Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyApplyTorqueImpulse {
    mut:
    virt_body_apply_torque_impulse(body RID, impulse f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_apply_torque_impulse(body RID, impulse f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyApplyImpulse {
    mut:
    virt_body_apply_impulse(body RID, impulse Vector2, position Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_apply_impulse(body RID, impulse Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyApplyCentralForce {
    mut:
    virt_body_apply_central_force(body RID, force Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_apply_central_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyApplyForce {
    mut:
    virt_body_apply_force(body RID, force Vector2, position Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_apply_force(body RID, force Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyApplyTorque {
    mut:
    virt_body_apply_torque(body RID, torque f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_apply_torque(body RID, torque f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyAddConstantCentralForce {
    mut:
    virt_body_add_constant_central_force(body RID, force Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_add_constant_central_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyAddConstantForce {
    mut:
    virt_body_add_constant_force(body RID, force Vector2, position Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_add_constant_force(body RID, force Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyAddConstantTorque {
    mut:
    virt_body_add_constant_torque(body RID, torque f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_add_constant_torque(body RID, torque f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodySetConstantForce {
    mut:
    virt_body_set_constant_force(body RID, force Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_constant_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetConstantForce {
    mut:
    virt_body_get_constant_force(body RID) Vector2
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetConstantTorque {
    mut:
    virt_body_set_constant_torque(body RID, torque f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_constant_torque(body RID, torque f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetConstantTorque {
    mut:
    virt_body_get_constant_torque(body RID) f64
}

pub fn (r &PhysicsServer2DExtension) ubody_get_constant_torque(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetAxisVelocity {
    mut:
    virt_body_set_axis_velocity(body RID, axis_velocity Vector2)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_axis_velocity(body RID, axis_velocity Vector2) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_axis_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&axis_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyAddCollisionException {
    mut:
    virt_body_add_collision_exception(body RID, excepted_body RID)
}

pub fn (mut r PhysicsServer2DExtension) ubody_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_add_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyRemoveCollisionException {
    mut:
    virt_body_remove_collision_exception(body RID, excepted_body RID)
}

pub fn (mut r PhysicsServer2DExtension) ubody_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_remove_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetCollisionExceptions {
    mut:
    virt_body_get_collision_exceptions(body RID) Array
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetMaxContactsReported {
    mut:
    virt_body_set_max_contacts_reported(body RID, amount i32)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetMaxContactsReported {
    mut:
    virt_body_get_max_contacts_reported(body RID) i32
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetContactsReportedDepthThreshold {
    mut:
    virt_body_set_contacts_reported_depth_threshold(body RID, threshold f64)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_contacts_reported_depth_threshold(body RID, threshold f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_contacts_reported_depth_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetContactsReportedDepthThreshold {
    mut:
    virt_body_get_contacts_reported_depth_threshold(body RID) f64
}

pub fn (r &PhysicsServer2DExtension) ubody_get_contacts_reported_depth_threshold(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_contacts_reported_depth_threshold")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetOmitForceIntegration {
    mut:
    virt_body_set_omit_force_integration(body RID, enable bool)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_omit_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyIsOmittingForceIntegration {
    mut:
    virt_body_is_omitting_force_integration(body RID) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetStateSyncCallback {
    mut:
    virt_body_set_state_sync_callback(body RID, callable Callable)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_state_sync_callback(body RID, callable Callable) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_state_sync_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodySetForceIntegrationCallback {
    mut:
    virt_body_set_force_integration_callback(body RID, callable Callable, userdata Variant)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_force_integration_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&callable)}
    args[2] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyCollideShape {
    mut:
    virt_body_collide_shape(body RID, body_shape i32, shape RID, shape_xform Transform2D, motion Vector2, results voidptr, result_max i32, result_count &i32) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodySetPickable {
    mut:
    virt_body_set_pickable(body RID, pickable bool)
}

pub fn (mut r PhysicsServer2DExtension) ubody_set_pickable(body RID, pickable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_set_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&pickable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionBodyGetDirectState {
    mut:
    virt_body_get_direct_state(body RID) PhysicsDirectBodyState2D
}

pub fn (mut r PhysicsServer2DExtension) ubody_get_direct_state(body RID) PhysicsDirectBodyState2D {
    mut object_out := PhysicsDirectBodyState2D{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_body_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionBodyTestMotion {
    mut:
    virt_body_test_motion(body RID, from Transform2D, motion Vector2, margin f64, collide_separation_ray bool, recovery_as_collision bool, result &PhysicsServer2DExtensionMotionResult) bool
}

pub fn (r &PhysicsServer2DExtension) ubody_test_motion(body RID, from Transform2D, motion Vector2, margin f64, collide_separation_ray bool, recovery_as_collision bool, result &PhysicsServer2DExtensionMotionResult) bool {
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionJointCreate {
    mut:
    virt_joint_create() RID
}

pub fn (mut r PhysicsServer2DExtension) ujoint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionJointClear {
    mut:
    virt_joint_clear(joint RID)
}

pub fn (mut r PhysicsServer2DExtension) ujoint_clear(joint RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionJointSetParam {
    mut:
    virt_joint_set_param(joint RID, param PhysicsServer2DJointParam, value f64)
}

pub fn (mut r PhysicsServer2DExtension) ujoint_set_param(joint RID, param PhysicsServer2DJointParam, value f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionJointGetParam {
    mut:
    virt_joint_get_param(joint RID, param PhysicsServer2DJointParam) f64
}

pub fn (r &PhysicsServer2DExtension) ujoint_get_param(joint RID, param PhysicsServer2DJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionJointDisableCollisionsBetweenBodies {
    mut:
    virt_joint_disable_collisions_between_bodies(joint RID, disable bool)
}

pub fn (mut r PhysicsServer2DExtension) ujoint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_disable_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionJointIsDisabledCollisionsBetweenBodies {
    mut:
    virt_joint_is_disabled_collisions_between_bodies(joint RID) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionJointMakePin {
    mut:
    virt_joint_make_pin(joint RID, anchor Vector2, body_a RID, body_b RID)
}

pub fn (mut r PhysicsServer2DExtension) ujoint_make_pin(joint RID, anchor Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_pin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&anchor)}
    args[2] = unsafe{voidptr(&body_a)}
    args[3] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionJointMakeGroove {
    mut:
    virt_joint_make_groove(joint RID, a_groove1 Vector2, a_groove2 Vector2, b_anchor Vector2, body_a RID, body_b RID)
}

pub fn (mut r PhysicsServer2DExtension) ujoint_make_groove(joint RID, a_groove1 Vector2, a_groove2 Vector2, b_anchor Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_groove")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&a_groove1)}
    args[2] = unsafe{voidptr(&a_groove2)}
    args[3] = unsafe{voidptr(&b_anchor)}
    args[4] = unsafe{voidptr(&body_a)}
    args[5] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionJointMakeDampedSpring {
    mut:
    virt_joint_make_damped_spring(joint RID, anchor_a Vector2, anchor_b Vector2, body_a RID, body_b RID)
}

pub fn (mut r PhysicsServer2DExtension) ujoint_make_damped_spring(joint RID, anchor_a Vector2, anchor_b Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_joint_make_damped_spring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&anchor_a)}
    args[2] = unsafe{voidptr(&anchor_b)}
    args[3] = unsafe{voidptr(&body_a)}
    args[4] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionPinJointSetParam {
    mut:
    virt_pin_joint_set_param(joint RID, param PhysicsServer2DPinJointParam, value f64)
}

pub fn (mut r PhysicsServer2DExtension) upin_joint_set_param(joint RID, param PhysicsServer2DPinJointParam, value f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionPinJointGetParam {
    mut:
    virt_pin_joint_get_param(joint RID, param PhysicsServer2DPinJointParam) f64
}

pub fn (r &PhysicsServer2DExtension) upin_joint_get_param(joint RID, param PhysicsServer2DPinJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_pin_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionDampedSpringJointSetParam {
    mut:
    virt_damped_spring_joint_set_param(joint RID, param PhysicsServer2DDampedSpringParam, value f64)
}

pub fn (mut r PhysicsServer2DExtension) udamped_spring_joint_set_param(joint RID, param PhysicsServer2DDampedSpringParam, value f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_damped_spring_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionDampedSpringJointGetParam {
    mut:
    virt_damped_spring_joint_get_param(joint RID, param PhysicsServer2DDampedSpringParam) f64
}

pub fn (r &PhysicsServer2DExtension) udamped_spring_joint_get_param(joint RID, param PhysicsServer2DDampedSpringParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_damped_spring_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionJointGetType {
    mut:
    virt_joint_get_type(joint RID) PhysicsServer2DJointType
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionFreeRid {
    mut:
    virt_free_rid(rid RID)
}

pub fn (mut r PhysicsServer2DExtension) ufree_rid(rid RID) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionSetActive {
    mut:
    virt_set_active(active bool)
}

pub fn (mut r PhysicsServer2DExtension) uset_active(active bool) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionInit {
    mut:
    virt_init()
}

pub fn (mut r PhysicsServer2DExtension) uinit() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_init")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IPhysicsServer2DExtensionStep {
    mut:
    virt_step(step f64)
}

pub fn (mut r PhysicsServer2DExtension) ustep(step f64) {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer2DExtensionSync {
    mut:
    virt_sync()
}

pub fn (mut r PhysicsServer2DExtension) usync() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IPhysicsServer2DExtensionFlushQueries {
    mut:
    virt_flush_queries()
}

pub fn (mut r PhysicsServer2DExtension) uflush_queries() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_flush_queries")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IPhysicsServer2DExtensionEndSync {
    mut:
    virt_end_sync()
}

pub fn (mut r PhysicsServer2DExtension) uend_sync() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_end_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IPhysicsServer2DExtensionFinish {
    mut:
    virt_finish()
}

pub fn (mut r PhysicsServer2DExtension) ufinish() {
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IPhysicsServer2DExtensionIsFlushingQueries {
    mut:
    virt_is_flushing_queries() bool
}

pub fn (r &PhysicsServer2DExtension) uis_flushing_queries() bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_flushing_queries")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IPhysicsServer2DExtensionGetProcessInfo {
    mut:
    virt_get_process_info(process_info PhysicsServer2DProcessInfo) i32
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer2DExtension) body_test_motion_is_excluding_object(object u64) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("body_test_motion_is_excluding_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

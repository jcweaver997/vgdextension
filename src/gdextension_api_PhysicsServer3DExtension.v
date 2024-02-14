module vgdextension

@[noinit]
pub struct PhysicsServer3DExtension {
    PhysicsServer3D
}

pub interface IPhysicsServer3DExtensionWorldBoundaryShapeCreate {
    mut:
    virt_world_boundary_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) uworld_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_world_boundary_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSeparationRayShapeCreate {
    mut:
    virt_separation_ray_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) useparation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_separation_ray_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSphereShapeCreate {
    mut:
    virt_sphere_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) usphere_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_sphere_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBoxShapeCreate {
    mut:
    virt_box_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) ubox_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_box_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionCapsuleShapeCreate {
    mut:
    virt_capsule_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) ucapsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_capsule_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionCylinderShapeCreate {
    mut:
    virt_cylinder_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) ucylinder_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_cylinder_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionConvexPolygonShapeCreate {
    mut:
    virt_convex_polygon_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) uconvex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_convex_polygon_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionConcavePolygonShapeCreate {
    mut:
    virt_concave_polygon_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) uconcave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_concave_polygon_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionHeightmapShapeCreate {
    mut:
    virt_heightmap_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) uheightmap_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_heightmap_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionCustomShapeCreate {
    mut:
    virt_custom_shape_create() RID
}

pub fn (mut r PhysicsServer3DExtension) ucustom_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_custom_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionShapeSetData {
    mut:
    virt_shape_set_data(shape RID, data Variant)
}

pub fn (mut r PhysicsServer3DExtension) ushape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionShapeSetCustomSolverBias {
    mut:
    virt_shape_set_custom_solver_bias(shape RID, bias f64)
}

pub fn (mut r PhysicsServer3DExtension) ushape_set_custom_solver_bias(shape RID, bias f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_set_custom_solver_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionShapeSetMargin {
    mut:
    virt_shape_set_margin(shape RID, margin f64)
}

pub fn (mut r PhysicsServer3DExtension) ushape_set_margin(shape RID, margin f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionShapeGetMargin {
    mut:
    virt_shape_get_margin(shape RID) f64
}

pub fn (r &PhysicsServer3DExtension) ushape_get_margin(shape RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionShapeGetType {
    mut:
    virt_shape_get_type(shape RID) PhysicsServer3DShapeType
}

pub fn (r &PhysicsServer3DExtension) ushape_get_type(shape RID) PhysicsServer3DShapeType {
    mut object_out := i64(PhysicsServer3DShapeType.shape_world_boundary)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer3DShapeType(object_out)}
}
pub interface IPhysicsServer3DExtensionShapeGetData {
    mut:
    virt_shape_get_data(shape RID) Variant
}

pub fn (r &PhysicsServer3DExtension) ushape_get_data(shape RID) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionShapeGetCustomSolverBias {
    mut:
    virt_shape_get_custom_solver_bias(shape RID) f64
}

pub fn (r &PhysicsServer3DExtension) ushape_get_custom_solver_bias(shape RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_shape_get_custom_solver_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSpaceCreate {
    mut:
    virt_space_create() RID
}

pub fn (mut r PhysicsServer3DExtension) uspace_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSpaceSetActive {
    mut:
    virt_space_set_active(space RID, active bool)
}

pub fn (mut r PhysicsServer3DExtension) uspace_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSpaceIsActive {
    mut:
    virt_space_is_active(space RID) bool
}

pub fn (r &PhysicsServer3DExtension) uspace_is_active(space RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSpaceSetParam {
    mut:
    virt_space_set_param(space RID, param PhysicsServer3DSpaceParameter, value f64)
}

pub fn (mut r PhysicsServer3DExtension) uspace_set_param(space RID, param PhysicsServer3DSpaceParameter, value f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSpaceGetParam {
    mut:
    virt_space_get_param(space RID, param PhysicsServer3DSpaceParameter) f64
}

pub fn (r &PhysicsServer3DExtension) uspace_get_param(space RID, param PhysicsServer3DSpaceParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSpaceGetDirectState {
    mut:
    virt_space_get_direct_state(space RID) PhysicsDirectSpaceState3D
}

pub fn (mut r PhysicsServer3DExtension) uspace_get_direct_state(space RID) PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_get_direct_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSpaceSetDebugContacts {
    mut:
    virt_space_set_debug_contacts(space RID, max_contacts i32)
}

pub fn (mut r PhysicsServer3DExtension) uspace_set_debug_contacts(space RID, max_contacts i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_set_debug_contacts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&max_contacts)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSpaceGetContacts {
    mut:
    virt_space_get_contacts(space RID) PackedVector3Array
}

pub fn (r &PhysicsServer3DExtension) uspace_get_contacts(space RID) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_get_contacts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSpaceGetContactCount {
    mut:
    virt_space_get_contact_count(space RID) i32
}

pub fn (r &PhysicsServer3DExtension) uspace_get_contact_count(space RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_space_get_contact_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaCreate {
    mut:
    virt_area_create() RID
}

pub fn (mut r PhysicsServer3DExtension) uarea_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaSetSpace {
    mut:
    virt_area_set_space(area RID, space RID)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaGetSpace {
    mut:
    virt_area_get_space(area RID) RID
}

pub fn (r &PhysicsServer3DExtension) uarea_get_space(area RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaAddShape {
    mut:
    virt_area_add_shape(area RID, shape RID, transform Transform3D, disabled bool)
}

pub fn (mut r PhysicsServer3DExtension) uarea_add_shape(area RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetShape {
    mut:
    virt_area_set_shape(area RID, shape_idx i32, shape RID)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetShapeTransform {
    mut:
    virt_area_set_shape_transform(area RID, shape_idx i32, transform Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_shape_transform(area RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetShapeDisabled {
    mut:
    virt_area_set_shape_disabled(area RID, shape_idx i32, disabled bool)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_shape_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaGetShapeCount {
    mut:
    virt_area_get_shape_count(area RID) i32
}

pub fn (r &PhysicsServer3DExtension) uarea_get_shape_count(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaGetShape {
    mut:
    virt_area_get_shape(area RID, shape_idx i32) RID
}

pub fn (r &PhysicsServer3DExtension) uarea_get_shape(area RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaGetShapeTransform {
    mut:
    virt_area_get_shape_transform(area RID, shape_idx i32) Transform3D
}

pub fn (r &PhysicsServer3DExtension) uarea_get_shape_transform(area RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaRemoveShape {
    mut:
    virt_area_remove_shape(area RID, shape_idx i32)
}

pub fn (mut r PhysicsServer3DExtension) uarea_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaClearShapes {
    mut:
    virt_area_clear_shapes(area RID)
}

pub fn (mut r PhysicsServer3DExtension) uarea_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaAttachObjectInstanceId {
    mut:
    virt_area_attach_object_instance_id(area RID, id u64)
}

pub fn (mut r PhysicsServer3DExtension) uarea_attach_object_instance_id(area RID, id u64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaGetObjectInstanceId {
    mut:
    virt_area_get_object_instance_id(area RID) u64
}

pub fn (r &PhysicsServer3DExtension) uarea_get_object_instance_id(area RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaSetParam {
    mut:
    virt_area_set_param(area RID, param PhysicsServer3DAreaParameter, value Variant)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_param(area RID, param PhysicsServer3DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetTransform {
    mut:
    virt_area_set_transform(area RID, transform Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_transform(area RID, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaGetParam {
    mut:
    virt_area_get_param(area RID, param PhysicsServer3DAreaParameter) Variant
}

pub fn (r &PhysicsServer3DExtension) uarea_get_param(area RID, param PhysicsServer3DAreaParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaGetTransform {
    mut:
    virt_area_get_transform(area RID) Transform3D
}

pub fn (r &PhysicsServer3DExtension) uarea_get_transform(area RID) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaSetCollisionLayer {
    mut:
    virt_area_set_collision_layer(area RID, layer u32)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_collision_layer(area RID, layer u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaGetCollisionLayer {
    mut:
    virt_area_get_collision_layer(area RID) u32
}

pub fn (r &PhysicsServer3DExtension) uarea_get_collision_layer(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaSetCollisionMask {
    mut:
    virt_area_set_collision_mask(area RID, mask u32)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_collision_mask(area RID, mask u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaGetCollisionMask {
    mut:
    virt_area_get_collision_mask(area RID) u32
}

pub fn (r &PhysicsServer3DExtension) uarea_get_collision_mask(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionAreaSetMonitorable {
    mut:
    virt_area_set_monitorable(area RID, monitorable bool)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_monitorable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&monitorable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetRayPickable {
    mut:
    virt_area_set_ray_pickable(area RID, enable bool)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_ray_pickable(area RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetMonitorCallback {
    mut:
    virt_area_set_monitor_callback(area RID, callback Callable)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_monitor_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionAreaSetAreaMonitorCallback {
    mut:
    virt_area_set_area_monitor_callback(area RID, callback Callable)
}

pub fn (mut r PhysicsServer3DExtension) uarea_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_area_set_area_monitor_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyCreate {
    mut:
    virt_body_create() RID
}

pub fn (mut r PhysicsServer3DExtension) ubody_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetSpace {
    mut:
    virt_body_set_space(body RID, space RID)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetSpace {
    mut:
    virt_body_get_space(body RID) RID
}

pub fn (r &PhysicsServer3DExtension) ubody_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetMode {
    mut:
    virt_body_set_mode(body RID, mode PhysicsServer3DBodyMode)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_mode(body RID, mode PhysicsServer3DBodyMode) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetMode {
    mut:
    virt_body_get_mode(body RID) PhysicsServer3DBodyMode
}

pub fn (r &PhysicsServer3DExtension) ubody_get_mode(body RID) PhysicsServer3DBodyMode {
    mut object_out := i64(PhysicsServer3DBodyMode.body_mode_static)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer3DBodyMode(object_out)}
}
pub interface IPhysicsServer3DExtensionBodyAddShape {
    mut:
    virt_body_add_shape(body RID, shape RID, transform Transform3D, disabled bool)
}

pub fn (mut r PhysicsServer3DExtension) ubody_add_shape(body RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetShape {
    mut:
    virt_body_set_shape(body RID, shape_idx i32, shape RID)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetShapeTransform {
    mut:
    virt_body_set_shape_transform(body RID, shape_idx i32, transform Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_shape_transform(body RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetShapeDisabled {
    mut:
    virt_body_set_shape_disabled(body RID, shape_idx i32, disabled bool)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_shape_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetShapeCount {
    mut:
    virt_body_get_shape_count(body RID) i32
}

pub fn (r &PhysicsServer3DExtension) ubody_get_shape_count(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyGetShape {
    mut:
    virt_body_get_shape(body RID, shape_idx i32) RID
}

pub fn (r &PhysicsServer3DExtension) ubody_get_shape(body RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyGetShapeTransform {
    mut:
    virt_body_get_shape_transform(body RID, shape_idx i32) Transform3D
}

pub fn (r &PhysicsServer3DExtension) ubody_get_shape_transform(body RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyRemoveShape {
    mut:
    virt_body_remove_shape(body RID, shape_idx i32)
}

pub fn (mut r PhysicsServer3DExtension) ubody_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyClearShapes {
    mut:
    virt_body_clear_shapes(body RID)
}

pub fn (mut r PhysicsServer3DExtension) ubody_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyAttachObjectInstanceId {
    mut:
    virt_body_attach_object_instance_id(body RID, id u64)
}

pub fn (mut r PhysicsServer3DExtension) ubody_attach_object_instance_id(body RID, id u64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetObjectInstanceId {
    mut:
    virt_body_get_object_instance_id(body RID) u64
}

pub fn (r &PhysicsServer3DExtension) ubody_get_object_instance_id(body RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetEnableContinuousCollisionDetection {
    mut:
    virt_body_set_enable_continuous_collision_detection(body RID, enable bool)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_enable_continuous_collision_detection(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_enable_continuous_collision_detection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyIsContinuousCollisionDetectionEnabled {
    mut:
    virt_body_is_continuous_collision_detection_enabled(body RID) bool
}

pub fn (r &PhysicsServer3DExtension) ubody_is_continuous_collision_detection_enabled(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_is_continuous_collision_detection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetCollisionLayer {
    mut:
    virt_body_set_collision_layer(body RID, layer u32)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_collision_layer(body RID, layer u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetCollisionLayer {
    mut:
    virt_body_get_collision_layer(body RID) u32
}

pub fn (r &PhysicsServer3DExtension) ubody_get_collision_layer(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetCollisionMask {
    mut:
    virt_body_set_collision_mask(body RID, mask u32)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_collision_mask(body RID, mask u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetCollisionMask {
    mut:
    virt_body_get_collision_mask(body RID) u32
}

pub fn (r &PhysicsServer3DExtension) ubody_get_collision_mask(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetCollisionPriority {
    mut:
    virt_body_set_collision_priority(body RID, priority f64)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_collision_priority(body RID, priority f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetCollisionPriority {
    mut:
    virt_body_get_collision_priority(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) ubody_get_collision_priority(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetUserFlags {
    mut:
    virt_body_set_user_flags(body RID, flags u32)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_user_flags(body RID, flags u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_user_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetUserFlags {
    mut:
    virt_body_get_user_flags(body RID) u32
}

pub fn (r &PhysicsServer3DExtension) ubody_get_user_flags(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_user_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetParam {
    mut:
    virt_body_set_param(body RID, param PhysicsServer3DBodyParameter, value Variant)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_param(body RID, param PhysicsServer3DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetParam {
    mut:
    virt_body_get_param(body RID, param PhysicsServer3DBodyParameter) Variant
}

pub fn (r &PhysicsServer3DExtension) ubody_get_param(body RID, param PhysicsServer3DBodyParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyResetMassProperties {
    mut:
    virt_body_reset_mass_properties(body RID)
}

pub fn (mut r PhysicsServer3DExtension) ubody_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_reset_mass_properties")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetState {
    mut:
    virt_body_set_state(body RID, state PhysicsServer3DBodyState, value Variant)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_state(body RID, state PhysicsServer3DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetState {
    mut:
    virt_body_get_state(body RID, state PhysicsServer3DBodyState) Variant
}

pub fn (r &PhysicsServer3DExtension) ubody_get_state(body RID, state PhysicsServer3DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyApplyCentralImpulse {
    mut:
    virt_body_apply_central_impulse(body RID, impulse Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_apply_central_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyApplyImpulse {
    mut:
    virt_body_apply_impulse(body RID, impulse Vector3, position Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_apply_impulse(body RID, impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyApplyTorqueImpulse {
    mut:
    virt_body_apply_torque_impulse(body RID, impulse Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_apply_torque_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_apply_torque_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyApplyCentralForce {
    mut:
    virt_body_apply_central_force(body RID, force Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_apply_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_apply_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyApplyForce {
    mut:
    virt_body_apply_force(body RID, force Vector3, position Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_apply_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_apply_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyApplyTorque {
    mut:
    virt_body_apply_torque(body RID, torque Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_apply_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_apply_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyAddConstantCentralForce {
    mut:
    virt_body_add_constant_central_force(body RID, force Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_add_constant_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_add_constant_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyAddConstantForce {
    mut:
    virt_body_add_constant_force(body RID, force Vector3, position Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_add_constant_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_add_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyAddConstantTorque {
    mut:
    virt_body_add_constant_torque(body RID, torque Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_add_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_add_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetConstantForce {
    mut:
    virt_body_set_constant_force(body RID, force Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_constant_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetConstantForce {
    mut:
    virt_body_get_constant_force(body RID) Vector3
}

pub fn (r &PhysicsServer3DExtension) ubody_get_constant_force(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetConstantTorque {
    mut:
    virt_body_set_constant_torque(body RID, torque Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetConstantTorque {
    mut:
    virt_body_get_constant_torque(body RID) Vector3
}

pub fn (r &PhysicsServer3DExtension) ubody_get_constant_torque(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetAxisVelocity {
    mut:
    virt_body_set_axis_velocity(body RID, axis_velocity Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_axis_velocity(body RID, axis_velocity Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_axis_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&axis_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetAxisLock {
    mut:
    virt_body_set_axis_lock(body RID, axis PhysicsServer3DBodyAxis, gdlock bool)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_axis_lock(body RID, axis PhysicsServer3DBodyAxis, gdlock bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_axis_lock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    args[2] = unsafe{voidptr(&gdlock)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyIsAxisLocked {
    mut:
    virt_body_is_axis_locked(body RID, axis PhysicsServer3DBodyAxis) bool
}

pub fn (r &PhysicsServer3DExtension) ubody_is_axis_locked(body RID, axis PhysicsServer3DBodyAxis) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_is_axis_locked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyAddCollisionException {
    mut:
    virt_body_add_collision_exception(body RID, excepted_body RID)
}

pub fn (mut r PhysicsServer3DExtension) ubody_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_add_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyRemoveCollisionException {
    mut:
    virt_body_remove_collision_exception(body RID, excepted_body RID)
}

pub fn (mut r PhysicsServer3DExtension) ubody_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_remove_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetCollisionExceptions {
    mut:
    virt_body_get_collision_exceptions(body RID) Array
}

pub fn (r &PhysicsServer3DExtension) ubody_get_collision_exceptions(body RID) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_collision_exceptions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetMaxContactsReported {
    mut:
    virt_body_set_max_contacts_reported(body RID, amount i32)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_max_contacts_reported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetMaxContactsReported {
    mut:
    virt_body_get_max_contacts_reported(body RID) i32
}

pub fn (r &PhysicsServer3DExtension) ubody_get_max_contacts_reported(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_max_contacts_reported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetContactsReportedDepthThreshold {
    mut:
    virt_body_set_contacts_reported_depth_threshold(body RID, threshold f64)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_contacts_reported_depth_threshold(body RID, threshold f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_contacts_reported_depth_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyGetContactsReportedDepthThreshold {
    mut:
    virt_body_get_contacts_reported_depth_threshold(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) ubody_get_contacts_reported_depth_threshold(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_contacts_reported_depth_threshold")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetOmitForceIntegration {
    mut:
    virt_body_set_omit_force_integration(body RID, enable bool)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_omit_force_integration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyIsOmittingForceIntegration {
    mut:
    virt_body_is_omitting_force_integration(body RID) bool
}

pub fn (r &PhysicsServer3DExtension) ubody_is_omitting_force_integration(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_is_omitting_force_integration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodySetStateSyncCallback {
    mut:
    virt_body_set_state_sync_callback(body RID, callable Callable)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_state_sync_callback(body RID, callable Callable) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_state_sync_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetForceIntegrationCallback {
    mut:
    virt_body_set_force_integration_callback(body RID, callable Callable, userdata Variant)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_force_integration_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&callable)}
    args[2] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodySetRayPickable {
    mut:
    virt_body_set_ray_pickable(body RID, enable bool)
}

pub fn (mut r PhysicsServer3DExtension) ubody_set_ray_pickable(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionBodyTestMotion {
    mut:
    virt_body_test_motion(body RID, from Transform3D, motion Vector3, margin f64, max_collisions i32, collide_separation_ray bool, recovery_as_collision bool, result &PhysicsServer3DExtensionMotionResult) bool
}

pub fn (r &PhysicsServer3DExtension) ubody_test_motion(body RID, from Transform3D, motion Vector3, margin f64, max_collisions i32, collide_separation_ray bool, recovery_as_collision bool, result &PhysicsServer3DExtensionMotionResult) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_test_motion")
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionBodyGetDirectState {
    mut:
    virt_body_get_direct_state(body RID) PhysicsDirectBodyState3D
}

pub fn (mut r PhysicsServer3DExtension) ubody_get_direct_state(body RID) PhysicsDirectBodyState3D {
    mut object_out := PhysicsDirectBodyState3D{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_body_get_direct_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodyCreate {
    mut:
    virt_soft_body_create() RID
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodyUpdateRenderingServer {
    mut:
    virt_soft_body_update_rendering_server(body RID, rendering_server_handler PhysicsServer3DRenderingServerHandler)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_update_rendering_server(body RID, rendering_server_handler PhysicsServer3DRenderingServerHandler) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_update_rendering_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = rendering_server_handler.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodySetSpace {
    mut:
    virt_soft_body_set_space(body RID, space RID)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetSpace {
    mut:
    virt_soft_body_get_space(body RID) RID
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetRayPickable {
    mut:
    virt_soft_body_set_ray_pickable(body RID, enable bool)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_ray_pickable(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodySetCollisionLayer {
    mut:
    virt_soft_body_set_collision_layer(body RID, layer u32)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_collision_layer(body RID, layer u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetCollisionLayer {
    mut:
    virt_soft_body_get_collision_layer(body RID) u32
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_collision_layer(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetCollisionMask {
    mut:
    virt_soft_body_set_collision_mask(body RID, mask u32)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_collision_mask(body RID, mask u32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetCollisionMask {
    mut:
    virt_soft_body_get_collision_mask(body RID) u32
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_collision_mask(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodyAddCollisionException {
    mut:
    virt_soft_body_add_collision_exception(body RID, body_b RID)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_add_collision_exception(body RID, body_b RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_add_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyRemoveCollisionException {
    mut:
    virt_soft_body_remove_collision_exception(body RID, body_b RID)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_remove_collision_exception(body RID, body_b RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_remove_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetCollisionExceptions {
    mut:
    virt_soft_body_get_collision_exceptions(body RID) Array
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_collision_exceptions(body RID) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_collision_exceptions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetState {
    mut:
    virt_soft_body_set_state(body RID, state PhysicsServer3DBodyState, variant Variant)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_state(body RID, state PhysicsServer3DBodyState, variant Variant) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    args[2] = unsafe{voidptr(&variant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetState {
    mut:
    virt_soft_body_get_state(body RID, state PhysicsServer3DBodyState) Variant
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_state(body RID, state PhysicsServer3DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetTransform {
    mut:
    virt_soft_body_set_transform(body RID, transform Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_transform(body RID, transform Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodySetSimulationPrecision {
    mut:
    virt_soft_body_set_simulation_precision(body RID, simulation_precision i32)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_simulation_precision(body RID, simulation_precision i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_simulation_precision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&simulation_precision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetSimulationPrecision {
    mut:
    virt_soft_body_get_simulation_precision(body RID) i32
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_simulation_precision(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_simulation_precision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetTotalMass {
    mut:
    virt_soft_body_set_total_mass(body RID, total_mass f64)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_total_mass(body RID, total_mass f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_total_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&total_mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetTotalMass {
    mut:
    virt_soft_body_get_total_mass(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_total_mass(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_total_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetLinearStiffness {
    mut:
    virt_soft_body_set_linear_stiffness(body RID, linear_stiffness f64)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_linear_stiffness(body RID, linear_stiffness f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_linear_stiffness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&linear_stiffness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetLinearStiffness {
    mut:
    virt_soft_body_get_linear_stiffness(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_linear_stiffness(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_linear_stiffness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetPressureCoefficient {
    mut:
    virt_soft_body_set_pressure_coefficient(body RID, pressure_coefficient f64)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_pressure_coefficient(body RID, pressure_coefficient f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_pressure_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&pressure_coefficient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetPressureCoefficient {
    mut:
    virt_soft_body_get_pressure_coefficient(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_pressure_coefficient(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_pressure_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetDampingCoefficient {
    mut:
    virt_soft_body_set_damping_coefficient(body RID, damping_coefficient f64)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_damping_coefficient(body RID, damping_coefficient f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_damping_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&damping_coefficient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetDampingCoefficient {
    mut:
    virt_soft_body_get_damping_coefficient(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_damping_coefficient(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_damping_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetDragCoefficient {
    mut:
    virt_soft_body_set_drag_coefficient(body RID, drag_coefficient f64)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_drag_coefficient(body RID, drag_coefficient f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_drag_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&drag_coefficient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetDragCoefficient {
    mut:
    virt_soft_body_get_drag_coefficient(body RID) f64
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_drag_coefficient(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_drag_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodySetMesh {
    mut:
    virt_soft_body_set_mesh(body RID, mesh RID)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_set_mesh(body RID, mesh RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetBounds {
    mut:
    virt_soft_body_get_bounds(body RID) AABB
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_bounds(body RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodyMovePoint {
    mut:
    virt_soft_body_move_point(body RID, point_index i32, global_position Vector3)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_move_point(body RID, point_index i32, global_position Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_move_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&point_index)}
    args[2] = unsafe{voidptr(&global_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyGetPointGlobalPosition {
    mut:
    virt_soft_body_get_point_global_position(body RID, point_index i32) Vector3
}

pub fn (r &PhysicsServer3DExtension) usoft_body_get_point_global_position(body RID, point_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_get_point_global_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionSoftBodyRemoveAllPinnedPoints {
    mut:
    virt_soft_body_remove_all_pinned_points(body RID)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_remove_all_pinned_points(body RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_remove_all_pinned_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyPinPoint {
    mut:
    virt_soft_body_pin_point(body RID, point_index i32, pin bool)
}

pub fn (mut r PhysicsServer3DExtension) usoft_body_pin_point(body RID, point_index i32, pin bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_pin_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&point_index)}
    args[2] = unsafe{voidptr(&pin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSoftBodyIsPointPinned {
    mut:
    virt_soft_body_is_point_pinned(body RID, point_index i32) bool
}

pub fn (r &PhysicsServer3DExtension) usoft_body_is_point_pinned(body RID, point_index i32) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_soft_body_is_point_pinned")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointCreate {
    mut:
    virt_joint_create() RID
}

pub fn (mut r PhysicsServer3DExtension) ujoint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointClear {
    mut:
    virt_joint_clear(joint RID)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_clear(joint RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionJointMakePin {
    mut:
    virt_joint_make_pin(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_make_pin(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_make_pin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionPinJointSetParam {
    mut:
    virt_pin_joint_set_param(joint RID, param PhysicsServer3DPinJointParam, value f64)
}

pub fn (mut r PhysicsServer3DExtension) upin_joint_set_param(joint RID, param PhysicsServer3DPinJointParam, value f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_pin_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionPinJointGetParam {
    mut:
    virt_pin_joint_get_param(joint RID, param PhysicsServer3DPinJointParam) f64
}

pub fn (r &PhysicsServer3DExtension) upin_joint_get_param(joint RID, param PhysicsServer3DPinJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_pin_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionPinJointSetLocalA {
    mut:
    virt_pin_joint_set_local_a(joint RID, local_a Vector3)
}

pub fn (mut r PhysicsServer3DExtension) upin_joint_set_local_a(joint RID, local_a Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_pin_joint_set_local_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&local_a)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionPinJointGetLocalA {
    mut:
    virt_pin_joint_get_local_a(joint RID) Vector3
}

pub fn (r &PhysicsServer3DExtension) upin_joint_get_local_a(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_pin_joint_get_local_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionPinJointSetLocalB {
    mut:
    virt_pin_joint_set_local_b(joint RID, local_b Vector3)
}

pub fn (mut r PhysicsServer3DExtension) upin_joint_set_local_b(joint RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_pin_joint_set_local_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&local_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionPinJointGetLocalB {
    mut:
    virt_pin_joint_get_local_b(joint RID) Vector3
}

pub fn (r &PhysicsServer3DExtension) upin_joint_get_local_b(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_pin_joint_get_local_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointMakeHinge {
    mut:
    virt_joint_make_hinge(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_make_hinge(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_make_hinge")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&hinge_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&hinge_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionJointMakeHingeSimple {
    mut:
    virt_joint_make_hinge_simple(joint RID, body_a RID, pivot_a Vector3, axis_a Vector3, body_b RID, pivot_b Vector3, axis_b Vector3)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_make_hinge_simple(joint RID, body_a RID, pivot_a Vector3, axis_a Vector3, body_b RID, pivot_b Vector3, axis_b Vector3) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_make_hinge_simple")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&pivot_a)}
    args[3] = unsafe{voidptr(&axis_a)}
    args[4] = unsafe{voidptr(&body_b)}
    args[5] = unsafe{voidptr(&pivot_b)}
    args[6] = unsafe{voidptr(&axis_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionHingeJointSetParam {
    mut:
    virt_hinge_joint_set_param(joint RID, param PhysicsServer3DHingeJointParam, value f64)
}

pub fn (mut r PhysicsServer3DExtension) uhinge_joint_set_param(joint RID, param PhysicsServer3DHingeJointParam, value f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_hinge_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionHingeJointGetParam {
    mut:
    virt_hinge_joint_get_param(joint RID, param PhysicsServer3DHingeJointParam) f64
}

pub fn (r &PhysicsServer3DExtension) uhinge_joint_get_param(joint RID, param PhysicsServer3DHingeJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_hinge_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionHingeJointSetFlag {
    mut:
    virt_hinge_joint_set_flag(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool)
}

pub fn (mut r PhysicsServer3DExtension) uhinge_joint_set_flag(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_hinge_joint_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    args[2] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionHingeJointGetFlag {
    mut:
    virt_hinge_joint_get_flag(joint RID, flag PhysicsServer3DHingeJointFlag) bool
}

pub fn (r &PhysicsServer3DExtension) uhinge_joint_get_flag(joint RID, flag PhysicsServer3DHingeJointFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_hinge_joint_get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointMakeSlider {
    mut:
    virt_joint_make_slider(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_make_slider(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_make_slider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_ref_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_ref_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSliderJointSetParam {
    mut:
    virt_slider_joint_set_param(joint RID, param PhysicsServer3DSliderJointParam, value f64)
}

pub fn (mut r PhysicsServer3DExtension) uslider_joint_set_param(joint RID, param PhysicsServer3DSliderJointParam, value f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_slider_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSliderJointGetParam {
    mut:
    virt_slider_joint_get_param(joint RID, param PhysicsServer3DSliderJointParam) f64
}

pub fn (r &PhysicsServer3DExtension) uslider_joint_get_param(joint RID, param PhysicsServer3DSliderJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_slider_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointMakeConeTwist {
    mut:
    virt_joint_make_cone_twist(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_make_cone_twist(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_make_cone_twist")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_ref_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_ref_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionConeTwistJointSetParam {
    mut:
    virt_cone_twist_joint_set_param(joint RID, param PhysicsServer3DConeTwistJointParam, value f64)
}

pub fn (mut r PhysicsServer3DExtension) ucone_twist_joint_set_param(joint RID, param PhysicsServer3DConeTwistJointParam, value f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_cone_twist_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionConeTwistJointGetParam {
    mut:
    virt_cone_twist_joint_get_param(joint RID, param PhysicsServer3DConeTwistJointParam) f64
}

pub fn (r &PhysicsServer3DExtension) ucone_twist_joint_get_param(joint RID, param PhysicsServer3DConeTwistJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_cone_twist_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointMakeGeneric6dof {
    mut:
    virt_joint_make_generic_6dof(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_make_generic_6dof(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_make_generic_6dof")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_ref_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_ref_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionGeneric6dofJointSetParam {
    mut:
    virt_generic_6dof_joint_set_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f64)
}

pub fn (mut r PhysicsServer3DExtension) ugeneric_6dof_joint_set_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_generic_6dof_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_param := i64(param)
    args[2] = unsafe{voidptr(&i64_param)}
    args[3] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionGeneric6dofJointGetParam {
    mut:
    virt_generic_6dof_joint_get_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f64
}

pub fn (r &PhysicsServer3DExtension) ugeneric_6dof_joint_get_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_generic_6dof_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_param := i64(param)
    args[2] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionGeneric6dofJointSetFlag {
    mut:
    virt_generic_6dof_joint_set_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool)
}

pub fn (mut r PhysicsServer3DExtension) ugeneric_6dof_joint_set_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_generic_6dof_joint_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_flag := i64(flag)
    args[2] = unsafe{voidptr(&i64_flag)}
    args[3] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionGeneric6dofJointGetFlag {
    mut:
    virt_generic_6dof_joint_get_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool
}

pub fn (r &PhysicsServer3DExtension) ugeneric_6dof_joint_get_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_generic_6dof_joint_get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_flag := i64(flag)
    args[2] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointGetType {
    mut:
    virt_joint_get_type(joint RID) PhysicsServer3DJointType
}

pub fn (r &PhysicsServer3DExtension) ujoint_get_type(joint RID) PhysicsServer3DJointType {
    mut object_out := i64(PhysicsServer3DJointType.joint_type_pin)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer3DJointType(object_out)}
}
pub interface IPhysicsServer3DExtensionJointSetSolverPriority {
    mut:
    virt_joint_set_solver_priority(joint RID, priority i32)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_set_solver_priority(joint RID, priority i32) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_set_solver_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionJointGetSolverPriority {
    mut:
    virt_joint_get_solver_priority(joint RID) i32
}

pub fn (r &PhysicsServer3DExtension) ujoint_get_solver_priority(joint RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_get_solver_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionJointDisableCollisionsBetweenBodies {
    mut:
    virt_joint_disable_collisions_between_bodies(joint RID, disable bool)
}

pub fn (mut r PhysicsServer3DExtension) ujoint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_disable_collisions_between_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionJointIsDisabledCollisionsBetweenBodies {
    mut:
    virt_joint_is_disabled_collisions_between_bodies(joint RID) bool
}

pub fn (r &PhysicsServer3DExtension) ujoint_is_disabled_collisions_between_bodies(joint RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_joint_is_disabled_collisions_between_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionFreeRid {
    mut:
    virt_free_rid(rid RID)
}

pub fn (mut r PhysicsServer3DExtension) ufree_rid(rid RID) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSetActive {
    mut:
    virt_set_active(active bool)
}

pub fn (mut r PhysicsServer3DExtension) uset_active(active bool) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionInit {
    mut:
    virt_init()
}

pub fn (mut r PhysicsServer3DExtension) uinit() {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_init")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionStep {
    mut:
    virt_step(step f64)
}

pub fn (mut r PhysicsServer3DExtension) ustep(step f64) {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionSync {
    mut:
    virt_sync()
}

pub fn (mut r PhysicsServer3DExtension) usync() {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionFlushQueries {
    mut:
    virt_flush_queries()
}

pub fn (mut r PhysicsServer3DExtension) uflush_queries() {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_flush_queries")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionEndSync {
    mut:
    virt_end_sync()
}

pub fn (mut r PhysicsServer3DExtension) uend_sync() {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_end_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionFinish {
    mut:
    virt_finish()
}

pub fn (mut r PhysicsServer3DExtension) ufinish() {
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DExtensionIsFlushingQueries {
    mut:
    virt_is_flushing_queries() bool
}

pub fn (r &PhysicsServer3DExtension) uis_flushing_queries() bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_is_flushing_queries")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsServer3DExtensionGetProcessInfo {
    mut:
    virt_get_process_info(process_info PhysicsServer3DProcessInfo) i32
}

pub fn (mut r PhysicsServer3DExtension) uget_process_info(process_info PhysicsServer3DProcessInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("_get_process_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    i64_process_info := i64(process_info)
    args[0] = unsafe{voidptr(&i64_process_info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3DExtension) body_test_motion_is_excluding_body(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("body_test_motion_is_excluding_body")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3DExtension) body_test_motion_is_excluding_object(object u64) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3DExtension")
    fnname := StringName.new("body_test_motion_is_excluding_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

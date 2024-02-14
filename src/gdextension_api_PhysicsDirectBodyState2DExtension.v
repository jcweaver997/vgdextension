module vgdextension

@[noinit]
pub struct PhysicsDirectBodyState2DExtension {
    PhysicsDirectBodyState2D
}

pub interface IPhysicsDirectBodyState2DExtensionGetTotalGravity {
    mut:
    virt_get_total_gravity() Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_total_gravity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_total_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetTotalLinearDamp {
    mut:
    virt_get_total_linear_damp() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_total_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_total_linear_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetTotalAngularDamp {
    mut:
    virt_get_total_angular_damp() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_total_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_total_angular_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetCenterOfMass {
    mut:
    virt_get_center_of_mass() Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_center_of_mass() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_center_of_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetCenterOfMassLocal {
    mut:
    virt_get_center_of_mass_local() Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_center_of_mass_local() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_center_of_mass_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetInverseMass {
    mut:
    virt_get_inverse_mass() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_inverse_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_inverse_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetInverseInertia {
    mut:
    virt_get_inverse_inertia() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_inverse_inertia() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_inverse_inertia")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionSetLinearVelocity {
    mut:
    virt_set_linear_velocity(velocity Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uset_linear_velocity(velocity Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_set_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionGetLinearVelocity {
    mut:
    virt_get_linear_velocity() Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_linear_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionSetAngularVelocity {
    mut:
    virt_set_angular_velocity(velocity f64)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uset_angular_velocity(velocity f64) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_set_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionGetAngularVelocity {
    mut:
    virt_get_angular_velocity() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_angular_velocity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionSetTransform {
    mut:
    virt_set_transform(transform Transform2D)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uset_transform(transform Transform2D) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionGetTransform {
    mut:
    virt_get_transform() Transform2D
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetVelocityAtLocalPosition {
    mut:
    virt_get_velocity_at_local_position(local_position Vector2) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_velocity_at_local_position(local_position Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_velocity_at_local_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionApplyCentralImpulse {
    mut:
    virt_apply_central_impulse(impulse Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_central_impulse(impulse Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionApplyImpulse {
    mut:
    virt_apply_impulse(impulse Vector2, position Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_impulse(impulse Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionApplyTorqueImpulse {
    mut:
    virt_apply_torque_impulse(impulse f64)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_torque_impulse(impulse f64) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_apply_torque_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionApplyCentralForce {
    mut:
    virt_apply_central_force(force Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_central_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_apply_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionApplyForce {
    mut:
    virt_apply_force(force Vector2, position Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_force(force Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_apply_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionApplyTorque {
    mut:
    virt_apply_torque(torque f64)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_torque(torque f64) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_apply_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionAddConstantCentralForce {
    mut:
    virt_add_constant_central_force(force Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uadd_constant_central_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_add_constant_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionAddConstantForce {
    mut:
    virt_add_constant_force(force Vector2, position Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uadd_constant_force(force Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_add_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionAddConstantTorque {
    mut:
    virt_add_constant_torque(torque f64)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uadd_constant_torque(torque f64) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_add_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionSetConstantForce {
    mut:
    virt_set_constant_force(force Vector2)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uset_constant_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_set_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionGetConstantForce {
    mut:
    virt_get_constant_force() Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_constant_force() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionSetConstantTorque {
    mut:
    virt_set_constant_torque(torque f64)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uset_constant_torque(torque f64) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_set_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionGetConstantTorque {
    mut:
    virt_get_constant_torque() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_constant_torque() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionSetSleepState {
    mut:
    virt_set_sleep_state(enabled bool)
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uset_sleep_state(enabled bool) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_set_sleep_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionIsSleeping {
    mut:
    virt_is_sleeping() bool
}

pub fn (r &PhysicsDirectBodyState2DExtension) uis_sleeping() bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_is_sleeping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactCount {
    mut:
    virt_get_contact_count() i32
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalPosition {
    mut:
    virt_get_contact_local_position(contact_idx i32) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_local_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalNormal {
    mut:
    virt_get_contact_local_normal(contact_idx i32) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_normal(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_local_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalShape {
    mut:
    virt_get_contact_local_shape(contact_idx i32) i32
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_local_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactLocalVelocityAtPosition {
    mut:
    virt_get_contact_local_velocity_at_position(contact_idx i32) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_velocity_at_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_local_velocity_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactCollider {
    mut:
    virt_get_contact_collider(contact_idx i32) RID
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider(contact_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderPosition {
    mut:
    virt_get_contact_collider_position(contact_idx i32) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_collider_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderId {
    mut:
    virt_get_contact_collider_id(contact_idx i32) u64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_id(contact_idx i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_collider_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderObject {
    mut:
    virt_get_contact_collider_object(contact_idx i32) Object
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_object(contact_idx i32) Object {
    mut object_out := Object{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_collider_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderShape {
    mut:
    virt_get_contact_collider_shape(contact_idx i32) i32
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactColliderVelocityAtPosition {
    mut:
    virt_get_contact_collider_velocity_at_position(contact_idx i32) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_velocity_at_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_collider_velocity_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetContactImpulse {
    mut:
    virt_get_contact_impulse(contact_idx i32) Vector2
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_impulse(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_contact_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionGetStep {
    mut:
    virt_get_step() f64
}

pub fn (r &PhysicsDirectBodyState2DExtension) uget_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState2DExtensionIntegrateForces {
    mut:
    virt_integrate_forces()
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uintegrate_forces() {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_integrate_forces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState2DExtensionGetSpaceState {
    mut:
    virt_get_space_state() PhysicsDirectSpaceState2D
}

pub fn (mut r PhysicsDirectBodyState2DExtension) uget_space_state() PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    fnname := StringName.new("_get_space_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

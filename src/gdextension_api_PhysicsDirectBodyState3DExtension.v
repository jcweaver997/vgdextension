module vgdextension

@[noinit]
pub struct PhysicsDirectBodyState3DExtension {
    PhysicsDirectBodyState3D
}

pub interface IPhysicsDirectBodyState3DExtensionGetTotalGravity {
    mut:
    virt_get_total_gravity() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_total_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_total_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetTotalLinearDamp {
    mut:
    virt_get_total_linear_damp() f64
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_total_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_total_linear_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetTotalAngularDamp {
    mut:
    virt_get_total_angular_damp() f64
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_total_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_total_angular_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetCenterOfMass {
    mut:
    virt_get_center_of_mass() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_center_of_mass() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_center_of_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetCenterOfMassLocal {
    mut:
    virt_get_center_of_mass_local() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_center_of_mass_local() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_center_of_mass_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetPrincipalInertiaAxes {
    mut:
    virt_get_principal_inertia_axes() Basis
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_principal_inertia_axes() Basis {
    mut object_out := Basis{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_principal_inertia_axes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetInverseMass {
    mut:
    virt_get_inverse_mass() f64
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_inverse_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_inverse_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetInverseInertia {
    mut:
    virt_get_inverse_inertia() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_inverse_inertia() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_inverse_inertia")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetInverseInertiaTensor {
    mut:
    virt_get_inverse_inertia_tensor() Basis
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_inverse_inertia_tensor() Basis {
    mut object_out := Basis{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_inverse_inertia_tensor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionSetLinearVelocity {
    mut:
    virt_set_linear_velocity(velocity Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uset_linear_velocity(velocity Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_set_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionGetLinearVelocity {
    mut:
    virt_get_linear_velocity() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionSetAngularVelocity {
    mut:
    virt_set_angular_velocity(velocity Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uset_angular_velocity(velocity Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_set_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionGetAngularVelocity {
    mut:
    virt_get_angular_velocity() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionSetTransform {
    mut:
    virt_set_transform(transform Transform3D)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uset_transform(transform Transform3D) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionGetTransform {
    mut:
    virt_get_transform() Transform3D
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetVelocityAtLocalPosition {
    mut:
    virt_get_velocity_at_local_position(local_position Vector3) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_velocity_at_local_position(local_position Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_velocity_at_local_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionApplyCentralImpulse {
    mut:
    virt_apply_central_impulse(impulse Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_central_impulse(impulse Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionApplyImpulse {
    mut:
    virt_apply_impulse(impulse Vector3, position Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_impulse(impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionApplyTorqueImpulse {
    mut:
    virt_apply_torque_impulse(impulse Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_torque_impulse(impulse Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_apply_torque_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionApplyCentralForce {
    mut:
    virt_apply_central_force(force Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_central_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_apply_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionApplyForce {
    mut:
    virt_apply_force(force Vector3, position Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_force(force Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_apply_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionApplyTorque {
    mut:
    virt_apply_torque(torque Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_apply_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionAddConstantCentralForce {
    mut:
    virt_add_constant_central_force(force Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uadd_constant_central_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_add_constant_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionAddConstantForce {
    mut:
    virt_add_constant_force(force Vector3, position Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uadd_constant_force(force Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_add_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionAddConstantTorque {
    mut:
    virt_add_constant_torque(torque Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uadd_constant_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_add_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionSetConstantForce {
    mut:
    virt_set_constant_force(force Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uset_constant_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_set_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionGetConstantForce {
    mut:
    virt_get_constant_force() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_constant_force() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionSetConstantTorque {
    mut:
    virt_set_constant_torque(torque Vector3)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uset_constant_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_set_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionGetConstantTorque {
    mut:
    virt_get_constant_torque() Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_constant_torque() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionSetSleepState {
    mut:
    virt_set_sleep_state(enabled bool)
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uset_sleep_state(enabled bool) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_set_sleep_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionIsSleeping {
    mut:
    virt_is_sleeping() bool
}

pub fn (r &PhysicsDirectBodyState3DExtension) uis_sleeping() bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_is_sleeping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactCount {
    mut:
    virt_get_contact_count() i32
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalPosition {
    mut:
    virt_get_contact_local_position(contact_idx i32) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_local_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalNormal {
    mut:
    virt_get_contact_local_normal(contact_idx i32) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_normal(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_local_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactImpulse {
    mut:
    virt_get_contact_impulse(contact_idx i32) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_impulse(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalShape {
    mut:
    virt_get_contact_local_shape(contact_idx i32) i32
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_local_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactLocalVelocityAtPosition {
    mut:
    virt_get_contact_local_velocity_at_position(contact_idx i32) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_velocity_at_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_local_velocity_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactCollider {
    mut:
    virt_get_contact_collider(contact_idx i32) RID
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider(contact_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderPosition {
    mut:
    virt_get_contact_collider_position(contact_idx i32) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_collider_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderId {
    mut:
    virt_get_contact_collider_id(contact_idx i32) u64
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_id(contact_idx i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_collider_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderObject {
    mut:
    virt_get_contact_collider_object(contact_idx i32) Object
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_object(contact_idx i32) Object {
    mut object_out := Object{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_collider_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderShape {
    mut:
    virt_get_contact_collider_shape(contact_idx i32) i32
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetContactColliderVelocityAtPosition {
    mut:
    virt_get_contact_collider_velocity_at_position(contact_idx i32) Vector3
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_velocity_at_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_contact_collider_velocity_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionGetStep {
    mut:
    virt_get_step() f64
}

pub fn (r &PhysicsDirectBodyState3DExtension) uget_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IPhysicsDirectBodyState3DExtensionIntegrateForces {
    mut:
    virt_integrate_forces()
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uintegrate_forces() {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_integrate_forces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsDirectBodyState3DExtensionGetSpaceState {
    mut:
    virt_get_space_state() PhysicsDirectSpaceState3D
}

pub fn (mut r PhysicsDirectBodyState3DExtension) uget_space_state() PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    fnname := StringName.new("_get_space_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

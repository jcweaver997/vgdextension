module vgdextension

pub enum RigidBody3DFreezeMode {
    freeze_mode_static = 0
    freeze_mode_kinematic = 1
}

pub enum RigidBody3DCenterOfMassMode {
    center_of_mass_mode_auto = 0
    center_of_mass_mode_custom = 1
}

pub enum RigidBody3DDampMode {
    damp_mode_combine = 0
    damp_mode_replace = 1
}

pub struct RigidBody3D {
    PhysicsBody3D
}

pub interface IRigidBody3DIntegrateForces {
    mut:
    virt_integrate_forces(state PhysicsDirectBodyState3D)
}

pub fn (mut r RigidBody3D) uintegrate_forces(state PhysicsDirectBodyState3D) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("_integrate_forces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) set_mass(mass f64) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_inertia(inertia Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&inertia)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_inertia() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_center_of_mass_mode(mode RigidBody3DCenterOfMassMode) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_center_of_mass_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3625866032)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_center_of_mass_mode() RigidBody3DCenterOfMassMode {
    mut object_out := RigidBody3DCenterOfMassMode.center_of_mass_mode_auto
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_of_mass_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 237405040)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_center_of_mass(center_of_mass Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&center_of_mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_center_of_mass() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_physics_material_override(physics_material_override PhysicsMaterial) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
    mut args := unsafe { [1]voidptr{} }
    args[0] = physics_material_override.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_physics_material_override() PhysicsMaterial {
    mut object_out := PhysicsMaterial{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_linear_velocity(linear_velocity Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_angular_velocity(angular_velocity Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RigidBody3D) get_inverse_inertia_tensor() Basis {
    mut object_out := Basis{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inverse_inertia_tensor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_gravity_scale(gravity_scale f64) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gravity_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_gravity_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_linear_damp_mode(linear_damp_mode RigidBody3DDampMode) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1802035050)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_damp_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_linear_damp_mode() RigidBody3DDampMode {
    mut object_out := RigidBody3DDampMode.damp_mode_combine
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1366206940)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_angular_damp_mode(angular_damp_mode RigidBody3DDampMode) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1802035050)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_damp_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_angular_damp_mode() RigidBody3DDampMode {
    mut object_out := RigidBody3DDampMode.damp_mode_combine
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1366206940)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_linear_damp(linear_damp f64) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_damp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_angular_damp(angular_damp f64) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_damp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_max_contacts_reported(amount i32) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_max_contacts_reported() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RigidBody3D) get_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_use_custom_integrator(enable bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_custom_integrator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) is_using_custom_integrator() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_custom_integrator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_contact_monitor(enabled bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_contact_monitor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) is_contact_monitor_enabled() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_contact_monitor_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_use_continuous_collision_detection(enable bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_continuous_collision_detection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) is_using_continuous_collision_detection() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_continuous_collision_detection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_axis_velocity(axis_velocity Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) apply_central_impulse(impulse Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) apply_impulse(impulse Vector3, position Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) apply_torque_impulse(impulse Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) apply_central_force(force Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) apply_force(force Vector3, position Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) apply_torque(torque Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) add_constant_central_force(force Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) add_constant_force(force Vector3, position Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) add_constant_torque(torque Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody3D) set_constant_force(force Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_constant_force() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_constant_torque(torque Vector3) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_constant_torque() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_sleeping(sleeping bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sleeping)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) is_sleeping() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_can_sleep(able_to_sleep bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_can_sleep")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&able_to_sleep)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) is_able_to_sleep() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_able_to_sleep")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_lock_rotation_enabled(lock_rotation bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_lock_rotation_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lock_rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) is_lock_rotation_enabled() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_lock_rotation_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_freeze_enabled(freeze_mode bool) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_freeze_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&freeze_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) is_freeze_enabled() bool {
    mut object_out := false
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_freeze_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody3D) set_freeze_mode(freeze_mode RigidBody3DFreezeMode) {
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_freeze_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1319914653)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&freeze_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody3D) get_freeze_mode() RigidBody3DFreezeMode {
    mut object_out := RigidBody3DFreezeMode.freeze_mode_static
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_freeze_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2008423905)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RigidBody3D) get_colliding_bodies() Array {
    mut object_out := Array{}
    classname := StringName.new("RigidBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_colliding_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

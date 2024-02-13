module vgdextension

pub enum RigidBody2DFreezeMode {
    freeze_mode_static = 0
    freeze_mode_kinematic = 1
}

pub enum RigidBody2DCenterOfMassMode {
    center_of_mass_mode_auto = 0
    center_of_mass_mode_custom = 1
}

pub enum RigidBody2DDampMode {
    damp_mode_combine = 0
    damp_mode_replace = 1
}

pub enum RigidBody2DCCDMode {
    ccd_mode_disabled = 0
    ccd_mode_cast_ray = 1
    ccd_mode_cast_shape = 2
}

@[noinit]
pub struct RigidBody2D {
    PhysicsBody2D
}

pub interface IRigidBody2DIntegrateForces {
    mut:
    virt_integrate_forces(state PhysicsDirectBodyState2D)
}

pub fn (mut r RigidBody2D) uintegrate_forces(state PhysicsDirectBodyState2D) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("_integrate_forces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) set_mass(mass f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RigidBody2D) get_inertia() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_inertia(inertia f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&inertia)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) set_center_of_mass_mode(mode RigidBody2DCenterOfMassMode) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_center_of_mass_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757235706)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_center_of_mass_mode() RigidBody2DCenterOfMassMode {
    mut object_out := RigidBody2DCenterOfMassMode.center_of_mass_mode_auto
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_of_mass_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3277132817)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_center_of_mass(center_of_mass Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&center_of_mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_center_of_mass() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_physics_material_override(physics_material_override PhysicsMaterial) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
    mut args := unsafe { [1]voidptr{} }
    args[0] = physics_material_override.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_physics_material_override() PhysicsMaterial {
    mut object_out := PhysicsMaterial{}
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_gravity_scale(gravity_scale f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gravity_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_gravity_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_linear_damp_mode(linear_damp_mode RigidBody2DDampMode) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406533708)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_damp_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_linear_damp_mode() RigidBody2DDampMode {
    mut object_out := RigidBody2DDampMode.damp_mode_combine
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2970511462)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_angular_damp_mode(angular_damp_mode RigidBody2DDampMode) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406533708)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_damp_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_angular_damp_mode() RigidBody2DDampMode {
    mut object_out := RigidBody2DDampMode.damp_mode_combine
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2970511462)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_linear_damp(linear_damp f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_damp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_angular_damp(angular_damp f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_damp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_linear_velocity(linear_velocity Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_linear_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_angular_velocity(angular_velocity f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_angular_velocity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_max_contacts_reported(amount i32) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_max_contacts_reported() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RigidBody2D) get_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_use_custom_integrator(enable bool) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_custom_integrator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) is_using_custom_integrator() bool {
    mut object_out := false
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_custom_integrator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_contact_monitor(enabled bool) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_contact_monitor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) is_contact_monitor_enabled() bool {
    mut object_out := false
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_contact_monitor_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_continuous_collision_detection_mode(mode RigidBody2DCCDMode) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_continuous_collision_detection_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1000241384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_continuous_collision_detection_mode() RigidBody2DCCDMode {
    mut object_out := RigidBody2DCCDMode.ccd_mode_disabled
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_continuous_collision_detection_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 815214376)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_axis_velocity(axis_velocity Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) apply_central_impulse(impulse Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3862383994)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) apply_impulse(impulse Vector2, position Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 496058220)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) apply_torque_impulse(torque f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) apply_central_force(force Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) apply_force(force Vector2, position Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 496058220)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) apply_torque(torque f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) add_constant_central_force(force Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) add_constant_force(force Vector2, position Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 496058220)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) add_constant_torque(torque f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r RigidBody2D) set_constant_force(force Vector2) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_constant_force() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_constant_torque(torque f64) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_constant_torque() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_sleeping(sleeping bool) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sleeping)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) is_sleeping() bool {
    mut object_out := false
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_can_sleep(able_to_sleep bool) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_can_sleep")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&able_to_sleep)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) is_able_to_sleep() bool {
    mut object_out := false
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_able_to_sleep")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_lock_rotation_enabled(lock_rotation bool) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_lock_rotation_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lock_rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) is_lock_rotation_enabled() bool {
    mut object_out := false
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_lock_rotation_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_freeze_enabled(freeze_mode bool) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_freeze_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&freeze_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) is_freeze_enabled() bool {
    mut object_out := false
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_freeze_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RigidBody2D) set_freeze_mode(freeze_mode RigidBody2DFreezeMode) {
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_freeze_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1705112154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&freeze_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RigidBody2D) get_freeze_mode() RigidBody2DFreezeMode {
    mut object_out := RigidBody2DFreezeMode.freeze_mode_static
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_freeze_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2016872314)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RigidBody2D) get_colliding_bodies() Array {
    mut object_out := Array{}
    classname := StringName.new("RigidBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_colliding_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

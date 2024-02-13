module vgdextension

@[noinit]
pub struct PhysicsDirectBodyState3D {
    Object
}

pub fn (r &PhysicsDirectBodyState3D) get_total_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_total_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_total_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_total_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_total_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_total_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_center_of_mass() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_center_of_mass_local() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_of_mass_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_principal_inertia_axes() Basis {
    mut object_out := Basis{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_principal_inertia_axes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_inverse_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inverse_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_inverse_inertia() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inverse_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_inverse_inertia_tensor() Basis {
    mut object_out := Basis{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inverse_inertia_tensor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) set_linear_velocity(velocity Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3D) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) set_angular_velocity(velocity Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3D) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) set_transform(transform Transform3D) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3D) get_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_velocity_at_local_position(local_position Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_velocity_at_local_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) apply_central_impulse(impulse Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2007698547)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) apply_impulse(impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) apply_torque_impulse(impulse Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) apply_central_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2007698547)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) apply_force(force Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) apply_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) add_constant_central_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2007698547)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) add_constant_force(force Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) add_constant_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) set_constant_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3D) get_constant_force() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) set_constant_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3D) get_constant_torque() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) set_sleep_state(enabled bool) {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sleep_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3D) is_sleeping() bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_local_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_local_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_local_normal(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_local_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_impulse(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_local_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_local_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_local_velocity_at_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_local_velocity_at_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_collider(contact_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_collider_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_collider_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_collider_id(contact_idx i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_collider_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_collider_object(contact_idx i32) Object {
    mut object_out := Object{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_collider_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_collider_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_contact_collider_velocity_at_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_collider_velocity_at_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3D) get_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3D) integrate_forces() {
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("integrate_forces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3D) get_space_state() PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D{}
    classname := StringName.new("PhysicsDirectBodyState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_space_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2069328350)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

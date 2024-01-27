module vgdextension

pub type PhysicsDirectBodyState3DExtension = voidptr

pub fn (r &PhysicsDirectBodyState3DExtension) uget_total_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_total_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_total_linear_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_total_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_total_angular_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_total_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_center_of_mass() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_center_of_mass_local() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_center_of_mass_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_principal_inertia_axes() Basis {
    mut object_out := Basis{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_principal_inertia_axes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_inverse_mass() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_inverse_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_inverse_inertia() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_inverse_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_inverse_inertia_tensor() Basis {
    mut object_out := Basis{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_inverse_inertia_tensor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uset_linear_velocity(velocity Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uset_angular_velocity(velocity Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uset_transform(transform Transform3D) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_velocity_at_local_position(local_position Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_velocity_at_local_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_central_impulse(impulse Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_impulse(impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_torque_impulse(impulse Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_central_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_force(force Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uapply_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uadd_constant_central_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uadd_constant_force(force Vector3, position Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uadd_constant_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uset_constant_force(force Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_constant_force() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uset_constant_torque(torque Vector3) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_constant_torque() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uset_sleep_state(enabled bool) {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_sleep_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState3DExtension) uis_sleeping() bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_normal(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_impulse(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_local_velocity_at_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_velocity_at_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider(contact_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_id(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_object(contact_idx i32) Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_contact_collider_velocity_at_position(contact_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_velocity_at_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState3DExtension) uget_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uintegrate_forces() {
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_integrate_forces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState3DExtension) uget_space_state() PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D(unsafe{nil})
    classname := StringName.new("PhysicsDirectBodyState3DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_space_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

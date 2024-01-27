module vgdextension

pub type PhysicsDirectBodyState2DExtension = voidptr

pub fn (r &PhysicsDirectBodyState2DExtension) uget_total_gravity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_total_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_total_linear_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_total_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_total_angular_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_total_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_center_of_mass() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_center_of_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_center_of_mass_local() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_center_of_mass_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_inverse_mass() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_inverse_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_inverse_inertia() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_inverse_inertia")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uset_linear_velocity(velocity Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_linear_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uset_angular_velocity(velocity f32) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_angular_velocity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uset_transform(transform Transform2D) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_velocity_at_local_position(local_position Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_velocity_at_local_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_central_impulse(impulse Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_impulse(impulse Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_torque_impulse(impulse f32) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_central_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_force(force Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uapply_torque(torque f32) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uadd_constant_central_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uadd_constant_force(force Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uadd_constant_torque(torque f32) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uset_constant_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_constant_force() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uset_constant_torque(torque f32) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_constant_torque() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uset_sleep_state(enabled bool) {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_sleep_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsDirectBodyState2DExtension) uis_sleeping() bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_sleeping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_normal(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_local_velocity_at_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_local_velocity_at_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider(contact_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_id(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_object(contact_idx i32) Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_collider_velocity_at_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_collider_velocity_at_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_contact_impulse(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_contact_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsDirectBodyState2DExtension) uget_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uintegrate_forces() {
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_integrate_forces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsDirectBodyState2DExtension) uget_space_state() PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D(unsafe{nil})
    classname := StringName.new("PhysicsDirectBodyState2DExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_space_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct PhysicsDirectBodyState2D {
    Object
}

pub fn (r &PhysicsDirectBodyState2D) get_total_gravity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_total_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_total_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_total_linear_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_total_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_total_angular_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_center_of_mass() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_center_of_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_center_of_mass_local() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_center_of_mass_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_inverse_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_inverse_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_inverse_inertia() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_inverse_inertia")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) set_linear_velocity(velocity Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("set_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) get_linear_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) set_angular_velocity(velocity f64) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("set_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) get_angular_velocity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) set_transform(transform Transform2D) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) get_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_velocity_at_local_position(local_position Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_velocity_at_local_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) apply_central_impulse(impulse Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) apply_torque_impulse(impulse f64) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("apply_torque_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) apply_impulse(impulse Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288681949)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) apply_central_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("apply_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3862383994)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) apply_force(force Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("apply_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288681949)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) apply_torque(torque f64) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("apply_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) add_constant_central_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("add_constant_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3862383994)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) add_constant_force(force Vector2, position Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("add_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4288681949)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) add_constant_torque(torque f64) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("add_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) set_constant_force(force Vector2) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("set_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) get_constant_force() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) set_constant_torque(torque f64) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("set_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) get_constant_torque() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) set_sleep_state(enabled bool) {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("set_sleep_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) is_sleeping() bool {
    mut object_out := false
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("is_sleeping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_local_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_local_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_local_normal(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_local_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_local_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_local_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_local_velocity_at_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_local_velocity_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_collider(contact_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_collider_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_collider_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_collider_id(contact_idx i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_collider_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_collider_object(contact_idx i32) Object {
    mut object_out := Object{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_collider_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_collider_shape(contact_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_collider_velocity_at_position(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_collider_velocity_at_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_contact_impulse(contact_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_contact_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&contact_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) get_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectBodyState2D) integrate_forces() {
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("integrate_forces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsDirectBodyState2D) get_space_state() PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D{}
    classname := StringName.new("PhysicsDirectBodyState2D")
    fnname := StringName.new("get_space_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2506717822)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

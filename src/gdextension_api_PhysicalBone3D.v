module vgdextension

pub enum PhysicalBone3DDampMode as i64 {
    damp_mode_combine = 0
    damp_mode_replace = 1
}

pub enum PhysicalBone3DJointType as i64 {
    joint_type_none = 0
    joint_type_pin = 1
    joint_type_cone = 2
    joint_type_hinge = 3
    joint_type_slider = 4
    joint_type_6dof = 5
}

@[noinit]
pub struct PhysicalBone3D {
    PhysicsBody3D
}

pub interface IPhysicalBone3DIntegrateForces {
    mut:
    virt_integrate_forces(state PhysicsDirectBodyState3D)
}

pub fn (r &PhysicalBone3D) uintegrate_forces(state PhysicsDirectBodyState3D) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("_integrate_forces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) apply_central_impulse(impulse Vector3) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) apply_impulse(impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2754756483)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&impulse)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) set_joint_type(joint_type PhysicalBone3DJointType) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_joint_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2289552604)
    mut args := unsafe { [1]voidptr{} }
    i64_joint_type := i64(joint_type)
    args[0] = unsafe{voidptr(&i64_joint_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_joint_type() PhysicalBone3DJointType {
    mut object_out := i64(PhysicalBone3DJointType.joint_type_none)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_joint_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 931347320)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicalBone3DJointType(object_out)}
}
pub fn (r &PhysicalBone3D) set_joint_offset(offset Transform3D) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_joint_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_joint_offset() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_joint_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_joint_rotation(euler Vector3) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_joint_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&euler)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_joint_rotation() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_joint_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_body_offset(offset Transform3D) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_body_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_body_offset() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_body_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) get_simulate_physics() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_simulate_physics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) is_simulating_physics() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("is_simulating_physics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) get_bone_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_bone_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_mass(mass f64) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_friction(friction f64) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_friction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&friction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_friction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_friction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_bounce(bounce f64) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_bounce")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bounce)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_bounce() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_bounce")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_gravity_scale(gravity_scale f64) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_gravity_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gravity_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_gravity_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_gravity_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_linear_damp_mode(linear_damp_mode PhysicalBone3DDampMode) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_linear_damp_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1244972221)
    mut args := unsafe { [1]voidptr{} }
    i64_linear_damp_mode := i64(linear_damp_mode)
    args[0] = unsafe{voidptr(&i64_linear_damp_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_linear_damp_mode() PhysicalBone3DDampMode {
    mut object_out := i64(PhysicalBone3DDampMode.damp_mode_combine)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_linear_damp_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205884699)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicalBone3DDampMode(object_out)}
}
pub fn (r &PhysicalBone3D) set_angular_damp_mode(angular_damp_mode PhysicalBone3DDampMode) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_angular_damp_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1244972221)
    mut args := unsafe { [1]voidptr{} }
    i64_angular_damp_mode := i64(angular_damp_mode)
    args[0] = unsafe{voidptr(&i64_angular_damp_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_angular_damp_mode() PhysicalBone3DDampMode {
    mut object_out := i64(PhysicalBone3DDampMode.damp_mode_combine)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_angular_damp_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205884699)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicalBone3DDampMode(object_out)}
}
pub fn (r &PhysicalBone3D) set_linear_damp(linear_damp f64) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_linear_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_damp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_linear_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_linear_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_angular_damp(angular_damp f64) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_angular_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_damp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_angular_damp() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_angular_damp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_linear_velocity(linear_velocity Vector3) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_angular_velocity(angular_velocity Vector3) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angular_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("get_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_use_custom_integrator(enable bool) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_use_custom_integrator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) is_using_custom_integrator() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("is_using_custom_integrator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicalBone3D) set_can_sleep(able_to_sleep bool) {
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("set_can_sleep")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&able_to_sleep)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicalBone3D) is_able_to_sleep() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    fnname := StringName.new("is_able_to_sleep")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

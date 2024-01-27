module vgdextension

pub enum PhysicalBone3DDampMode {
    damp_mode_combine = 0
    damp_mode_replace = 1
}

pub enum PhysicalBone3DJointType {
    joint_type_none = 0
    joint_type_pin = 1
    joint_type_cone = 2
    joint_type_hinge = 3
    joint_type_slider = 4
    joint_type_6dof = 5
}

pub type PhysicalBone3D = voidptr

pub fn (mut r PhysicalBone3D) uintegrate_forces(state PhysicsDirectBodyState3D) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("_integrate_forces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicalBone3D) apply_central_impulse(impulse Vector3) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicalBone3D) apply_impulse(impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1002852006)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicalBone3D) set_joint_type(joint_type PhysicalBone3DJointType) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2289552604)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_joint_type() PhysicalBone3DJointType {
    mut object_out := PhysicalBone3DJointType.joint_type_none
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 931347320)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_joint_offset(offset Transform3D) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_joint_offset() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_joint_rotation(euler Vector3) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_joint_rotation() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_body_offset(offset Transform3D) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_body_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_body_offset() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_body_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) get_simulate_physics() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_simulate_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) is_simulating_physics() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_simulating_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicalBone3D) get_bone_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_mass(mass f32) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_mass() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_friction(friction f32) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_friction() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_bounce(bounce f32) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_bounce() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_gravity_scale(gravity_scale f32) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_gravity_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_linear_damp_mode(linear_damp_mode PhysicalBone3DDampMode) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1244972221)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_linear_damp_mode() PhysicalBone3DDampMode {
    mut object_out := PhysicalBone3DDampMode.damp_mode_combine
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205884699)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_angular_damp_mode(angular_damp_mode PhysicalBone3DDampMode) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1244972221)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_angular_damp_mode() PhysicalBone3DDampMode {
    mut object_out := PhysicalBone3DDampMode.damp_mode_combine
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205884699)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_linear_damp(linear_damp f32) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_linear_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_angular_damp(angular_damp f32) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_angular_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_linear_velocity(linear_velocity Vector3) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_angular_velocity(angular_velocity Vector3) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_use_custom_integrator(enable bool) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_custom_integrator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicalBone3D) is_using_custom_integrator() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_custom_integrator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone3D) set_can_sleep(able_to_sleep bool) {
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_can_sleep")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone3D) is_able_to_sleep() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_able_to_sleep")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

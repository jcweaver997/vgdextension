module vgdextension

pub enum PhysicsServer3DJointType {
    joint_type_pin = 0
    joint_type_hinge = 1
    joint_type_slider = 2
    joint_type_cone_twist = 3
    joint_type_6dof = 4
    joint_type_max = 5
}

pub enum PhysicsServer3DPinJointParam {
    pin_joint_bias = 0
    pin_joint_damping = 1
    pin_joint_impulse_clamp = 2
}

pub enum PhysicsServer3DHingeJointParam {
    hinge_joint_bias = 0
    hinge_joint_limit_upper = 1
    hinge_joint_limit_lower = 2
    hinge_joint_limit_bias = 3
    hinge_joint_limit_softness = 4
    hinge_joint_limit_relaxation = 5
    hinge_joint_motor_target_velocity = 6
    hinge_joint_motor_max_impulse = 7
}

pub enum PhysicsServer3DHingeJointFlag {
    hinge_joint_flag_use_limit = 0
    hinge_joint_flag_enable_motor = 1
}

pub enum PhysicsServer3DSliderJointParam {
    slider_joint_linear_limit_upper = 0
    slider_joint_linear_limit_lower = 1
    slider_joint_linear_limit_softness = 2
    slider_joint_linear_limit_restitution = 3
    slider_joint_linear_limit_damping = 4
    slider_joint_linear_motion_softness = 5
    slider_joint_linear_motion_restitution = 6
    slider_joint_linear_motion_damping = 7
    slider_joint_linear_orthogonal_softness = 8
    slider_joint_linear_orthogonal_restitution = 9
    slider_joint_linear_orthogonal_damping = 10
    slider_joint_angular_limit_upper = 11
    slider_joint_angular_limit_lower = 12
    slider_joint_angular_limit_softness = 13
    slider_joint_angular_limit_restitution = 14
    slider_joint_angular_limit_damping = 15
    slider_joint_angular_motion_softness = 16
    slider_joint_angular_motion_restitution = 17
    slider_joint_angular_motion_damping = 18
    slider_joint_angular_orthogonal_softness = 19
    slider_joint_angular_orthogonal_restitution = 20
    slider_joint_angular_orthogonal_damping = 21
    slider_joint_max = 22
}

pub enum PhysicsServer3DConeTwistJointParam {
    cone_twist_joint_swing_span = 0
    cone_twist_joint_twist_span = 1
    cone_twist_joint_bias = 2
    cone_twist_joint_softness = 3
    cone_twist_joint_relaxation = 4
}

pub enum PhysicsServer3DG6DOFJointAxisParam {
    g6dof_joint_linear_lower_limit = 0
    g6dof_joint_linear_upper_limit = 1
    g6dof_joint_linear_limit_softness = 2
    g6dof_joint_linear_restitution = 3
    g6dof_joint_linear_damping = 4
    g6dof_joint_linear_motor_target_velocity = 5
    g6dof_joint_linear_motor_force_limit = 6
    g6dof_joint_angular_lower_limit = 10
    g6dof_joint_angular_upper_limit = 11
    g6dof_joint_angular_limit_softness = 12
    g6dof_joint_angular_damping = 13
    g6dof_joint_angular_restitution = 14
    g6dof_joint_angular_force_limit = 15
    g6dof_joint_angular_erp = 16
    g6dof_joint_angular_motor_target_velocity = 17
    g6dof_joint_angular_motor_force_limit = 18
}

pub enum PhysicsServer3DG6DOFJointAxisFlag {
    g6dof_joint_flag_enable_linear_limit = 0
    g6dof_joint_flag_enable_angular_limit = 1
    g6dof_joint_flag_enable_motor = 4
    g6dof_joint_flag_enable_linear_motor = 5
}

pub enum PhysicsServer3DShapeType {
    shape_world_boundary = 0
    shape_separation_ray = 1
    shape_sphere = 2
    shape_box = 3
    shape_capsule = 4
    shape_cylinder = 5
    shape_convex_polygon = 6
    shape_concave_polygon = 7
    shape_heightmap = 8
    shape_soft_body = 9
    shape_custom = 10
}

pub enum PhysicsServer3DAreaParameter {
    area_param_gravity_override_mode = 0
    area_param_gravity = 1
    area_param_gravity_vector = 2
    area_param_gravity_is_point = 3
    area_param_gravity_point_unit_distance = 4
    area_param_linear_damp_override_mode = 5
    area_param_linear_damp = 6
    area_param_angular_damp_override_mode = 7
    area_param_angular_damp = 8
    area_param_priority = 9
    area_param_wind_force_magnitude = 10
    area_param_wind_source = 11
    area_param_wind_direction = 12
    area_param_wind_attenuation_factor = 13
}

pub enum PhysicsServer3DAreaSpaceOverrideMode {
    area_space_override_disabled = 0
    area_space_override_combine = 1
    area_space_override_combine_replace = 2
    area_space_override_replace = 3
    area_space_override_replace_combine = 4
}

pub enum PhysicsServer3DBodyMode {
    body_mode_static = 0
    body_mode_kinematic = 1
    body_mode_rigid = 2
    body_mode_rigid_linear = 3
}

pub enum PhysicsServer3DBodyParameter {
    body_param_bounce = 0
    body_param_friction = 1
    body_param_mass = 2
    body_param_inertia = 3
    body_param_center_of_mass = 4
    body_param_gravity_scale = 5
    body_param_linear_damp_mode = 6
    body_param_angular_damp_mode = 7
    body_param_linear_damp = 8
    body_param_angular_damp = 9
    body_param_max = 10
}

pub enum PhysicsServer3DBodyDampMode {
    body_damp_mode_combine = 0
    body_damp_mode_replace = 1
}

pub enum PhysicsServer3DBodyState {
    body_state_transform = 0
    body_state_linear_velocity = 1
    body_state_angular_velocity = 2
    body_state_sleeping = 3
    body_state_can_sleep = 4
}

pub enum PhysicsServer3DAreaBodyStatus {
    area_body_added = 0
    area_body_removed = 1
}

pub enum PhysicsServer3DProcessInfo {
    info_active_objects = 0
    info_collision_pairs = 1
    info_island_count = 2
}

pub enum PhysicsServer3DSpaceParameter {
    space_param_contact_recycle_radius = 0
    space_param_contact_max_separation = 1
    space_param_contact_max_allowed_penetration = 2
    space_param_contact_default_bias = 3
    space_param_body_linear_velocity_sleep_threshold = 4
    space_param_body_angular_velocity_sleep_threshold = 5
    space_param_body_time_to_sleep = 6
    space_param_solver_iterations = 7
}

pub enum PhysicsServer3DBodyAxis {
    body_axis_linear_x = 1
    body_axis_linear_y = 2
    body_axis_linear_z = 4
    body_axis_angular_x = 8
    body_axis_angular_y = 16
    body_axis_angular_z = 32
}

pub type PhysicsServer3D = voidptr

pub fn (mut r PhysicsServer3D) world_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("world_boundary_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) separation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("separation_ray_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) sphere_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("sphere_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) box_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("box_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) capsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("capsule_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) cylinder_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("cylinder_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) convex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("convex_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) concave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("concave_polygon_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) heightmap_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("heightmap_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) custom_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("custom_shape_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) shape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175752987)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) shape_get_type(shape RID) PhysicsServer3DShapeType {
    mut object_out := PhysicsServer3DShapeType.shape_world_boundary
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3418923367)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) shape_get_data(shape RID) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171304767)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) space_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("space_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) space_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("space_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) space_is_active(space RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("space_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) space_set_param(space RID, param PhysicsServer3DSpaceParameter, value f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("space_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2406017470)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) space_get_param(space RID, param PhysicsServer3DSpaceParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("space_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1523206731)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) space_get_direct_state(space RID) PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D(unsafe{nil})
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("space_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2048616813)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) area_get_space(area RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_add_shape(area RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040559639)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_shape_transform(area RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) area_get_shape_count(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) area_get_shape(area RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) area_get_shape_transform(area RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_collision_layer(area RID, layer i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) area_get_collision_layer(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_set_collision_mask(area RID, mask i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) area_get_collision_mask(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_set_param(area RID, param PhysicsServer3DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2980114638)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_transform(area RID, transform Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) area_get_param(area RID, param PhysicsServer3DAreaParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 890056067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) area_get_transform(area RID) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128465797)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_attach_object_instance_id(area RID, id i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) area_get_object_instance_id(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) area_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_area_monitor_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_monitorable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) area_set_ray_pickable(area RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("area_set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_mode(body RID, mode PhysicsServer3DBodyMode) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 606803466)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_mode(body RID) PhysicsServer3DBodyMode {
    mut object_out := PhysicsServer3DBodyMode.body_mode_static
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488819728)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_collision_layer(body RID, layer i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_collision_layer(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_collision_mask(body RID, mask i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_collision_mask(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_collision_priority(body RID, priority f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_collision_priority(body RID) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_add_shape(body RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040559639)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_shape_transform(body RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_shape_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_shape_count(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) body_get_shape(body RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) body_get_shape_transform(body RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_shape_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_attach_object_instance_id(body RID, id i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_attach_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_object_instance_id(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_object_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_enable_continuous_collision_detection(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_enable_continuous_collision_detection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_is_continuous_collision_detection_enabled(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_is_continuous_collision_detection_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_param(body RID, param PhysicsServer3DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 910941953)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_param(body RID, param PhysicsServer3DBodyParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385027841)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_reset_mass_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_state(body RID, state PhysicsServer3DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 599977762)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_state(body RID, state PhysicsServer3DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850449534)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_apply_central_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_apply_central_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_apply_impulse(body RID, impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_apply_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 110375048)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_apply_torque_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_apply_torque_impulse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_apply_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_apply_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_apply_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_apply_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 110375048)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_apply_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_apply_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_add_constant_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_add_constant_central_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_add_constant_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_add_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 110375048)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_add_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_add_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_constant_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_constant_force(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_constant_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_constant_torque(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_constant_torque")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_axis_velocity(body RID, axis_velocity Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_axis_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_axis_lock(body RID, axis PhysicsServer3DBodyAxis, gdlock bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_axis_lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2020836892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_is_axis_locked(body RID, axis PhysicsServer3DBodyAxis) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_is_axis_locked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 587853580)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_add_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_remove_collision_exception")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_get_max_contacts_reported(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_max_contacts_reported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_omit_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) body_is_omitting_force_integration(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_is_omitting_force_integration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_force_integration_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3059434249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_set_ray_pickable(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) body_test_motion(body RID, parameters PhysicsTestMotionParameters3D, result PhysicsTestMotionResult3D) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_test_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1944921792)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&parameters)}
    args[2] = unsafe{voidptr(&result)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) body_get_direct_state(body RID) PhysicsDirectBodyState3D {
    mut object_out := PhysicsDirectBodyState3D(unsafe{nil})
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("body_get_direct_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3029727957)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) soft_body_get_bounds(body RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("soft_body_get_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_clear(joint RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) joint_make_pin(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_make_pin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4280171926)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) pin_joint_set_param(joint RID, param PhysicsServer3DPinJointParam, value f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("pin_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 810685294)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) pin_joint_get_param(joint RID, param PhysicsServer3DPinJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("pin_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817972347)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) pin_joint_set_local_a(joint RID, local_a Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("pin_joint_set_local_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) pin_joint_get_local_a(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("pin_joint_get_local_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) pin_joint_set_local_b(joint RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("pin_joint_set_local_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) pin_joint_get_local_b(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("pin_joint_get_local_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_make_hinge(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_make_hinge")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) hinge_joint_set_param(joint RID, param PhysicsServer3DHingeJointParam, value f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("hinge_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3165502333)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) hinge_joint_get_param(joint RID, param PhysicsServer3DHingeJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("hinge_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2129207581)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) hinge_joint_set_flag(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("hinge_joint_set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601626188)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) hinge_joint_get_flag(joint RID, flag PhysicsServer3DHingeJointFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("hinge_joint_get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4165147865)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_make_slider(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_make_slider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) slider_joint_set_param(joint RID, param PhysicsServer3DSliderJointParam, value f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("slider_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2264833593)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) slider_joint_get_param(joint RID, param PhysicsServer3DSliderJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("slider_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3498644957)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_make_cone_twist(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_make_cone_twist")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) cone_twist_joint_set_param(joint RID, param PhysicsServer3DConeTwistJointParam, value f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("cone_twist_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 808587618)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) cone_twist_joint_get_param(joint RID, param PhysicsServer3DConeTwistJointParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("cone_twist_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1134789658)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicsServer3D) joint_get_type(joint RID) PhysicsServer3DJointType {
    mut object_out := PhysicsServer3DJointType.joint_type_pin
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290791900)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_set_solver_priority(joint RID, priority i32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_set_solver_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) joint_get_solver_priority(joint RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_get_solver_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_disable_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) joint_is_disabled_collisions_between_bodies(joint RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_is_disabled_collisions_between_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) joint_make_generic_6dof(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("joint_make_generic_6dof")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) generic_6dof_joint_set_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f32) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("generic_6dof_joint_set_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2600081391)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) generic_6dof_joint_get_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("generic_6dof_joint_get_param")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 467122058)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&axis)}
    args[2] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) generic_6dof_joint_set_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("generic_6dof_joint_set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3570926903)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsServer3D) generic_6dof_joint_get_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("generic_6dof_joint_get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4158090196)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&axis)}
    args[2] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsServer3D) free_rid(rid RID) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("free_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) set_active(active bool) {
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3D) get_process_info(process_info PhysicsServer3DProcessInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332958745)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&process_info)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

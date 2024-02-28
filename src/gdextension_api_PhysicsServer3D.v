module vgdextension

pub enum PhysicsServer3DJointType as i64 {
    joint_type_pin = 0
    joint_type_hinge = 1
    joint_type_slider = 2
    joint_type_cone_twist = 3
    joint_type_6dof = 4
    joint_type_max = 5
}

pub enum PhysicsServer3DPinJointParam as i64 {
    pin_joint_bias = 0
    pin_joint_damping = 1
    pin_joint_impulse_clamp = 2
}

pub enum PhysicsServer3DHingeJointParam as i64 {
    hinge_joint_bias = 0
    hinge_joint_limit_upper = 1
    hinge_joint_limit_lower = 2
    hinge_joint_limit_bias = 3
    hinge_joint_limit_softness = 4
    hinge_joint_limit_relaxation = 5
    hinge_joint_motor_target_velocity = 6
    hinge_joint_motor_max_impulse = 7
}

pub enum PhysicsServer3DHingeJointFlag as i64 {
    hinge_joint_flag_use_limit = 0
    hinge_joint_flag_enable_motor = 1
}

pub enum PhysicsServer3DSliderJointParam as i64 {
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

pub enum PhysicsServer3DConeTwistJointParam as i64 {
    cone_twist_joint_swing_span = 0
    cone_twist_joint_twist_span = 1
    cone_twist_joint_bias = 2
    cone_twist_joint_softness = 3
    cone_twist_joint_relaxation = 4
}

pub enum PhysicsServer3DG6DOFJointAxisParam as i64 {
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

pub enum PhysicsServer3DG6DOFJointAxisFlag as i64 {
    g6dof_joint_flag_enable_linear_limit = 0
    g6dof_joint_flag_enable_angular_limit = 1
    g6dof_joint_flag_enable_motor = 4
    g6dof_joint_flag_enable_linear_motor = 5
}

pub enum PhysicsServer3DShapeType as i64 {
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

pub enum PhysicsServer3DAreaParameter as i64 {
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

pub enum PhysicsServer3DAreaSpaceOverrideMode as i64 {
    area_space_override_disabled = 0
    area_space_override_combine = 1
    area_space_override_combine_replace = 2
    area_space_override_replace = 3
    area_space_override_replace_combine = 4
}

pub enum PhysicsServer3DBodyMode as i64 {
    body_mode_static = 0
    body_mode_kinematic = 1
    body_mode_rigid = 2
    body_mode_rigid_linear = 3
}

pub enum PhysicsServer3DBodyParameter as i64 {
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

pub enum PhysicsServer3DBodyDampMode as i64 {
    body_damp_mode_combine = 0
    body_damp_mode_replace = 1
}

pub enum PhysicsServer3DBodyState as i64 {
    body_state_transform = 0
    body_state_linear_velocity = 1
    body_state_angular_velocity = 2
    body_state_sleeping = 3
    body_state_can_sleep = 4
}

pub enum PhysicsServer3DAreaBodyStatus as i64 {
    area_body_added = 0
    area_body_removed = 1
}

pub enum PhysicsServer3DProcessInfo as i64 {
    info_active_objects = 0
    info_collision_pairs = 1
    info_island_count = 2
}

pub enum PhysicsServer3DSpaceParameter as i64 {
    space_param_contact_recycle_radius = 0
    space_param_contact_max_separation = 1
    space_param_contact_max_allowed_penetration = 2
    space_param_contact_default_bias = 3
    space_param_body_linear_velocity_sleep_threshold = 4
    space_param_body_angular_velocity_sleep_threshold = 5
    space_param_body_time_to_sleep = 6
    space_param_solver_iterations = 7
}

pub enum PhysicsServer3DBodyAxis as i64 {
    body_axis_linear_x = 1
    body_axis_linear_y = 2
    body_axis_linear_z = 4
    body_axis_angular_x = 8
    body_axis_angular_y = 16
    body_axis_angular_z = 32
}

@[noinit]
pub struct PhysicsServer3D {
    Object
}

pub fn PhysicsServer3D.get_singleton() PhysicsServer3D {
    sn := StringName.new("PhysicsServer3D")
    o := PhysicsServer3D{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &PhysicsServer3D) world_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("world_boundary_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) separation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("separation_ray_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) sphere_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("sphere_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) box_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("box_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) capsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("capsule_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) cylinder_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("cylinder_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) convex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("convex_polygon_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) concave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("concave_polygon_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) heightmap_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("heightmap_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) custom_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("custom_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) shape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("shape_set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175752987)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) shape_get_type(shape RID) PhysicsServer3DShapeType {
    mut object_out := i64(PhysicsServer3DShapeType.shape_world_boundary)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("shape_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3418923367)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer3DShapeType(object_out)}
}
pub fn (r &PhysicsServer3D) shape_get_data(shape RID) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("shape_get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171304767)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) space_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("space_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) space_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("space_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) space_is_active(space RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("space_is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) space_set_param(space RID, param PhysicsServer3DSpaceParameter, value f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("space_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2406017470)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) space_get_param(space RID, param PhysicsServer3DSpaceParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("space_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1523206731)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) space_get_direct_state(space RID) PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("space_get_direct_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2048616813)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_get_space(area RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_add_shape(area RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3711419014)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_shape_transform(area RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_shape_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_get_shape_count(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_get_shape(area RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_get_shape_transform(area RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_collision_layer(area RID, layer u32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_get_collision_layer(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_set_collision_mask(area RID, mask u32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_get_collision_mask(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_set_param(area RID, param PhysicsServer3DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2980114638)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_transform(area RID, transform Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3935195649)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_get_param(area RID, param PhysicsServer3DAreaParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 890056067)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_get_transform(area RID) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1128465797)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_attach_object_instance_id(area RID, id u64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_get_object_instance_id(area RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_get_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) area_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_monitor_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_area_monitor_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_monitorable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&monitorable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) area_set_ray_pickable(area RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("area_set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_mode(body RID, mode PhysicsServer3DBodyMode) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 606803466)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_mode(body RID) PhysicsServer3DBodyMode {
    mut object_out := i64(PhysicsServer3DBodyMode.body_mode_static)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488819728)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer3DBodyMode(object_out)}
}
pub fn (r &PhysicsServer3D) body_set_collision_layer(body RID, layer u32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_collision_layer(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_collision_mask(body RID, mask u32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_collision_mask(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_collision_priority(body RID, priority f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_collision_priority(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_add_shape(body RID, shape RID, transform Transform3D, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3711419014)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2310537182)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_shape_transform(body RID, shape_idx i32, transform Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675327471)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_shape_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2658558584)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_shape_count(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_get_shape(body RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1066463050)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_get_shape_transform(body RID, shape_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1050775521)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_attach_object_instance_id(body RID, id u64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_object_instance_id(body RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_enable_continuous_collision_detection(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_enable_continuous_collision_detection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_is_continuous_collision_detection_enabled(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_is_continuous_collision_detection_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_param(body RID, param PhysicsServer3DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 910941953)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_param(body RID, param PhysicsServer3DBodyParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385027841)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_reset_mass_properties")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_state(body RID, state PhysicsServer3DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 599977762)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_state(body RID, state PhysicsServer3DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850449534)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_apply_central_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_apply_impulse(body RID, impulse Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 390416203)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_apply_torque_impulse(body RID, impulse Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_apply_torque_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_apply_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_apply_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_apply_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_apply_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 390416203)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_apply_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_apply_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_add_constant_central_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_add_constant_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_add_constant_force(body RID, force Vector3, position Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_add_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 390416203)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_add_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_add_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_constant_force(body RID, force Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_constant_force(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_constant_torque(body RID, torque Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_constant_torque(body RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_axis_velocity(body RID, axis_velocity Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_axis_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&axis_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_axis_lock(body RID, axis PhysicsServer3DBodyAxis, gdlock bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_axis_lock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2020836892)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    args[2] = unsafe{voidptr(&gdlock)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_is_axis_locked(body RID, axis PhysicsServer3DBodyAxis) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_is_axis_locked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 587853580)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_add_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_remove_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_max_contacts_reported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_get_max_contacts_reported(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_max_contacts_reported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_omit_force_integration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_is_omitting_force_integration(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_is_omitting_force_integration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_force_integration_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3059434249)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&callable)}
    args[2] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_set_ray_pickable(body RID, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) body_test_motion(body RID, parameters PhysicsTestMotionParameters3D, result PhysicsTestMotionResult3D) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_test_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1944921792)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = parameters.ptr
    args[2] = result.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) body_get_direct_state(body RID) PhysicsDirectBodyState3D {
    mut object_out := PhysicsDirectBodyState3D{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("body_get_direct_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3029727957)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) soft_body_get_bounds(body RID) AABB {
    mut object_out := AABB{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("soft_body_get_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974181306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_clear(joint RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) joint_make_pin(joint RID, body_a RID, local_a Vector3, body_b RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_make_pin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4280171926)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) pin_joint_set_param(joint RID, param PhysicsServer3DPinJointParam, value f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("pin_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 810685294)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) pin_joint_get_param(joint RID, param PhysicsServer3DPinJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("pin_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817972347)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) pin_joint_set_local_a(joint RID, local_a Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("pin_joint_set_local_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&local_a)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) pin_joint_get_local_a(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("pin_joint_get_local_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) pin_joint_set_local_b(joint RID, local_b Vector3) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("pin_joint_set_local_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227306858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&local_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) pin_joint_get_local_b(joint RID) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("pin_joint_get_local_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 531438156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_make_hinge(joint RID, body_a RID, hinge_a Transform3D, body_b RID, hinge_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_make_hinge")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&hinge_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&hinge_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) hinge_joint_set_param(joint RID, param PhysicsServer3DHingeJointParam, value f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("hinge_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3165502333)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) hinge_joint_get_param(joint RID, param PhysicsServer3DHingeJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("hinge_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2129207581)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) hinge_joint_set_flag(joint RID, flag PhysicsServer3DHingeJointFlag, enabled bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("hinge_joint_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1601626188)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    args[2] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) hinge_joint_get_flag(joint RID, flag PhysicsServer3DHingeJointFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("hinge_joint_get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4165147865)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_make_slider(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_make_slider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_ref_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_ref_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) slider_joint_set_param(joint RID, param PhysicsServer3DSliderJointParam, value f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("slider_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2264833593)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) slider_joint_get_param(joint RID, param PhysicsServer3DSliderJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("slider_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3498644957)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_make_cone_twist(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_make_cone_twist")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_ref_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_ref_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) cone_twist_joint_set_param(joint RID, param PhysicsServer3DConeTwistJointParam, value f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("cone_twist_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 808587618)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) cone_twist_joint_get_param(joint RID, param PhysicsServer3DConeTwistJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("cone_twist_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1134789658)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_get_type(joint RID) PhysicsServer3DJointType {
    mut object_out := i64(PhysicsServer3DJointType.joint_type_pin)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290791900)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer3DJointType(object_out)}
}
pub fn (r &PhysicsServer3D) joint_set_solver_priority(joint RID, priority i32) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_set_solver_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) joint_get_solver_priority(joint RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_get_solver_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_disable_collisions_between_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) joint_is_disabled_collisions_between_bodies(joint RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_is_disabled_collisions_between_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) joint_make_generic_6dof(joint RID, body_a RID, local_ref_a Transform3D, body_b RID, local_ref_b Transform3D) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("joint_make_generic_6dof")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684107643)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&body_a)}
    args[2] = unsafe{voidptr(&local_ref_a)}
    args[3] = unsafe{voidptr(&body_b)}
    args[4] = unsafe{voidptr(&local_ref_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) generic_6dof_joint_set_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam, value f64) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("generic_6dof_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2600081391)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_param := i64(param)
    args[2] = unsafe{voidptr(&i64_param)}
    args[3] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) generic_6dof_joint_get_param(joint RID, axis Vector3Axis, param PhysicsServer3DG6DOFJointAxisParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("generic_6dof_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 467122058)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_param := i64(param)
    args[2] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) generic_6dof_joint_set_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag, enable bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("generic_6dof_joint_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3570926903)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_flag := i64(flag)
    args[2] = unsafe{voidptr(&i64_flag)}
    args[3] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) generic_6dof_joint_get_flag(joint RID, axis Vector3Axis, flag PhysicsServer3DG6DOFJointAxisFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("generic_6dof_joint_get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4158090196)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    i64_flag := i64(flag)
    args[2] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer3D) free_rid(rid RID) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) set_active(active bool) {
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3D) get_process_info(process_info PhysicsServer3DProcessInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer3D")
    fnname := StringName.new("get_process_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332958745)
    mut args := unsafe { [1]voidptr{} }
    i64_process_info := i64(process_info)
    args[0] = unsafe{voidptr(&i64_process_info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

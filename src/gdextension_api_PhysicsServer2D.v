module vgdextension

pub enum PhysicsServer2DSpaceParameter as i64 {
    space_param_contact_recycle_radius = 0
    space_param_contact_max_separation = 1
    space_param_contact_max_allowed_penetration = 2
    space_param_contact_default_bias = 3
    space_param_body_linear_velocity_sleep_threshold = 4
    space_param_body_angular_velocity_sleep_threshold = 5
    space_param_body_time_to_sleep = 6
    space_param_constraint_default_bias = 7
    space_param_solver_iterations = 8
}

pub enum PhysicsServer2DShapeType as i64 {
    shape_world_boundary = 0
    shape_separation_ray = 1
    shape_segment = 2
    shape_circle = 3
    shape_rectangle = 4
    shape_capsule = 5
    shape_convex_polygon = 6
    shape_concave_polygon = 7
    shape_custom = 8
}

pub enum PhysicsServer2DAreaParameter as i64 {
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
}

pub enum PhysicsServer2DAreaSpaceOverrideMode as i64 {
    area_space_override_disabled = 0
    area_space_override_combine = 1
    area_space_override_combine_replace = 2
    area_space_override_replace = 3
    area_space_override_replace_combine = 4
}

pub enum PhysicsServer2DBodyMode as i64 {
    body_mode_static = 0
    body_mode_kinematic = 1
    body_mode_rigid = 2
    body_mode_rigid_linear = 3
}

pub enum PhysicsServer2DBodyParameter as i64 {
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

pub enum PhysicsServer2DBodyDampMode as i64 {
    body_damp_mode_combine = 0
    body_damp_mode_replace = 1
}

pub enum PhysicsServer2DBodyState as i64 {
    body_state_transform = 0
    body_state_linear_velocity = 1
    body_state_angular_velocity = 2
    body_state_sleeping = 3
    body_state_can_sleep = 4
}

pub enum PhysicsServer2DJointType as i64 {
    joint_type_pin = 0
    joint_type_groove = 1
    joint_type_damped_spring = 2
    joint_type_max = 3
}

pub enum PhysicsServer2DJointParam as i64 {
    joint_param_bias = 0
    joint_param_max_bias = 1
    joint_param_max_force = 2
}

pub enum PhysicsServer2DPinJointParam as i64 {
    pin_joint_softness = 0
    pin_joint_limit_upper = 1
    pin_joint_limit_lower = 2
    pin_joint_motor_target_velocity = 3
}

pub enum PhysicsServer2DPinJointFlag as i64 {
    pin_joint_flag_angular_limit_enabled = 0
    pin_joint_flag_motor_enabled = 1
}

pub enum PhysicsServer2DDampedSpringParam as i64 {
    damped_spring_rest_length = 0
    damped_spring_stiffness = 1
    damped_spring_damping = 2
}

pub enum PhysicsServer2DCCDMode as i64 {
    ccd_mode_disabled = 0
    ccd_mode_cast_ray = 1
    ccd_mode_cast_shape = 2
}

pub enum PhysicsServer2DAreaBodyStatus as i64 {
    area_body_added = 0
    area_body_removed = 1
}

pub enum PhysicsServer2DProcessInfo as i64 {
    info_active_objects = 0
    info_collision_pairs = 1
    info_island_count = 2
}

@[noinit]
pub struct PhysicsServer2D {
    Object
}

pub fn PhysicsServer2D.get_singleton() PhysicsServer2D {
    sn := StringName.new("PhysicsServer2D")
    o := PhysicsServer2D{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &PhysicsServer2D) world_boundary_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("world_boundary_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) separation_ray_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("separation_ray_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) segment_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("segment_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) circle_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("circle_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) rectangle_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("rectangle_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) capsule_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("capsule_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) convex_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("convex_polygon_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) concave_polygon_shape_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("concave_polygon_shape_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) shape_set_data(shape RID, data Variant) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("shape_set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175752987)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) shape_get_type(shape RID) PhysicsServer2DShapeType {
    mut object_out := i64(PhysicsServer2DShapeType.shape_world_boundary)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("shape_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1240598777)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer2DShapeType(object_out)}
}
pub fn (r &PhysicsServer2D) shape_get_data(shape RID) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("shape_get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171304767)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) space_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("space_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) space_set_active(space RID, active bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("space_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) space_is_active(space RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("space_is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) space_set_param(space RID, param PhysicsServer2DSpaceParameter, value f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("space_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 949194586)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) space_get_param(space RID, param PhysicsServer2DSpaceParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("space_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 874111783)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) space_get_direct_state(space RID) PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("space_get_direct_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160173886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_set_space(area RID, space RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_get_space(area RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_add_shape(area RID, shape RID, transform Transform2D, disabled bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 339056240)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_set_shape(area RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) area_set_shape_transform(area RID, shape_idx i32, transform Transform2D) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_set_shape_disabled(area RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) area_get_shape_count(area RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_get_shape(area RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) area_get_shape_transform(area RID, shape_idx i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_remove_shape(area RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_clear_shapes(area RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_set_collision_layer(area RID, layer u32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_get_collision_layer(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_set_collision_mask(area RID, mask u32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_get_collision_mask(area RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_set_param(area RID, param PhysicsServer2DAreaParameter, value Variant) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1257146028)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_set_transform(area RID, transform Transform2D) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1246044741)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_get_param(area RID, param PhysicsServer2DAreaParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3047435120)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_get_transform(area RID) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 213527486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_attach_object_instance_id(area RID, id u64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_get_object_instance_id(area RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_attach_canvas_instance_id(area RID, id u64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_attach_canvas_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_get_canvas_instance_id(area RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_get_canvas_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) area_set_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_monitor_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_set_area_monitor_callback(area RID, callback Callable) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_area_monitor_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3379118538)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) area_set_monitorable(area RID, monitorable bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("area_set_monitorable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    args[1] = unsafe{voidptr(&monitorable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_space(body RID, space RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_space(body RID) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814569979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_mode(body RID, mode PhysicsServer2DBodyMode) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1658067650)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_mode(body RID) PhysicsServer2DBodyMode {
    mut object_out := i64(PhysicsServer2DBodyMode.body_mode_static)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3261702585)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer2DBodyMode(object_out)}
}
pub fn (r &PhysicsServer2D) body_add_shape(body RID, shape RID, transform Transform2D, disabled bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 339056240)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_set_shape(body RID, shape_idx i32, shape RID) {
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) body_set_shape_transform(body RID, shape_idx i32, transform Transform2D) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736082694)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_shape_count(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_get_shape(body RID, shape_idx i32) RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) body_get_shape_transform(body RID, shape_idx i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_shape_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1324854622)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_remove_shape(body RID, shape_idx i32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_clear_shapes(body RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_set_shape_disabled(body RID, shape_idx i32, disabled bool) {
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) body_set_shape_as_one_way_collision(body RID, shape_idx i32, enable bool, margin f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_shape_as_one_way_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2556489974)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&shape_idx)}
    args[2] = unsafe{voidptr(&enable)}
    args[3] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_attach_object_instance_id(body RID, id u64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_attach_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_object_instance_id(body RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_object_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_attach_canvas_instance_id(body RID, id u64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_attach_canvas_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_canvas_instance_id(body RID) u64 {
    mut object_out := u64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_canvas_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_continuous_collision_detection_mode(body RID, mode PhysicsServer2DCCDMode) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_continuous_collision_detection_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1882257015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_continuous_collision_detection_mode(body RID) PhysicsServer2DCCDMode {
    mut object_out := i64(PhysicsServer2DCCDMode.ccd_mode_disabled)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_continuous_collision_detection_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2661282217)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer2DCCDMode(object_out)}
}
pub fn (r &PhysicsServer2D) body_set_collision_layer(body RID, layer u32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_collision_layer(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_collision_mask(body RID, mask u32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_collision_mask(body RID) u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_collision_priority(body RID, priority f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_collision_priority(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_param(body RID, param PhysicsServer2DBodyParameter, value Variant) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2715630609)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_param(body RID, param PhysicsServer2DBodyParameter) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3208033526)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_reset_mass_properties(body RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_reset_mass_properties")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_set_state(body RID, state PhysicsServer2DBodyState, value Variant) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706355209)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_state(body RID, state PhysicsServer2DBodyState) Variant {
    mut object_out := Variant{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4036367961)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    i64_state := i64(state)
    args[1] = unsafe{voidptr(&i64_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_apply_central_impulse(body RID, impulse Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_apply_central_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_apply_torque_impulse(body RID, impulse f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_apply_torque_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_apply_impulse(body RID, impulse Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_apply_impulse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205485391)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&impulse)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_apply_central_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_apply_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_apply_force(body RID, force Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_apply_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205485391)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_apply_torque(body RID, torque f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_apply_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_add_constant_central_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_add_constant_central_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_add_constant_force(body RID, force Vector2, position Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_add_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205485391)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_add_constant_torque(body RID, torque f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_add_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_set_constant_force(body RID, force Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_constant_force(body RID) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_constant_force")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2440833711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_constant_torque(body RID, torque f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1794382983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&torque)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_constant_torque(body RID) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_constant_torque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866169185)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_axis_velocity(body RID, axis_velocity Vector2) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_axis_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201125042)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&axis_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_add_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_add_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_remove_collision_exception(body RID, excepted_body RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_remove_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 395945892)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&excepted_body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_set_max_contacts_reported(body RID, amount i32) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_max_contacts_reported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3411492887)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_get_max_contacts_reported(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_max_contacts_reported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2198884583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_omit_force_integration(body RID, enable bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_set_omit_force_integration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) body_is_omitting_force_integration(body RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_is_omitting_force_integration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_set_force_integration_callback(body RID, callable Callable, userdata Variant) {
    classname := StringName.new("PhysicsServer2D")
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
pub fn (r &PhysicsServer2D) body_test_motion(body RID, parameters PhysicsTestMotionParameters2D, result PhysicsTestMotionResult2D) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_test_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1699844009)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    args[1] = parameters.ptr
    args[2] = result.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) body_get_direct_state(body RID) PhysicsDirectBodyState2D {
    mut object_out := PhysicsDirectBodyState2D{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("body_get_direct_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1191931871)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) joint_create() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) joint_clear(joint RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) joint_set_param(joint RID, param PhysicsServer2DJointParam, value f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3972556514)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) joint_get_param(joint RID, param PhysicsServer2DJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4016448949)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) joint_disable_collisions_between_bodies(joint RID, disable bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_disable_collisions_between_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265174801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) joint_is_disabled_collisions_between_bodies(joint RID) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_is_disabled_collisions_between_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155700596)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) joint_make_pin(joint RID, anchor Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_make_pin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1612646186)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&anchor)}
    args[2] = unsafe{voidptr(&body_a)}
    args[3] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) joint_make_groove(joint RID, groove1_a Vector2, groove2_a Vector2, anchor_b Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_make_groove")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 481430435)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&groove1_a)}
    args[2] = unsafe{voidptr(&groove2_a)}
    args[3] = unsafe{voidptr(&anchor_b)}
    args[4] = unsafe{voidptr(&body_a)}
    args[5] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) joint_make_damped_spring(joint RID, anchor_a Vector2, anchor_b Vector2, body_a RID, body_b RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_make_damped_spring")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1994657646)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    args[1] = unsafe{voidptr(&anchor_a)}
    args[2] = unsafe{voidptr(&anchor_b)}
    args[3] = unsafe{voidptr(&body_a)}
    args[4] = unsafe{voidptr(&body_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) pin_joint_set_flag(joint RID, flag PhysicsServer2DPinJointFlag, enabled bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("pin_joint_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3520002352)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    args[2] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) pin_joint_get_flag(joint RID, flag PhysicsServer2DPinJointFlag) bool {
    mut object_out := false
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("pin_joint_get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2647867364)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_flag := i64(flag)
    args[1] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) pin_joint_set_param(joint RID, param PhysicsServer2DPinJointParam, value f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("pin_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 550574241)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) pin_joint_get_param(joint RID, param PhysicsServer2DPinJointParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("pin_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 348281383)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) damped_spring_joint_set_param(joint RID, param PhysicsServer2DDampedSpringParam, value f64) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("damped_spring_joint_set_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 220564071)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) damped_spring_joint_get_param(joint RID, param PhysicsServer2DDampedSpringParam) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("damped_spring_joint_get_param")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2075871277)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    i64_param := i64(param)
    args[1] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsServer2D) joint_get_type(joint RID) PhysicsServer2DJointType {
    mut object_out := i64(PhysicsServer2DJointType.joint_type_pin)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("joint_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262502231)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PhysicsServer2DJointType(object_out)}
}
pub fn (r &PhysicsServer2D) free_rid(rid RID) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("free_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) set_active(active bool) {
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer2D) get_process_info(process_info PhysicsServer2DProcessInfo) i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsServer2D")
    fnname := StringName.new("get_process_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 576496006)
    mut args := unsafe { [1]voidptr{} }
    i64_process_info := i64(process_info)
    args[0] = unsafe{voidptr(&i64_process_info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

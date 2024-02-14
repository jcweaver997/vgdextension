module vgdextension

pub enum CharacterBody3DMotionMode as i64 {
    motion_mode_grounded = 0
    motion_mode_floating = 1
}

pub enum CharacterBody3DPlatformOnLeave as i64 {
    platform_on_leave_add_velocity = 0
    platform_on_leave_add_upward_velocity = 1
    platform_on_leave_do_nothing = 2
}

@[noinit]
pub struct CharacterBody3D {
    PhysicsBody3D
}

pub fn (mut r CharacterBody3D) move_and_slide() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("move_and_slide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) apply_floor_snap() {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("apply_floor_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CharacterBody3D) set_velocity(velocity Vector3) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_safe_margin(margin f64) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_safe_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_safe_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_safe_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) is_floor_stop_on_slope_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_floor_stop_on_slope_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_floor_stop_on_slope_enabled(enabled bool) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_floor_stop_on_slope_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CharacterBody3D) set_floor_constant_speed_enabled(enabled bool) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_floor_constant_speed_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) is_floor_constant_speed_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_floor_constant_speed_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_floor_block_on_wall_enabled(enabled bool) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_floor_block_on_wall_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) is_floor_block_on_wall_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_floor_block_on_wall_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_slide_on_ceiling_enabled(enabled bool) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_slide_on_ceiling_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) is_slide_on_ceiling_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_slide_on_ceiling_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_platform_floor_layers(exclude_layer u32) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_platform_floor_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_platform_floor_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_platform_floor_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_platform_wall_layers(exclude_layer u32) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_platform_wall_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_platform_wall_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_platform_wall_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_max_slides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_max_slides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_max_slides(max_slides i32) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_max_slides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_slides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_floor_max_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_floor_max_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_floor_max_angle(radians f64) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_floor_max_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CharacterBody3D) get_floor_snap_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_floor_snap_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_floor_snap_length(floor_snap_length f64) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_floor_snap_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&floor_snap_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_wall_min_slide_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_wall_min_slide_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_wall_min_slide_angle(radians f64) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_wall_min_slide_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_up_direction() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_up_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) set_up_direction(up_direction Vector3) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_up_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CharacterBody3D) set_motion_mode(mode CharacterBody3DMotionMode) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_motion_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2690739026)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_motion_mode() CharacterBody3DMotionMode {
    mut object_out := i64(CharacterBody3DMotionMode.motion_mode_grounded)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_motion_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3529553604)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CharacterBody3DMotionMode(object_out)}
}
pub fn (mut r CharacterBody3D) set_platform_on_leave(on_leave_apply_velocity CharacterBody3DPlatformOnLeave) {
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("set_platform_on_leave")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1459986142)
    mut args := unsafe { [1]voidptr{} }
    i64_on_leave_apply_velocity := i64(on_leave_apply_velocity)
    args[0] = unsafe{voidptr(&i64_on_leave_apply_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody3D) get_platform_on_leave() CharacterBody3DPlatformOnLeave {
    mut object_out := i64(CharacterBody3DPlatformOnLeave.platform_on_leave_add_velocity)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_platform_on_leave")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 996491171)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CharacterBody3DPlatformOnLeave(object_out)}
}
pub fn (r &CharacterBody3D) is_on_floor() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_on_floor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) is_on_floor_only() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_on_floor_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) is_on_ceiling() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_on_ceiling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) is_on_ceiling_only() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_on_ceiling_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) is_on_wall() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_on_wall")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) is_on_wall_only() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("is_on_wall_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_floor_normal() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_floor_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_wall_normal() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_wall_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_last_motion() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_last_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_position_delta() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_position_delta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_real_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_real_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_floor_angle(up_direction Vector3) f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_floor_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2906300789)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_platform_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_platform_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_platform_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_platform_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody3D) get_slide_collision_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_slide_collision_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) get_slide_collision(slide_idx i32) KinematicCollision3D {
    mut object_out := KinematicCollision3D{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_slide_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107003663)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slide_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CharacterBody3D) get_last_slide_collision() KinematicCollision3D {
    mut object_out := KinematicCollision3D{}
    classname := StringName.new("CharacterBody3D")
    fnname := StringName.new("get_last_slide_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 186875014)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

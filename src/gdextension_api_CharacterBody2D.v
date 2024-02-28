module vgdextension

pub enum CharacterBody2DMotionMode as i64 {
    motion_mode_grounded = 0
    motion_mode_floating = 1
}

pub enum CharacterBody2DPlatformOnLeave as i64 {
    platform_on_leave_add_velocity = 0
    platform_on_leave_add_upward_velocity = 1
    platform_on_leave_do_nothing = 2
}

@[noinit]
pub struct CharacterBody2D {
    PhysicsBody2D
}

pub fn (r &CharacterBody2D) move_and_slide() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("move_and_slide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) apply_floor_snap() {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("apply_floor_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) set_velocity(velocity Vector2) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_safe_margin(margin f64) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_safe_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_safe_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_safe_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) is_floor_stop_on_slope_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_floor_stop_on_slope_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_floor_stop_on_slope_enabled(enabled bool) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_floor_stop_on_slope_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) set_floor_constant_speed_enabled(enabled bool) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_floor_constant_speed_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) is_floor_constant_speed_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_floor_constant_speed_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_floor_block_on_wall_enabled(enabled bool) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_floor_block_on_wall_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) is_floor_block_on_wall_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_floor_block_on_wall_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_slide_on_ceiling_enabled(enabled bool) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_slide_on_ceiling_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) is_slide_on_ceiling_enabled() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_slide_on_ceiling_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_platform_floor_layers(exclude_layer u32) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_platform_floor_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_platform_floor_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_platform_floor_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_platform_wall_layers(exclude_layer u32) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_platform_wall_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_platform_wall_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_platform_wall_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_max_slides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_max_slides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_max_slides(max_slides i32) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_max_slides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_slides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_floor_max_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_floor_max_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_floor_max_angle(radians f64) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_floor_max_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_floor_snap_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_floor_snap_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_floor_snap_length(floor_snap_length f64) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_floor_snap_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&floor_snap_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_wall_min_slide_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_wall_min_slide_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_wall_min_slide_angle(radians f64) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_wall_min_slide_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_up_direction() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_up_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) set_up_direction(up_direction Vector2) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_up_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) set_motion_mode(mode CharacterBody2DMotionMode) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_motion_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1224392233)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_motion_mode() CharacterBody2DMotionMode {
    mut object_out := i64(CharacterBody2DMotionMode.motion_mode_grounded)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_motion_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1160151236)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CharacterBody2DMotionMode(object_out)}
}
pub fn (r &CharacterBody2D) set_platform_on_leave(on_leave_apply_velocity CharacterBody2DPlatformOnLeave) {
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("set_platform_on_leave")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2423324375)
    mut args := unsafe { [1]voidptr{} }
    i64_on_leave_apply_velocity := i64(on_leave_apply_velocity)
    args[0] = unsafe{voidptr(&i64_on_leave_apply_velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CharacterBody2D) get_platform_on_leave() CharacterBody2DPlatformOnLeave {
    mut object_out := i64(CharacterBody2DPlatformOnLeave.platform_on_leave_add_velocity)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_platform_on_leave")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4054324341)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CharacterBody2DPlatformOnLeave(object_out)}
}
pub fn (r &CharacterBody2D) is_on_floor() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_on_floor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) is_on_floor_only() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_on_floor_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) is_on_ceiling() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_on_ceiling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) is_on_ceiling_only() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_on_ceiling_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) is_on_wall() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_on_wall")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) is_on_wall_only() bool {
    mut object_out := false
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("is_on_wall_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_floor_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_floor_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_wall_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_wall_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_last_motion() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_last_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_position_delta() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_position_delta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_real_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_real_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_floor_angle(up_direction Vector2) f64 {
    mut object_out := f64(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_floor_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841063350)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_platform_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_platform_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_slide_collision_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_slide_collision_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_slide_collision(slide_idx i32) KinematicCollision2D {
    mut object_out := KinematicCollision2D{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_slide_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 860659811)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slide_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CharacterBody2D) get_last_slide_collision() KinematicCollision2D {
    mut object_out := KinematicCollision2D{}
    classname := StringName.new("CharacterBody2D")
    fnname := StringName.new("get_last_slide_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2161834755)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

module vgdextension

pub enum CPUParticles2DDrawOrder as i64 {
    draw_order_index = 0
    draw_order_lifetime = 1
}

pub enum CPUParticles2DParameter as i64 {
    param_initial_linear_velocity = 0
    param_angular_velocity = 1
    param_orbit_velocity = 2
    param_linear_accel = 3
    param_radial_accel = 4
    param_tangential_accel = 5
    param_damping = 6
    param_angle = 7
    param_scale = 8
    param_hue_variation = 9
    param_anim_speed = 10
    param_anim_offset = 11
    param_max = 12
}

pub enum CPUParticles2DParticleFlags as i64 {
    particle_flag_align_y_to_velocity = 0
    particle_flag_rotate_y = 1
    particle_flag_disable_z = 2
    particle_flag_max = 3
}

pub enum CPUParticles2DEmissionShape as i64 {
    emission_shape_point = 0
    emission_shape_sphere = 1
    emission_shape_sphere_surface = 2
    emission_shape_rectangle = 3
    emission_shape_points = 4
    emission_shape_directed_points = 5
    emission_shape_max = 6
}

@[noinit]
pub struct CPUParticles2D {
    Node2D
}

pub fn (mut r CPUParticles2D) set_emitting(emitting bool) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emitting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&emitting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_amount(amount i32) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_lifetime(secs f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_lifetime")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_one_shot(enable bool) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_pre_process_time(secs f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_pre_process_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_explosiveness_ratio(ratio f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_explosiveness_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_randomness_ratio(ratio f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_randomness_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_lifetime_randomness(random f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_lifetime_randomness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&random)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_use_local_coordinates(enable bool) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_use_local_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_fixed_fps(fps i32) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_fixed_fps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_fractional_delta(enable bool) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_fractional_delta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_speed_scale(scale f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) is_emitting() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("is_emitting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_amount")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_lifetime() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_lifetime")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_one_shot() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_pre_process_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_pre_process_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_explosiveness_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_explosiveness_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_randomness_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_randomness_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_lifetime_randomness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_lifetime_randomness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_use_local_coordinates() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_use_local_coordinates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_fixed_fps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_fixed_fps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_fractional_delta() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_fractional_delta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_speed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_draw_order(order CPUParticles2DDrawOrder) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_draw_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183193490)
    mut args := unsafe { [1]voidptr{} }
    i64_order := i64(order)
    args[0] = unsafe{voidptr(&i64_order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_draw_order() CPUParticles2DDrawOrder {
    mut object_out := i64(CPUParticles2DDrawOrder.draw_order_index)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_draw_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1668655735)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CPUParticles2DDrawOrder(object_out)}
}
pub fn (mut r CPUParticles2D) set_texture(texture Texture2D) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) restart() {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("restart")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) set_direction(direction Vector2) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_direction() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_spread(spread f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_spread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spread)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_spread() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_spread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_param_min(param CPUParticles2DParameter, value f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_param_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3320615296)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_param_min(param CPUParticles2DParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_param_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2038050600)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_param_max(param CPUParticles2DParameter, value f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_param_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3320615296)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_param_max(param CPUParticles2DParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_param_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2038050600)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_param_curve(param CPUParticles2DParameter, curve Curve) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_param_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2959350143)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_param_curve(param CPUParticles2DParameter) Curve {
    mut object_out := Curve{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_param_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2603158474)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_color(color Color) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_color_ramp(ramp Gradient) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = ramp.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_color_ramp() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_color_initial_ramp(ramp Gradient) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_color_initial_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = ramp.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_color_initial_ramp() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_color_initial_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_particle_flag(particle_flag CPUParticles2DParticleFlags, enable bool) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_particle_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4178137949)
    mut args := unsafe { [2]voidptr{} }
    i64_particle_flag := i64(particle_flag)
    args[0] = unsafe{voidptr(&i64_particle_flag)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_particle_flag(particle_flag CPUParticles2DParticleFlags) bool {
    mut object_out := false
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_particle_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2829976507)
    mut args := unsafe { [1]voidptr{} }
    i64_particle_flag := i64(particle_flag)
    args[0] = unsafe{voidptr(&i64_particle_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_emission_shape(shape CPUParticles2DEmissionShape) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emission_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 393763892)
    mut args := unsafe { [1]voidptr{} }
    i64_shape := i64(shape)
    args[0] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_emission_shape() CPUParticles2DEmissionShape {
    mut object_out := i64(CPUParticles2DEmissionShape.emission_shape_point)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_emission_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740246024)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CPUParticles2DEmissionShape(object_out)}
}
pub fn (mut r CPUParticles2D) set_emission_sphere_radius(radius f64) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emission_sphere_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_emission_sphere_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_emission_sphere_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_emission_rect_extents(extents Vector2) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emission_rect_extents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_emission_rect_extents() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_emission_rect_extents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_emission_points(array PackedVector2Array) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emission_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_emission_points() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_emission_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_emission_normals(array PackedVector2Array) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emission_normals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_emission_normals() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_emission_normals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_emission_colors(array PackedColorArray) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_emission_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3546319833)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_emission_colors() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_emission_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CPUParticles2D) get_gravity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_gravity(accel_vec Vector2) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&accel_vec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) get_split_scale() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_split_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_split_scale(split_scale bool) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_split_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&split_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_scale_curve_x() Curve {
    mut object_out := Curve{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_scale_curve_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_scale_curve_x(scale_curve Curve) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_scale_curve_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = scale_curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CPUParticles2D) get_scale_curve_y() Curve {
    mut object_out := Curve{}
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("get_scale_curve_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CPUParticles2D) set_scale_curve_y(scale_curve Curve) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("set_scale_curve_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = scale_curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CPUParticles2D) convert_from_particles(particles Node) {
    classname := StringName.new("CPUParticles2D")
    fnname := StringName.new("convert_from_particles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = particles.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

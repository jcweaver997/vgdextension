module vgdextension

pub enum ParticleProcessMaterialParameter as i64 {
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
    param_radial_velocity = 15
    param_directional_velocity = 16
    param_scale_over_velocity = 17
    param_max = 18
    param_turb_vel_influence = 13
    param_turb_init_displacement = 14
    param_turb_influence_over_life = 12
}

pub enum ParticleProcessMaterialParticleFlags as i64 {
    particle_flag_align_y_to_velocity = 0
    particle_flag_rotate_y = 1
    particle_flag_disable_z = 2
    particle_flag_damping_as_friction = 3
    particle_flag_max = 4
}

pub enum ParticleProcessMaterialEmissionShape as i64 {
    emission_shape_point = 0
    emission_shape_sphere = 1
    emission_shape_sphere_surface = 2
    emission_shape_box = 3
    emission_shape_points = 4
    emission_shape_directed_points = 5
    emission_shape_ring = 6
    emission_shape_max = 7
}

pub enum ParticleProcessMaterialSubEmitterMode as i64 {
    sub_emitter_disabled = 0
    sub_emitter_constant = 1
    sub_emitter_at_end = 2
    sub_emitter_at_collision = 3
    sub_emitter_max = 4
}

pub enum ParticleProcessMaterialCollisionMode as i64 {
    collision_disabled = 0
    collision_rigid = 1
    collision_hide_on_contact = 2
    collision_max = 3
}

@[noinit]
pub struct ParticleProcessMaterial {
    Material
}

pub fn (r &ParticleProcessMaterial) set_direction(degrees Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_direction() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_inherit_velocity_ratio(ratio f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_inherit_velocity_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_inherit_velocity_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_inherit_velocity_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_spread(degrees f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_spread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_spread() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_spread")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_flatness(amount f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_flatness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_flatness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_flatness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_param_min(param ParticleProcessMaterialParameter, value f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_param_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295964248)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_param_min(param ParticleProcessMaterialParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_param_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3903786503)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_param_max(param ParticleProcessMaterialParameter, value f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_param_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295964248)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_param_max(param ParticleProcessMaterialParameter) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_param_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3903786503)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_param_texture(param ParticleProcessMaterialParameter, texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_param_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 526976089)
    mut args := unsafe { [2]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    args[1] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_param_texture(param ParticleProcessMaterialParameter) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_param_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3489372978)
    mut args := unsafe { [1]voidptr{} }
    i64_param := i64(param)
    args[0] = unsafe{voidptr(&i64_param)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_color(color Color) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_color_ramp(ramp Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&ramp.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_color_ramp() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_color_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_alpha_curve(curve Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_alpha_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_alpha_curve() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_alpha_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_curve(curve Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_curve() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_color_initial_ramp(ramp Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_color_initial_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&ramp.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_color_initial_ramp() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_color_initial_ramp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_velocity_limit_curve(curve Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_velocity_limit_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_velocity_limit_curve() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_velocity_limit_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_particle_flag(particle_flag ParticleProcessMaterialParticleFlags, enable bool) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_particle_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1711815571)
    mut args := unsafe { [2]voidptr{} }
    i64_particle_flag := i64(particle_flag)
    args[0] = unsafe{voidptr(&i64_particle_flag)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_particle_flag(particle_flag ParticleProcessMaterialParticleFlags) bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_particle_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3895316907)
    mut args := unsafe { [1]voidptr{} }
    i64_particle_flag := i64(particle_flag)
    args[0] = unsafe{voidptr(&i64_particle_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_velocity_pivot(pivot Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_velocity_pivot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pivot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_velocity_pivot() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_velocity_pivot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_shape(shape ParticleProcessMaterialEmissionShape) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 461501442)
    mut args := unsafe { [1]voidptr{} }
    i64_shape := i64(shape)
    args[0] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_shape() ParticleProcessMaterialEmissionShape {
    mut object_out := i64(ParticleProcessMaterialEmissionShape.emission_shape_point)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3719733018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ParticleProcessMaterialEmissionShape(object_out)}
}
pub fn (r &ParticleProcessMaterial) set_emission_sphere_radius(radius f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_sphere_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_sphere_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_sphere_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_box_extents(extents Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_box_extents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_box_extents() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_box_extents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_point_texture(texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_point_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_point_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_point_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_normal_texture(texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_normal_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_normal_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_normal_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_color_texture(texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_color_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_color_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_color_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_point_count(point_count i32) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_ring_axis(axis Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_ring_axis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_axis() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_ring_axis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_ring_height(height f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_ring_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_ring_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_ring_radius(radius f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_ring_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_ring_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_ring_inner_radius(inner_radius f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_ring_inner_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&inner_radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_inner_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_ring_inner_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_shape_offset(emission_shape_offset Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_shape_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&emission_shape_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_shape_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_shape_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_emission_shape_scale(emission_shape_scale Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_emission_shape_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&emission_shape_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_emission_shape_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_emission_shape_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) get_turbulence_enabled() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_turbulence_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_turbulence_enabled(turbulence_enabled bool) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_turbulence_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&turbulence_enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_turbulence_noise_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_turbulence_noise_strength(turbulence_noise_strength f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_turbulence_noise_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&turbulence_noise_strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_turbulence_noise_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_turbulence_noise_scale(turbulence_noise_scale f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_turbulence_noise_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&turbulence_noise_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_speed_random() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_turbulence_noise_speed_random")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_turbulence_noise_speed_random(turbulence_noise_speed_random f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_turbulence_noise_speed_random")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&turbulence_noise_speed_random)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_speed() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_turbulence_noise_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_turbulence_noise_speed(turbulence_noise_speed Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_turbulence_noise_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&turbulence_noise_speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_gravity(accel_vec Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&accel_vec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) set_lifetime_randomness(randomness f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_lifetime_randomness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&randomness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_lifetime_randomness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_lifetime_randomness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_mode() ParticleProcessMaterialSubEmitterMode {
    mut object_out := i64(ParticleProcessMaterialSubEmitterMode.sub_emitter_disabled)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_sub_emitter_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2399052877)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ParticleProcessMaterialSubEmitterMode(object_out)}
}
pub fn (r &ParticleProcessMaterial) set_sub_emitter_mode(mode ParticleProcessMaterialSubEmitterMode) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_sub_emitter_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2161806672)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_frequency() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_sub_emitter_frequency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_sub_emitter_frequency(hz f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_sub_emitter_frequency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hz)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_amount_at_end() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_sub_emitter_amount_at_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_sub_emitter_amount_at_end(amount i32) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_sub_emitter_amount_at_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_amount_at_collision() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_sub_emitter_amount_at_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_sub_emitter_amount_at_collision(amount i32) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_sub_emitter_amount_at_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_keep_velocity() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_sub_emitter_keep_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_sub_emitter_keep_velocity(enable bool) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_sub_emitter_keep_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) set_attractor_interaction_enabled(enabled bool) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_attractor_interaction_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) is_attractor_interaction_enabled() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("is_attractor_interaction_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_collision_mode(mode ParticleProcessMaterialCollisionMode) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_collision_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 653804659)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_collision_mode() ParticleProcessMaterialCollisionMode {
    mut object_out := i64(ParticleProcessMaterialCollisionMode.collision_disabled)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_collision_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 139371864)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ParticleProcessMaterialCollisionMode(object_out)}
}
pub fn (r &ParticleProcessMaterial) set_collision_use_scale(radius bool) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_collision_use_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) is_collision_using_scale() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("is_collision_using_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_collision_friction(friction f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_collision_friction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&friction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_collision_friction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_collision_friction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ParticleProcessMaterial) set_collision_bounce(bounce f64) {
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("set_collision_bounce")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bounce)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParticleProcessMaterial) get_collision_bounce() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ParticleProcessMaterial")
    fnname := StringName.new("get_collision_bounce")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

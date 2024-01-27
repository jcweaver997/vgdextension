pub enum ParticleProcessMaterialParameter {
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
    param_max = 15
    param_turb_vel_influence = 13
    param_turb_init_displacement = 14
    param_turb_influence_over_life = 12
}

pub enum ParticleProcessMaterialParticleFlags {
    particle_flag_align_y_to_velocity = 0
    particle_flag_rotate_y = 1
    particle_flag_disable_z = 2
    particle_flag_max = 3
}

pub enum ParticleProcessMaterialEmissionShape {
    emission_shape_point = 0
    emission_shape_sphere = 1
    emission_shape_sphere_surface = 2
    emission_shape_box = 3
    emission_shape_points = 4
    emission_shape_directed_points = 5
    emission_shape_ring = 6
    emission_shape_max = 7
}

pub enum ParticleProcessMaterialSubEmitterMode {
    sub_emitter_disabled = 0
    sub_emitter_constant = 1
    sub_emitter_at_end = 2
    sub_emitter_at_collision = 3
    sub_emitter_max = 4
}

pub enum ParticleProcessMaterialCollisionMode {
    collision_disabled = 0
    collision_rigid = 1
    collision_hide_on_contact = 2
    collision_max = 3
}

pub type ParticleProcessMaterial = voidptr

pub fn (mut r ParticleProcessMaterial) set_direction(degrees Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_direction() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_spread(degrees f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_spread() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_flatness(amount f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_flatness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_flatness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_flatness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_param_min(param ParticleProcessMaterialParameter, value f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_param_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295964248)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_param_min(param ParticleProcessMaterialParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_param_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3903786503)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_param_max(param ParticleProcessMaterialParameter, value f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_param_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295964248)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_param_max(param ParticleProcessMaterialParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_param_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3903786503)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_param_texture(param ParticleProcessMaterialParameter, texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_param_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 526976089)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_param_texture(param ParticleProcessMaterialParameter) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_param_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3489372978)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_color(color Color) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_color_ramp(ramp Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_color_ramp() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_color_initial_ramp(ramp Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_initial_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_color_initial_ramp() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_initial_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_particle_flag(particle_flag ParticleProcessMaterialParticleFlags, enable bool) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_particle_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1711815571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_particle_flag(particle_flag ParticleProcessMaterialParticleFlags) bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_particle_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3895316907)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particle_flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_shape(shape ParticleProcessMaterialEmissionShape) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 461501442)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_shape() ParticleProcessMaterialEmissionShape {
    mut object_out := ParticleProcessMaterialEmissionShape.emission_shape_point
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3719733018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_sphere_radius(radius f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_sphere_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_sphere_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_sphere_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_box_extents(extents Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_box_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_box_extents() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_box_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_point_texture(texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_point_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_point_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_point_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_normal_texture(texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_normal_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_normal_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_normal_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_color_texture(texture Texture2D) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_color_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_color_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_color_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_point_count(point_count i32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_ring_axis(axis Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_axis() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_ring_height(height f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_ring_radius(radius f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_emission_ring_inner_radius(inner_radius f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_emission_ring_inner_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ParticleProcessMaterial) get_turbulence_enabled() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbulence_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_turbulence_enabled(turbulence_enabled bool) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbulence_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_strength() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbulence_noise_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_turbulence_noise_strength(turbulence_noise_strength f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbulence_noise_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbulence_noise_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_turbulence_noise_scale(turbulence_noise_scale f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbulence_noise_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_speed_random() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbulence_noise_speed_random")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_turbulence_noise_speed_random(turbulence_noise_speed_random f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbulence_noise_speed_random")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_turbulence_noise_speed() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbulence_noise_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_turbulence_noise_speed(turbulence_noise_speed Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbulence_noise_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_gravity(accel_vec Vector3) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ParticleProcessMaterial) set_lifetime_randomness(randomness f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_lifetime_randomness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_lifetime_randomness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_lifetime_randomness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_mode() ParticleProcessMaterialSubEmitterMode {
    mut object_out := ParticleProcessMaterialSubEmitterMode.sub_emitter_disabled
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2399052877)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_sub_emitter_mode(mode ParticleProcessMaterialSubEmitterMode) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2161806672)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_frequency() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter_frequency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_sub_emitter_frequency(hz f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter_frequency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_amount_at_end() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter_amount_at_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_sub_emitter_amount_at_end(amount i32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter_amount_at_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_amount_at_collision() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter_amount_at_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_sub_emitter_amount_at_collision(amount i32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter_amount_at_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_sub_emitter_keep_velocity() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter_keep_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_sub_emitter_keep_velocity(enable bool) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter_keep_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ParticleProcessMaterial) set_attractor_interaction_enabled(enabled bool) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_attractor_interaction_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) is_attractor_interaction_enabled() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_attractor_interaction_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_collision_mode(mode ParticleProcessMaterialCollisionMode) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 653804659)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_collision_mode() ParticleProcessMaterialCollisionMode {
    mut object_out := ParticleProcessMaterialCollisionMode.collision_disabled
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 139371864)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_collision_use_scale(radius bool) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_use_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) is_collision_using_scale() bool {
    mut object_out := false
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_collision_using_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_collision_friction(friction f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_collision_friction() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParticleProcessMaterial) set_collision_bounce(bounce f32) {
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParticleProcessMaterial) get_collision_bounce() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ParticleProcessMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

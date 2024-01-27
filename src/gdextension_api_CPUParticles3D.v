module vgdextension

pub enum CPUParticles3DDrawOrder {
    draw_order_index = 0
    draw_order_lifetime = 1
    draw_order_view_depth = 2
}

pub enum CPUParticles3DParameter {
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

pub enum CPUParticles3DParticleFlags {
    particle_flag_align_y_to_velocity = 0
    particle_flag_rotate_y = 1
    particle_flag_disable_z = 2
    particle_flag_max = 3
}

pub enum CPUParticles3DEmissionShape {
    emission_shape_point = 0
    emission_shape_sphere = 1
    emission_shape_sphere_surface = 2
    emission_shape_box = 3
    emission_shape_points = 4
    emission_shape_directed_points = 5
    emission_shape_ring = 6
    emission_shape_max = 7
}

pub type CPUParticles3D = voidptr

pub fn (mut r CPUParticles3D) set_emitting(emitting bool) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_amount(amount i32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_lifetime(secs f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_one_shot(enable bool) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_pre_process_time(secs f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_explosiveness_ratio(ratio f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_randomness_ratio(ratio f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_lifetime_randomness(random f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_lifetime_randomness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_use_local_coordinates(enable bool) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_fixed_fps(fps i32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_fractional_delta(enable bool) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_speed_scale(scale f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) is_emitting() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_lifetime() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_one_shot() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_pre_process_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_explosiveness_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_randomness_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_lifetime_randomness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_lifetime_randomness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_use_local_coordinates() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_fixed_fps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_fractional_delta() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_speed_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_draw_order(order CPUParticles3DDrawOrder) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1427401774)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_draw_order() CPUParticles3DDrawOrder {
    mut object_out := CPUParticles3DDrawOrder.draw_order_index
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321900776)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_mesh(mesh Mesh) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_mesh() Mesh {
    mut object_out := Mesh(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) restart() {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("restart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) set_direction(direction Vector3) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_direction() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_spread(degrees f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_spread() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_flatness(amount f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_flatness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_flatness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_flatness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_param_min(param CPUParticles3DParameter, value f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 557936109)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_param_min(param CPUParticles3DParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 597646162)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_param_max(param CPUParticles3DParameter, value f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 557936109)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_param_max(param CPUParticles3DParameter) f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 597646162)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_param_curve(param CPUParticles3DParameter, curve Curve) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_param_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4044142537)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_param_curve(param CPUParticles3DParameter) Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_param_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4132790277)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&param)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_color(color Color) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_color_ramp(ramp Gradient) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_color_ramp() Gradient {
    mut object_out := Gradient(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_color_initial_ramp(ramp Gradient) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_initial_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_color_initial_ramp() Gradient {
    mut object_out := Gradient(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_initial_ramp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_particle_flag(particle_flag CPUParticles3DParticleFlags, enable bool) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_particle_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3515406498)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_particle_flag(particle_flag CPUParticles3DParticleFlags) bool {
    mut object_out := false
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_particle_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2845201987)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particle_flag)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_shape(shape CPUParticles3DEmissionShape) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 491823814)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_shape() CPUParticles3DEmissionShape {
    mut object_out := CPUParticles3DEmissionShape.emission_shape_point
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961454842)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_sphere_radius(radius f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_sphere_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_sphere_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_sphere_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_box_extents(extents Vector3) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_box_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_box_extents() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_box_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_points(array PackedVector3Array) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_points() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_normals(array PackedVector3Array) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_normals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_normals() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_normals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_colors(array PackedColorArray) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3546319833)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_colors() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_ring_axis(axis Vector3) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_ring_axis() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_ring_height(height f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_ring_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_ring_radius(radius f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_ring_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_emission_ring_inner_radius(inner_radius f32) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_ring_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_emission_ring_inner_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_ring_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CPUParticles3D) get_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_gravity(accel_vec Vector3) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) get_split_scale() bool {
    mut object_out := false
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_split_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_split_scale(split_scale bool) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_split_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_scale_curve_x() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale_curve_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_scale_curve_x(scale_curve Curve) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale_curve_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_scale_curve_y() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale_curve_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_scale_curve_y(scale_curve Curve) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale_curve_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CPUParticles3D) get_scale_curve_z() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale_curve_z")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CPUParticles3D) set_scale_curve_z(scale_curve Curve) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale_curve_z")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CPUParticles3D) convert_from_particles(particles Node) {
    classname := StringName.new("CPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("convert_from_particles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

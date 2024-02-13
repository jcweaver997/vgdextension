module vgdextension

pub enum GPUParticles2DDrawOrder {
    draw_order_index = 0
    draw_order_lifetime = 1
    draw_order_reverse_lifetime = 2
}

pub enum GPUParticles2DEmitFlags {
    emit_flag_position = 1
    emit_flag_rotation_scale = 2
    emit_flag_velocity = 4
    emit_flag_color = 8
    emit_flag_custom = 16
}

@[noinit]
pub struct GPUParticles2D {
    Node2D
}

pub fn (mut r GPUParticles2D) set_emitting(emitting bool) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&emitting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_amount(amount i32) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_lifetime(secs f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_one_shot(secs bool) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_pre_process_time(secs f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_explosiveness_ratio(ratio f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_randomness_ratio(ratio f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_visibility_rect(visibility_rect Rect2) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visibility_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_use_local_coordinates(enable bool) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_fixed_fps(fps i32) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_fractional_delta(enable bool) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_interpolate(enable bool) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_interpolate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_process_material(material Material) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_speed_scale(scale f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_collision_base_size(size f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_base_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) is_emitting() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_lifetime() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_one_shot() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_pre_process_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_explosiveness_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_randomness_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_visibility_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_use_local_coordinates() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_fixed_fps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_fractional_delta() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_interpolate() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_interpolate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_process_material() Material {
    mut object_out := Material{}
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_speed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_collision_base_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_base_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles2D) set_draw_order(order GPUParticles2DDrawOrder) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1939677959)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) get_draw_order() GPUParticles2DDrawOrder {
    mut object_out := GPUParticles2DDrawOrder.draw_order_index
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 941479095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles2D) set_texture(texture Texture2D) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) capture_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("capture_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles2D) restart() {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("restart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_sub_emitter(path NodePath) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) get_sub_emitter() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles2D) emit_particle(xform Transform2D, velocity Vector2, color Color, custom Color, flags u32) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("emit_particle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2179202058)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    args[1] = unsafe{voidptr(&velocity)}
    args[2] = unsafe{voidptr(&color)}
    args[3] = unsafe{voidptr(&custom)}
    args[4] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_trail_enabled(enabled bool) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_trail_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GPUParticles2D) set_trail_lifetime(secs f64) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_trail_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&secs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) is_trail_enabled() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_trail_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles2D) get_trail_lifetime() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_trail_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles2D) set_trail_sections(sections i32) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_trail_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sections)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) get_trail_sections() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_trail_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles2D) set_trail_section_subdivisions(subdivisions i32) {
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_trail_section_subdivisions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&subdivisions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GPUParticles2D) get_trail_section_subdivisions() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_trail_section_subdivisions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

pub enum GPUParticles3DDrawOrder {
    draw_order_index = 0
    draw_order_lifetime = 1
    draw_order_reverse_lifetime = 2
    draw_order_view_depth = 3
}

pub enum GPUParticles3DEmitFlags {
    emit_flag_position = 1
    emit_flag_rotation_scale = 2
    emit_flag_velocity = 4
    emit_flag_color = 8
    emit_flag_custom = 16
}

pub enum GPUParticles3DTransformAlign {
    transform_align_disabled = 0
    transform_align_z_billboard = 1
    transform_align_y_to_velocity = 2
    transform_align_z_billboard_y_to_velocity = 3
}

pub type GPUParticles3D = voidptr

pub fn (mut r GPUParticles3D) set_emitting(emitting bool) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_amount(amount i32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_lifetime(secs f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_one_shot(enable bool) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_pre_process_time(secs f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_explosiveness_ratio(ratio f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_randomness_ratio(ratio f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_visibility_aabb(aabb AABB) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_use_local_coordinates(enable bool) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_fixed_fps(fps i32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_fractional_delta(enable bool) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_interpolate(enable bool) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_interpolate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_process_material(material Material) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_speed_scale(scale f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_collision_base_size(size f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_base_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) is_emitting() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_emitting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_amount() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_lifetime() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_one_shot() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_pre_process_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pre_process_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_explosiveness_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_explosiveness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_randomness_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_randomness_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_visibility_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_use_local_coordinates() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_local_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_fixed_fps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fixed_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_fractional_delta() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fractional_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_interpolate() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_interpolate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_process_material() Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_speed_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_collision_base_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_base_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) set_draw_order(order GPUParticles3DDrawOrder) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208074815)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) get_draw_order() GPUParticles3DDrawOrder {
    mut object_out := GPUParticles3DDrawOrder.draw_order_index
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3770381780)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) set_draw_passes(passes i32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_passes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_draw_pass_mesh(pass i32, mesh Mesh) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_pass_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969122797)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) get_draw_passes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_passes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_draw_pass_mesh(pass i32) Mesh {
    mut object_out := Mesh(unsafe{nil})
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_draw_pass_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1576363275)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pass)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) set_skin(skin Skin) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) get_skin() Skin {
    mut object_out := Skin(unsafe{nil})
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) restart() {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("restart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) capture_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("capture_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) set_sub_emitter(path NodePath) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sub_emitter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) get_sub_emitter() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sub_emitter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) emit_particle(xform Transform3D, velocity Vector3, color Color, custom Color, flags i32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("emit_particle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 992173727)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_trail_enabled(enabled bool) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_trail_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GPUParticles3D) set_trail_lifetime(secs f32) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_trail_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) is_trail_enabled() bool {
    mut object_out := false
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_trail_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GPUParticles3D) get_trail_lifetime() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_trail_lifetime")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GPUParticles3D) set_transform_align(align GPUParticles3DTransformAlign) {
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3892425954)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GPUParticles3D) get_transform_align() GPUParticles3DTransformAlign {
    mut object_out := GPUParticles3DTransformAlign.transform_align_disabled
    classname := StringName.new("GPUParticles3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2100992166)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

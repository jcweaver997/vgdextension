module vgdextension

pub enum Camera3DProjectionType {
    projection_perspective = 0
    projection_orthogonal = 1
    projection_frustum = 2
}

pub enum Camera3DKeepAspect {
    keep_width = 0
    keep_height = 1
}

pub enum Camera3DDopplerTracking {
    doppler_tracking_disabled = 0
    doppler_tracking_idle_step = 1
    doppler_tracking_physics_step = 2
}

pub type Camera3D = voidptr

pub fn (r &Camera3D) project_ray_normal(screen_point Vector2) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("project_ray_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718073306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) project_local_ray_normal(screen_point Vector2) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("project_local_ray_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718073306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) project_ray_origin(screen_point Vector2) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("project_ray_origin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718073306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) unproject_position(world_point Vector3) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("unproject_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3758901831)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) is_position_behind(world_point Vector3) bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_position_behind")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108956480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) project_position(screen_point Vector2, z_depth f32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("project_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171975744)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    args[1] = unsafe{voidptr(&z_depth)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_perspective(fov f32, z_near f32, z_far f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_perspective")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385087082)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_orthogonal(size f32, z_near f32, z_far f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_orthogonal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385087082)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_frustum(size f32, offset Vector2, z_near f32, z_far f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 354890663)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) make_current() {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("make_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) clear_current(enable_next bool) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_current(enabled bool) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) is_current() bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_camera_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_camera_projection() Projection {
    mut object_out := Projection{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_projection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2910717950)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_fov() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_frustum_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_frustum_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_far() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_far")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_near() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_near")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_fov(fov f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_frustum_offset(offset Vector2) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frustum_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_size(size f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_far(far f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_far")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_near(near f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_near")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_projection() Camera3DProjectionType {
    mut object_out := Camera3DProjectionType.projection_perspective
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_projection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624185235)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_projection(mode Camera3DProjectionType) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_projection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4218540108)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera3D) set_h_offset(offset f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_h_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_v_offset(offset f32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_v_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_cull_mask(mask i32) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_environment(env Environment) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_environment() Environment {
    mut object_out := Environment(unsafe{nil})
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_attributes(env CameraAttributes) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_attributes() CameraAttributes {
    mut object_out := CameraAttributes(unsafe{nil})
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_keep_aspect_mode(mode Camera3DKeepAspect) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_keep_aspect_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740651252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_keep_aspect_mode() Camera3DKeepAspect {
    mut object_out := Camera3DKeepAspect.keep_width
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_keep_aspect_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2790278316)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_doppler_tracking(mode Camera3DDopplerTracking) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_doppler_tracking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3109431270)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_doppler_tracking() Camera3DDopplerTracking {
    mut object_out := Camera3DDopplerTracking.doppler_tracking_disabled
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_doppler_tracking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1584483649)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_frustum() Array {
    mut object_out := Array{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) is_position_in_frustum(world_point Vector3) bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_position_in_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108956480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera3D) get_camera_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) get_pyramid_shape_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pyramid_shape_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera3D) set_cull_mask_value(layer_number i32, value bool) {
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera3D) get_cull_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

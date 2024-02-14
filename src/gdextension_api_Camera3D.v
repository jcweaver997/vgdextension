module vgdextension

pub enum Camera3DProjectionType as i64 {
    projection_perspective = 0
    projection_orthogonal = 1
    projection_frustum = 2
}

pub enum Camera3DKeepAspect as i64 {
    keep_width = 0
    keep_height = 1
}

pub enum Camera3DDopplerTracking as i64 {
    doppler_tracking_disabled = 0
    doppler_tracking_idle_step = 1
    doppler_tracking_physics_step = 2
}

@[noinit]
pub struct Camera3D {
    Node3D
}

pub fn (r &Camera3D) project_ray_normal(screen_point Vector2) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("project_ray_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718073306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) project_local_ray_normal(screen_point Vector2) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("project_local_ray_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718073306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) project_ray_origin(screen_point Vector2) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("project_ray_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718073306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) unproject_position(world_point Vector3) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("unproject_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3758901831)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) is_position_behind(world_point Vector3) bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    fnname := StringName.new("is_position_behind")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108956480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) project_position(screen_point Vector2, z_depth f64) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("project_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171975744)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    args[1] = unsafe{voidptr(&z_depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_perspective(fov f64, z_near f64, z_far f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_perspective")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385087082)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&fov)}
    args[1] = unsafe{voidptr(&z_near)}
    args[2] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_orthogonal(size f64, z_near f64, z_far f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_orthogonal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385087082)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&z_near)}
    args[2] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_frustum(size f64, offset Vector2, z_near f64, z_far f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_frustum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 354890663)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&z_near)}
    args[3] = unsafe{voidptr(&z_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) make_current() {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("make_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) clear_current(enable_next bool) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("clear_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable_next)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_current(enabled bool) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) is_current() bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    fnname := StringName.new("is_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_camera_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_camera_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_camera_projection() Projection {
    mut object_out := Projection{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_camera_projection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2910717950)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_fov() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_frustum_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_frustum_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_far() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_far")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_near() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_near")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_fov(fov f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fov)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_frustum_offset(offset Vector2) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_frustum_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_size(size f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_far(far f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_far")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_near(near f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_near")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&near)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_projection() Camera3DProjectionType {
    mut object_out := i64(Camera3DProjectionType.projection_perspective)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_projection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624185235)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Camera3DProjectionType(object_out)}
}
pub fn (mut r Camera3D) set_projection(mode Camera3DProjectionType) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_projection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4218540108)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Camera3D) set_h_offset(offset f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_h_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_h_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_h_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_v_offset(offset f64) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_v_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_v_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_v_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_cull_mask(mask u32) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_cull_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_environment(env Environment) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
    mut args := unsafe { [1]voidptr{} }
    args[0] = env.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_environment() Environment {
    mut object_out := Environment{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_attributes(env CameraAttributes) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_attributes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    mut args := unsafe { [1]voidptr{} }
    args[0] = env.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_attributes() CameraAttributes {
    mut object_out := CameraAttributes{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_attributes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_keep_aspect_mode(mode Camera3DKeepAspect) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_keep_aspect_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740651252)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_keep_aspect_mode() Camera3DKeepAspect {
    mut object_out := i64(Camera3DKeepAspect.keep_width)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_keep_aspect_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2790278316)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Camera3DKeepAspect(object_out)}
}
pub fn (mut r Camera3D) set_doppler_tracking(mode Camera3DDopplerTracking) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_doppler_tracking")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3109431270)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_doppler_tracking() Camera3DDopplerTracking {
    mut object_out := i64(Camera3DDopplerTracking.doppler_tracking_disabled)
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_doppler_tracking")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1584483649)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Camera3DDopplerTracking(object_out)}
}
pub fn (r &Camera3D) get_frustum() Array {
    mut object_out := Array{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_frustum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) is_position_in_frustum(world_point Vector3) bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    fnname := StringName.new("is_position_in_frustum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108956480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Camera3D) get_camera_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_camera_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) get_pyramid_shape_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_pyramid_shape_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 529393457)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Camera3D) set_cull_mask_value(layer_number i32, value bool) {
    classname := StringName.new("Camera3D")
    fnname := StringName.new("set_cull_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Camera3D) get_cull_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("Camera3D")
    fnname := StringName.new("get_cull_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

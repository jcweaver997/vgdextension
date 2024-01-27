module vgdextension

pub enum Camera2DAnchorMode {
    anchor_mode_fixed_top_left = 0
    anchor_mode_drag_center = 1
}

pub enum Camera2DCamera2DProcessCallback {
    camera2d_process_physics = 0
    camera2d_process_idle = 1
}

pub type Camera2D = voidptr

pub fn (mut r Camera2D) set_offset(offset Vector2) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_anchor_mode(anchor_mode Camera2DAnchorMode) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_anchor_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050398218)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_anchor_mode() Camera2DAnchorMode {
    mut object_out := Camera2DAnchorMode.anchor_mode_fixed_top_left
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_anchor_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 155978067)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_ignore_rotation(ignore bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ignore_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_ignoring_rotation() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_ignoring_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_process_callback(mode Camera2DCamera2DProcessCallback) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4201947462)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_process_callback() Camera2DCamera2DProcessCallback {
    mut object_out := Camera2DCamera2DProcessCallback.camera2d_process_physics
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2325344499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_enabled(enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) make_current() {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("make_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_current() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_limit(margin Side, limit i32) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_limit(margin Side) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_limit_smoothing_enabled(limit_smoothing_enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_limit_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_limit_smoothing_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_limit_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_drag_vertical_enabled(enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_vertical_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_drag_vertical_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_drag_vertical_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_drag_horizontal_enabled(enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_horizontal_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_drag_horizontal_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_drag_horizontal_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_drag_vertical_offset(offset f32) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_vertical_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_drag_vertical_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_drag_vertical_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_drag_horizontal_offset(offset f32) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_horizontal_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_drag_horizontal_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_drag_horizontal_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_drag_margin(margin Side, drag_margin f32) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_drag_margin(margin Side) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_drag_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Camera2D) get_target_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Camera2D) get_screen_center_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_screen_center_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_zoom(zoom Vector2) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_zoom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_zoom() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_zoom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_custom_viewport(viewport Node) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_custom_viewport() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_position_smoothing_speed(position_smoothing_speed f32) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_position_smoothing_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_position_smoothing_speed() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_position_smoothing_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_position_smoothing_enabled(position_smoothing_speed bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_position_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_position_smoothing_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_position_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_rotation_smoothing_enabled(enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_rotation_smoothing_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_rotation_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_rotation_smoothing_speed(speed f32) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_smoothing_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) get_rotation_smoothing_speed() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_smoothing_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) force_update_scroll() {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("force_update_scroll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera2D) reset_smoothing() {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("reset_smoothing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera2D) align() {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Camera2D) set_screen_drawing_enabled(screen_drawing_enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_screen_drawing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_screen_drawing_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_screen_drawing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_limit_drawing_enabled(limit_drawing_enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_limit_drawing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_limit_drawing_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_limit_drawing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Camera2D) set_margin_drawing_enabled(margin_drawing_enabled bool) {
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin_drawing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Camera2D) is_margin_drawing_enabled() bool {
    mut object_out := false
    classname := StringName.new("Camera2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_margin_drawing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

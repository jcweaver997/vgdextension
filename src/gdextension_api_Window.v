module vgdextension

pub enum WindowMode {
    mode_windowed = 0
    mode_minimized = 1
    mode_maximized = 2
    mode_fullscreen = 3
    mode_exclusive_fullscreen = 4
}

pub enum WindowFlags {
    flag_resize_disabled = 0
    flag_borderless = 1
    flag_always_on_top = 2
    flag_transparent = 3
    flag_no_focus = 4
    flag_popup = 5
    flag_extend_to_title = 6
    flag_mouse_passthrough = 7
    flag_max = 8
}

pub enum WindowContentScaleMode {
    content_scale_mode_disabled = 0
    content_scale_mode_canvas_items = 1
    content_scale_mode_viewport = 2
}

pub enum WindowContentScaleAspect {
    content_scale_aspect_ignore = 0
    content_scale_aspect_keep = 1
    content_scale_aspect_keep_width = 2
    content_scale_aspect_keep_height = 3
    content_scale_aspect_expand = 4
}

pub enum WindowLayoutDirection {
    layout_direction_inherited = 0
    layout_direction_locale = 1
    layout_direction_ltr = 2
    layout_direction_rtl = 3
}

pub enum WindowWindowInitialPosition {
    window_initial_position_absolute = 0
    window_initial_position_center_primary_screen = 1
    window_initial_position_center_main_window_screen = 2
    window_initial_position_center_other_screen = 3
    window_initial_position_center_screen_with_mouse_focus = 4
    window_initial_position_center_screen_with_keyboard_focus = 5
}

@[noinit]
pub struct Window {
    Viewport
}

pub fn (mut r Window) set_title(title String) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_title() String {
    mut object_out := String{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_window_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_window_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_initial_position(initial_position WindowWindowInitialPosition) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_initial_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4084468099)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&initial_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_initial_position() WindowWindowInitialPosition {
    mut object_out := WindowWindowInitialPosition.window_initial_position_absolute
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_initial_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4294066647)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_current_screen(index i32) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_current_screen() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_position(position Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_position() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_size(size Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) reset_size() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("reset_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Window) get_position_with_decorations() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_position_with_decorations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_size_with_decorations() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_size_with_decorations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_max_size(max_size Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_max_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_min_size(min_size Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_min_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_mode(mode WindowMode) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3095236531)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_mode() WindowMode {
    mut object_out := WindowMode.mode_windowed
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2566346114)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_flag(flag WindowFlags, enabled bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426449779)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_flag(flag WindowFlags) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3062752289)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) is_maximize_allowed() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_maximize_allowed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) request_attention() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("request_attention")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) move_to_foreground() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("move_to_foreground")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) set_visible(visible bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_visible() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) hide() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("hide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) show() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("show")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) set_transient(transient bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_transient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_transient() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_transient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_exclusive(exclusive bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclusive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclusive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_exclusive() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_exclusive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_unparent_when_invisible(unparent bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_unparent_when_invisible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unparent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) can_draw() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("can_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_focus() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) grab_focus() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("grab_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) set_ime_active(active bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_ime_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) set_ime_position(position Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_ime_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_embedded() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_embedded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_contents_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_contents_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_content_scale_size(size Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_content_scale_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_content_scale_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_content_scale_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_content_scale_mode(mode WindowContentScaleMode) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_content_scale_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2937716473)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_content_scale_mode() WindowContentScaleMode {
    mut object_out := WindowContentScaleMode.content_scale_mode_disabled
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_content_scale_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 161585230)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_content_scale_aspect(aspect WindowContentScaleAspect) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_content_scale_aspect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370399418)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aspect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_content_scale_aspect() WindowContentScaleAspect {
    mut object_out := WindowContentScaleAspect.content_scale_aspect_ignore
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_content_scale_aspect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4158790715)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_content_scale_factor(factor f64) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_content_scale_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_content_scale_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_content_scale_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_use_font_oversampling(enable bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_font_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_using_font_oversampling() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_font_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_mouse_passthrough_polygon(polygon PackedVector2Array) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_mouse_passthrough_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_mouse_passthrough_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_mouse_passthrough_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_wrap_controls(enable bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_wrap_controls")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_wrapping_controls() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_wrapping_controls")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) child_controls_changed() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("child_controls_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) set_theme(theme Theme) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2326690814)
    mut args := unsafe { [1]voidptr{} }
    args[0] = theme.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_theme() Theme {
    mut object_out := Theme{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3846893731)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_theme_type_variation(theme_type StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_theme_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_theme_type_variation() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) begin_bulk_theme_override() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("begin_bulk_theme_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) end_bulk_theme_override() {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("end_bulk_theme_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Window) add_theme_icon_override(name StringName, texture Texture2D) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_icon_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1373065600)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) add_theme_stylebox_override(name StringName, stylebox StyleBox) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_stylebox_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4188838905)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = stylebox.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) add_theme_font_override(name StringName, font Font) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_font_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3518018674)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) add_theme_font_size_override(name StringName, font_size i32) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_font_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) add_theme_color_override(name StringName, color Color) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_color_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4260178595)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) add_theme_constant_override(name StringName, constant i32) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_constant_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) remove_theme_icon_override(name StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_icon_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) remove_theme_stylebox_override(name StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_stylebox_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) remove_theme_font_override(name StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_font_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) remove_theme_font_size_override(name StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_font_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) remove_theme_color_override(name StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_color_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) remove_theme_constant_override(name StringName) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_constant_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_theme_icon(name StringName, theme_type StringName) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2336455395)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_stylebox(name StringName, theme_type StringName) StyleBox {
    mut object_out := StyleBox{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2759935355)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_font(name StringName, theme_type StringName) Font {
    mut object_out := Font{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 387378635)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_font_size(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229578101)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_color(name StringName, theme_type StringName) Color {
    mut object_out := Color{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2377051548)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_constant(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229578101)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_icon_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_icon_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_stylebox_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_stylebox_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_font_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_font_size_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_color_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_color_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_constant_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_constant_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_icon(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_stylebox(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_font(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_font_size(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_color(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) has_theme_constant(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_default_base_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_default_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_default_font() Font {
    mut object_out := Font{}
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_default_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) get_theme_default_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_default_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_layout_direction(direction WindowLayoutDirection) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_layout_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3094704184)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) get_layout_direction() WindowLayoutDirection {
    mut object_out := WindowLayoutDirection.layout_direction_inherited
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("get_layout_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3909617982)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Window) is_layout_rtl() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_layout_rtl")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) set_auto_translate(enable bool) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_translate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Window) is_auto_translating() bool {
    mut object_out := false
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("is_auto_translating")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Window) popup(rect Rect2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1680304321)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_on_parent(parent_rect Rect2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_on_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763793166)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parent_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_centered(minsize Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_centered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447975422)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&minsize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_centered_ratio(ratio f64) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_centered_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1014814997)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_centered_clamped(minsize Vector2i, fallback_ratio f64) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_centered_clamped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2613752477)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&minsize)}
    args[1] = unsafe{voidptr(&fallback_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_exclusive(from_node Node, rect Rect2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_exclusive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1728044812)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_exclusive_on_parent(from_node Node, parent_rect Rect2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_exclusive_on_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2344671043)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&parent_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_exclusive_centered(from_node Node, minsize Vector2i) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_exclusive_centered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2561668109)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&minsize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_exclusive_centered_ratio(from_node Node, ratio f64) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_exclusive_centered_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4257659513)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Window) popup_exclusive_centered_clamped(from_node Node, minsize Vector2i, fallback_ratio f64) {
    classname := StringName.new("Window")
    defer { classname.deinit() }
    fnname := StringName.new("popup_exclusive_centered_clamped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 224798062)
    mut args := unsafe { [3]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&minsize)}
    args[2] = unsafe{voidptr(&fallback_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

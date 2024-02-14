module vgdextension

pub enum WindowMode as i64 {
    mode_windowed = 0
    mode_minimized = 1
    mode_maximized = 2
    mode_fullscreen = 3
    mode_exclusive_fullscreen = 4
}

pub enum WindowFlags as i64 {
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

pub enum WindowContentScaleMode as i64 {
    content_scale_mode_disabled = 0
    content_scale_mode_canvas_items = 1
    content_scale_mode_viewport = 2
}

pub enum WindowContentScaleAspect as i64 {
    content_scale_aspect_ignore = 0
    content_scale_aspect_keep = 1
    content_scale_aspect_keep_width = 2
    content_scale_aspect_keep_height = 3
    content_scale_aspect_expand = 4
}

pub enum WindowContentScaleStretch as i64 {
    content_scale_stretch_fractional = 0
    content_scale_stretch_integer = 1
}

pub enum WindowLayoutDirection as i64 {
    layout_direction_inherited = 0
    layout_direction_locale = 1
    layout_direction_ltr = 2
    layout_direction_rtl = 3
}

pub enum WindowWindowInitialPosition as i64 {
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

pub interface IWindowGetContentsMinimumSize {
    mut:
    virt_get_contents_minimum_size() Vector2
}

pub fn (r &Window) uget_contents_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Window")
    fnname := StringName.new("_get_contents_minimum_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_title(title String) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_title() String {
    mut object_out := String{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_window_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_window_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_initial_position(initial_position WindowWindowInitialPosition) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_initial_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4084468099)
    mut args := unsafe { [1]voidptr{} }
    i64_initial_position := i64(initial_position)
    args[0] = unsafe{voidptr(&i64_initial_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_initial_position() WindowWindowInitialPosition {
    mut object_out := i64(WindowWindowInitialPosition.window_initial_position_absolute)
    classname := StringName.new("Window")
    fnname := StringName.new("get_initial_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4294066647)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WindowWindowInitialPosition(object_out)}
}
pub fn (mut r Window) set_current_screen(index i32) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_current_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_current_screen() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_current_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_position(position Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_position() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) move_to_center() {
    classname := StringName.new("Window")
    fnname := StringName.new("move_to_center")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) set_size(size Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) reset_size() {
    classname := StringName.new("Window")
    fnname := StringName.new("reset_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_position_with_decorations() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_position_with_decorations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_size_with_decorations() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_size_with_decorations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_max_size(max_size Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_max_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_max_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_max_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_min_size(min_size Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_min_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_min_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_min_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_mode(mode WindowMode) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3095236531)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_mode() WindowMode {
    mut object_out := i64(WindowMode.mode_windowed)
    classname := StringName.new("Window")
    fnname := StringName.new("get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2566346114)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WindowMode(object_out)}
}
pub fn (mut r Window) set_flag(flag WindowFlags, enabled bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426449779)
    mut args := unsafe { [2]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_flag(flag WindowFlags) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3062752289)
    mut args := unsafe { [1]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) is_maximize_allowed() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_maximize_allowed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) request_attention() {
    classname := StringName.new("Window")
    fnname := StringName.new("request_attention")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) move_to_foreground() {
    classname := StringName.new("Window")
    fnname := StringName.new("move_to_foreground")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) set_visible(visible bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_visible() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) hide() {
    classname := StringName.new("Window")
    fnname := StringName.new("hide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) show() {
    classname := StringName.new("Window")
    fnname := StringName.new("show")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) set_transient(transient bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_transient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_transient() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_transient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_exclusive(exclusive bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_exclusive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclusive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_exclusive() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_exclusive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_unparent_when_invisible(unparent bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_unparent_when_invisible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unparent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) can_draw() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("can_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_focus() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_focus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) grab_focus() {
    classname := StringName.new("Window")
    fnname := StringName.new("grab_focus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) set_ime_active(active bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_ime_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) set_ime_position(position Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_ime_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_embedded() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_embedded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_contents_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_contents_minimum_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_content_scale_size(size Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_content_scale_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_content_scale_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_content_scale_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_content_scale_mode(mode WindowContentScaleMode) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_content_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2937716473)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_content_scale_mode() WindowContentScaleMode {
    mut object_out := i64(WindowContentScaleMode.content_scale_mode_disabled)
    classname := StringName.new("Window")
    fnname := StringName.new("get_content_scale_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 161585230)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WindowContentScaleMode(object_out)}
}
pub fn (mut r Window) set_content_scale_aspect(aspect WindowContentScaleAspect) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_content_scale_aspect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2370399418)
    mut args := unsafe { [1]voidptr{} }
    i64_aspect := i64(aspect)
    args[0] = unsafe{voidptr(&i64_aspect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_content_scale_aspect() WindowContentScaleAspect {
    mut object_out := i64(WindowContentScaleAspect.content_scale_aspect_ignore)
    classname := StringName.new("Window")
    fnname := StringName.new("get_content_scale_aspect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4158790715)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WindowContentScaleAspect(object_out)}
}
pub fn (mut r Window) set_content_scale_stretch(stretch WindowContentScaleStretch) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_content_scale_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349355940)
    mut args := unsafe { [1]voidptr{} }
    i64_stretch := i64(stretch)
    args[0] = unsafe{voidptr(&i64_stretch)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_content_scale_stretch() WindowContentScaleStretch {
    mut object_out := i64(WindowContentScaleStretch.content_scale_stretch_fractional)
    classname := StringName.new("Window")
    fnname := StringName.new("get_content_scale_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 536857316)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WindowContentScaleStretch(object_out)}
}
pub fn (mut r Window) set_keep_title_visible(title_visible bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_keep_title_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&title_visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_keep_title_visible() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("get_keep_title_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_content_scale_factor(factor f64) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_content_scale_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_content_scale_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_content_scale_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_use_font_oversampling(enable bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_use_font_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_using_font_oversampling() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_using_font_oversampling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_mouse_passthrough_polygon(polygon PackedVector2Array) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_mouse_passthrough_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_mouse_passthrough_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_mouse_passthrough_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_wrap_controls(enable bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_wrap_controls")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_wrapping_controls() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_wrapping_controls")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) child_controls_changed() {
    classname := StringName.new("Window")
    fnname := StringName.new("child_controls_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) set_theme(theme Theme) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_theme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2326690814)
    mut args := unsafe { [1]voidptr{} }
    args[0] = theme.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_theme() Theme {
    mut object_out := Theme{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3846893731)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_theme_type_variation(theme_type StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_theme_type_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_theme_type_variation() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_type_variation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) begin_bulk_theme_override() {
    classname := StringName.new("Window")
    fnname := StringName.new("begin_bulk_theme_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) end_bulk_theme_override() {
    classname := StringName.new("Window")
    fnname := StringName.new("end_bulk_theme_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) add_theme_icon_override(name StringName, texture Texture2D) {
    classname := StringName.new("Window")
    fnname := StringName.new("add_theme_icon_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1373065600)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) add_theme_stylebox_override(name StringName, stylebox StyleBox) {
    classname := StringName.new("Window")
    fnname := StringName.new("add_theme_stylebox_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4188838905)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = stylebox.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) add_theme_font_override(name StringName, font Font) {
    classname := StringName.new("Window")
    fnname := StringName.new("add_theme_font_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3518018674)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) add_theme_font_size_override(name StringName, font_size i32) {
    classname := StringName.new("Window")
    fnname := StringName.new("add_theme_font_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) add_theme_color_override(name StringName, color Color) {
    classname := StringName.new("Window")
    fnname := StringName.new("add_theme_color_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4260178595)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) add_theme_constant_override(name StringName, constant i32) {
    classname := StringName.new("Window")
    fnname := StringName.new("add_theme_constant_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) remove_theme_icon_override(name StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("remove_theme_icon_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) remove_theme_stylebox_override(name StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("remove_theme_stylebox_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) remove_theme_font_override(name StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("remove_theme_font_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) remove_theme_font_size_override(name StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("remove_theme_font_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) remove_theme_color_override(name StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("remove_theme_color_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) remove_theme_constant_override(name StringName) {
    classname := StringName.new("Window")
    fnname := StringName.new("remove_theme_constant_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_theme_icon(name StringName, theme_type StringName) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3163973443)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_stylebox(name StringName, theme_type StringName) StyleBox {
    mut object_out := StyleBox{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 604739069)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_font(name StringName, theme_type StringName) Font {
    mut object_out := Font{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2826986490)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_font_size(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1327056374)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_color(name StringName, theme_type StringName) Color {
    mut object_out := Color{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2798751242)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_constant(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1327056374)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_icon_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_icon_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_stylebox_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_stylebox_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_font_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_font_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_font_size_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_font_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_color_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_color_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_constant_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_constant_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_icon(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_stylebox(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_font(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_font_size(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_color(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) has_theme_constant(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("has_theme_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866386512)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_default_base_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_default_base_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_default_font() Font {
    mut object_out := Font{}
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_default_font")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Window) get_theme_default_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Window")
    fnname := StringName.new("get_theme_default_font_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_layout_direction(direction WindowLayoutDirection) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_layout_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3094704184)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) get_layout_direction() WindowLayoutDirection {
    mut object_out := i64(WindowLayoutDirection.layout_direction_inherited)
    classname := StringName.new("Window")
    fnname := StringName.new("get_layout_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3909617982)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WindowLayoutDirection(object_out)}
}
pub fn (r &Window) is_layout_rtl() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_layout_rtl")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) set_auto_translate(enable bool) {
    classname := StringName.new("Window")
    fnname := StringName.new("set_auto_translate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Window) is_auto_translating() bool {
    mut object_out := false
    classname := StringName.new("Window")
    fnname := StringName.new("is_auto_translating")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Window) popup(rect Rect2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1680304321)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_on_parent(parent_rect Rect2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_on_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763793166)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parent_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_centered(minsize Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_centered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447975422)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&minsize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_centered_ratio(ratio f64) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_centered_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1014814997)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_centered_clamped(minsize Vector2i, fallback_ratio f64) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_centered_clamped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2613752477)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&minsize)}
    args[1] = unsafe{voidptr(&fallback_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_exclusive(from_node Node, rect Rect2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_exclusive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2134721627)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_exclusive_on_parent(from_node Node, parent_rect Rect2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_exclusive_on_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2344671043)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&parent_rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_exclusive_centered(from_node Node, minsize Vector2i) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_exclusive_centered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3357594017)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&minsize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_exclusive_centered_ratio(from_node Node, ratio f64) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_exclusive_centered_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2284776287)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Window) popup_exclusive_centered_clamped(from_node Node, minsize Vector2i, fallback_ratio f64) {
    classname := StringName.new("Window")
    fnname := StringName.new("popup_exclusive_centered_clamped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2612708785)
    mut args := unsafe { [3]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&minsize)}
    args[2] = unsafe{voidptr(&fallback_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

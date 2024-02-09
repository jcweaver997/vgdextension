module vgdextension

pub enum DisplayServerFeature {
    feature_global_menu = 0
    feature_subwindows = 1
    feature_touchscreen = 2
    feature_mouse = 3
    feature_mouse_warp = 4
    feature_clipboard = 5
    feature_virtual_keyboard = 6
    feature_cursor_shape = 7
    feature_custom_cursor_shape = 8
    feature_native_dialog = 9
    feature_ime = 10
    feature_window_transparency = 11
    feature_hidpi = 12
    feature_icon = 13
    feature_native_icon = 14
    feature_orientation = 15
    feature_swap_buffers = 16
    feature_clipboard_primary = 18
    feature_text_to_speech = 19
    feature_extend_to_title = 20
    feature_screen_capture = 21
}

pub enum DisplayServerMouseMode {
    mouse_mode_visible = 0
    mouse_mode_hidden = 1
    mouse_mode_captured = 2
    mouse_mode_confined = 3
    mouse_mode_confined_hidden = 4
}

pub enum DisplayServerScreenOrientation {
    screen_landscape = 0
    screen_portrait = 1
    screen_reverse_landscape = 2
    screen_reverse_portrait = 3
    screen_sensor_landscape = 4
    screen_sensor_portrait = 5
    screen_sensor = 6
}

pub enum DisplayServerVirtualKeyboardType {
    keyboard_type_default = 0
    keyboard_type_multiline = 1
    keyboard_type_number = 2
    keyboard_type_number_decimal = 3
    keyboard_type_phone = 4
    keyboard_type_email_address = 5
    keyboard_type_password = 6
    keyboard_type_url = 7
}

pub enum DisplayServerCursorShape {
    cursor_arrow = 0
    cursor_ibeam = 1
    cursor_pointing_hand = 2
    cursor_cross = 3
    cursor_wait = 4
    cursor_busy = 5
    cursor_drag = 6
    cursor_can_drop = 7
    cursor_forbidden = 8
    cursor_vsize = 9
    cursor_hsize = 10
    cursor_bdiagsize = 11
    cursor_fdiagsize = 12
    cursor_move = 13
    cursor_vsplit = 14
    cursor_hsplit = 15
    cursor_help = 16
    cursor_max = 17
}

pub enum DisplayServerWindowMode {
    window_mode_windowed = 0
    window_mode_minimized = 1
    window_mode_maximized = 2
    window_mode_fullscreen = 3
    window_mode_exclusive_fullscreen = 4
}

pub enum DisplayServerWindowFlags {
    window_flag_resize_disabled = 0
    window_flag_borderless = 1
    window_flag_always_on_top = 2
    window_flag_transparent = 3
    window_flag_no_focus = 4
    window_flag_popup = 5
    window_flag_extend_to_title = 6
    window_flag_mouse_passthrough = 7
    window_flag_max = 8
}

pub enum DisplayServerWindowEvent {
    window_event_mouse_enter = 0
    window_event_mouse_exit = 1
    window_event_focus_in = 2
    window_event_focus_out = 3
    window_event_close_request = 4
    window_event_go_back_request = 5
    window_event_dpi_change = 6
    window_event_titlebar_change = 7
}

pub enum DisplayServerVSyncMode {
    vsync_disabled = 0
    vsync_enabled = 1
    vsync_adaptive = 2
    vsync_mailbox = 3
}

pub enum DisplayServerHandleType {
    display_handle = 0
    window_handle = 1
    window_view = 2
    opengl_context = 3
}

pub enum DisplayServerTTSUtteranceEvent {
    tts_utterance_started = 0
    tts_utterance_ended = 1
    tts_utterance_canceled = 2
    tts_utterance_boundary = 3
}

pub struct DisplayServer {
    Object
}

pub fn DisplayServer.get_singleton() DisplayServer {
    sn := StringName.new("DisplayServer")
    defer {sn.deinit()}
    o := DisplayServer{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (r &DisplayServer) has_feature(feature DisplayServerFeature) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("has_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334065950)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_name() String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_submenu_item(menu_root String, label String, submenu String, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_submenu_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3806306913)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&label)}
    args[2] = unsafe{voidptr(&submenu)}
    args[3] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_item(menu_root String, label String, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3415468211)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&label)}
    args[2] = unsafe{voidptr(&callback)}
    args[3] = unsafe{voidptr(&key_callback)}
    args[4] = unsafe{voidptr(&tag)}
    args[5] = unsafe{voidptr(&accelerator)}
    args[6] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_check_item(menu_root String, label String, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3415468211)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&label)}
    args[2] = unsafe{voidptr(&callback)}
    args[3] = unsafe{voidptr(&key_callback)}
    args[4] = unsafe{voidptr(&tag)}
    args[5] = unsafe{voidptr(&accelerator)}
    args[6] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_icon_item(menu_root String, icon Texture2D, label String, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_icon_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1700867534)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = icon.ptr
    args[2] = unsafe{voidptr(&label)}
    args[3] = unsafe{voidptr(&callback)}
    args[4] = unsafe{voidptr(&key_callback)}
    args[5] = unsafe{voidptr(&tag)}
    args[6] = unsafe{voidptr(&accelerator)}
    args[7] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_icon_check_item(menu_root String, icon Texture2D, label String, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_icon_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1700867534)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = icon.ptr
    args[2] = unsafe{voidptr(&label)}
    args[3] = unsafe{voidptr(&callback)}
    args[4] = unsafe{voidptr(&key_callback)}
    args[5] = unsafe{voidptr(&tag)}
    args[6] = unsafe{voidptr(&accelerator)}
    args[7] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_radio_check_item(menu_root String, label String, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_radio_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3415468211)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&label)}
    args[2] = unsafe{voidptr(&callback)}
    args[3] = unsafe{voidptr(&key_callback)}
    args[4] = unsafe{voidptr(&tag)}
    args[5] = unsafe{voidptr(&accelerator)}
    args[6] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_icon_radio_check_item(menu_root String, icon Texture2D, label String, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_icon_radio_check_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1700867534)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = icon.ptr
    args[2] = unsafe{voidptr(&label)}
    args[3] = unsafe{voidptr(&callback)}
    args[4] = unsafe{voidptr(&key_callback)}
    args[5] = unsafe{voidptr(&tag)}
    args[6] = unsafe{voidptr(&accelerator)}
    args[7] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_multistate_item(menu_root String, label String, max_states i32, default_state i32, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_multistate_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 635750054)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&label)}
    args[2] = unsafe{voidptr(&max_states)}
    args[3] = unsafe{voidptr(&default_state)}
    args[4] = unsafe{voidptr(&callback)}
    args[5] = unsafe{voidptr(&key_callback)}
    args[6] = unsafe{voidptr(&tag)}
    args[7] = unsafe{voidptr(&accelerator)}
    args[8] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_separator(menu_root String, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_add_separator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1041533178)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_index_from_text(menu_root String, text String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_index_from_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878152881)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_index_from_tag(menu_root String, tag Variant) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_index_from_tag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2941063483)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_checked(menu_root String, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_is_item_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_checkable(menu_root String, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_is_item_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_radio_checkable(menu_root String, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_is_item_radio_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_callback(menu_root String, idx i32) Callable {
    mut object_out := Callable{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 748666903)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_key_callback(menu_root String, idx i32) Callable {
    mut object_out := Callable{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_key_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 748666903)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_tag(menu_root String, idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_tag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 330672633)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_text(menu_root String, idx i32) String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_submenu(menu_root String, idx i32) String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_submenu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_accelerator(menu_root String, idx i32) Key {
    mut object_out := Key.key_none
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_accelerator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 936065394)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_disabled(menu_root String, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_is_item_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_tooltip(menu_root String, idx i32) String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_state(menu_root String, idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_max_states(menu_root String, idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_max_states")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_icon(menu_root String, idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3591713183)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_indentation_level(menu_root String, idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_indentation_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_set_item_checked(menu_root String, idx i32, checked bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&checked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_checkable(menu_root String, idx i32, checkable bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&checkable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_radio_checkable(menu_root String, idx i32, checkable bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_radio_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&checkable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_callback(menu_root String, idx i32, callback Callable) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_key_callback(menu_root String, idx i32, key_callback Callable) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_key_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&key_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_tag(menu_root String, idx i32, tag Variant) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_tag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 453659863)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_text(menu_root String, idx i32, text String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_submenu(menu_root String, idx i32, submenu String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_submenu")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&submenu)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_accelerator(menu_root String, idx i32, keycode Key) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_accelerator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 566943293)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_disabled(menu_root String, idx i32, disabled bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_tooltip(menu_root String, idx i32, tooltip String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&tooltip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_state(menu_root String, idx i32, state i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_max_states(menu_root String, idx i32, max_states i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_max_states")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&max_states)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_icon(menu_root String, idx i32, icon Texture2D) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201338066)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_set_item_indentation_level(menu_root String, idx i32, level i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_set_item_indentation_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) global_menu_get_item_count(menu_root String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_get_item_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) global_menu_remove_item(menu_root String, idx i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_remove_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) global_menu_clear(menu_root String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("global_menu_clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&menu_root)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) tts_is_speaking() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_is_speaking")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) tts_is_paused() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_is_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) tts_get_voices() Array {
    mut object_out := Array{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_get_voices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) tts_get_voices_for_language(language String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_get_voices_for_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) tts_speak(text String, voice String, volume i32, pitch f64, rate f64, utterance_id i32, interrupt bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_speak")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3741216677)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = unsafe{voidptr(&voice)}
    args[2] = unsafe{voidptr(&volume)}
    args[3] = unsafe{voidptr(&pitch)}
    args[4] = unsafe{voidptr(&rate)}
    args[5] = unsafe{voidptr(&utterance_id)}
    args[6] = unsafe{voidptr(&interrupt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) tts_pause() {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r DisplayServer) tts_resume() {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_resume")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r DisplayServer) tts_stop() {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r DisplayServer) tts_set_utterance_callback(event DisplayServerTTSUtteranceEvent, callable Callable) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tts_set_utterance_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 109679083)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&event)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) is_dark_mode_supported() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_dark_mode_supported")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) is_dark_mode() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_dark_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_accent_color() Color {
    mut object_out := Color{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_accent_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) mouse_set_mode(mouse_mode DisplayServerMouseMode) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("mouse_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 348288463)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mouse_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) mouse_get_mode() DisplayServerMouseMode {
    mut object_out := DisplayServerMouseMode.mouse_mode_visible
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("mouse_get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1353961651)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) warp_mouse(position Vector2i) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("warp_mouse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) mouse_get_position() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("mouse_get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) mouse_get_button_state() MouseButtonMask {
    mut object_out := MouseButtonMask.mouse_button_mask_left
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("mouse_get_button_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) clipboard_set(clipboard String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("clipboard_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clipboard)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) clipboard_get() String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("clipboard_get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) clipboard_has() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("clipboard_has")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) clipboard_set_primary(clipboard_primary String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("clipboard_set_primary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clipboard_primary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) clipboard_get_primary() String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("clipboard_get_primary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_display_cutouts() Array {
    mut object_out := Array{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_cutouts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_display_safe_area() Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_safe_area")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_screen_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_screen_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_primary_screen() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_primary_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_keyboard_focus_screen() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_keyboard_focus_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_screen_from_rect(rect Rect2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_screen_from_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 741354659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_position(screen i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1725937825)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_size(screen i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1725937825)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_usable_rect(screen i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_usable_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2439012528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_dpi(screen i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_dpi")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 181039630)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_scale(screen i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 909105437)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) is_touchscreen_available() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("is_touchscreen_available")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4162880507)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_max_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_max_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_refresh_rate(screen i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_refresh_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 909105437)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_pixel(position Vector2i) Color {
    mut object_out := Color{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1532707496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) screen_get_image(screen i32) Image {
    mut object_out := Image{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3813388802)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) screen_set_orientation(orientation DisplayServerScreenOrientation, screen i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_set_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2629526904)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&orientation)}
    args[1] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) screen_get_orientation(screen i32) DisplayServerScreenOrientation {
    mut object_out := DisplayServerScreenOrientation.screen_landscape
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_get_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 133818562)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) screen_set_keep_on(enable bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_set_keep_on")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) screen_is_kept_on() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("screen_is_kept_on")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_window_list() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_window_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) get_window_at_screen_position(position Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_window_at_screen_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_get_native_handle(handle_type DisplayServerHandleType, window_id i32) i64 {
    mut object_out := i64(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_native_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2709193271)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&handle_type)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_get_active_popup() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_active_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_popup_safe_rect(window i32, rect Rect2i) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_popup_safe_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317281434)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&window)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_popup_safe_rect(window i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_popup_safe_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2161169500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_title(title String, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3043792800)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_mouse_passthrough(region PackedVector2Array, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_mouse_passthrough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3958815166)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_current_screen(window_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_current_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_current_screen(screen i32, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_current_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3023605688)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_position(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_get_position_with_decorations(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_position_with_decorations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_position(position Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614040015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_size(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_size(size Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614040015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_rect_changed_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_rect_changed_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653650673)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_window_event_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_window_event_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653650673)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_input_event_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_input_event_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653650673)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_input_text_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_input_text_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653650673)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_drop_files_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_drop_files_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3653650673)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_attached_instance_id(window_id i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_attached_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_get_max_size(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_max_size(max_size Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_max_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614040015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_size)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_min_size(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_min_size(min_size Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_min_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614040015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&min_size)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_size_with_decorations(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_size_with_decorations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_get_mode(window_id i32) DisplayServerWindowMode {
    mut object_out := DisplayServerWindowMode.window_mode_windowed
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2185728461)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_mode(mode DisplayServerWindowMode, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2942569511)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_flag(flag DisplayServerWindowFlags, enabled bool, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971592565)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_flag(flag DisplayServerWindowFlags, window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_flag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662949986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&flag)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_window_buttons_offset(offset Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_window_buttons_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614040015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_safe_title_margins(window_id i32) Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_safe_title_margins")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295066620)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_request_attention(window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_request_attention")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_move_to_foreground(window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_move_to_foreground")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_is_focused(window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_is_focused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_can_draw(window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_can_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) window_set_transient(window_id i32, parent_window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_transient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    args[1] = unsafe{voidptr(&parent_window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_exclusive(window_id i32, exclusive bool) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_exclusive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    args[1] = unsafe{voidptr(&exclusive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_ime_active(active bool, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_ime_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 450484987)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_ime_position(position Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_ime_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614040015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) window_set_vsync_mode(vsync_mode DisplayServerVSyncMode, window_id i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_set_vsync_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1708924624)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vsync_mode)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) window_get_vsync_mode(window_id i32) DisplayServerVSyncMode {
    mut object_out := DisplayServerVSyncMode.vsync_disabled
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_get_vsync_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 578873795)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_is_maximize_allowed(window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_is_maximize_allowed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_maximize_on_title_dbl_click() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_maximize_on_title_dbl_click")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) window_minimize_on_title_dbl_click() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("window_minimize_on_title_dbl_click")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) ime_get_selection() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("ime_get_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) ime_get_text() String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("ime_get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) virtual_keyboard_show(existing_text String, position Rect2, type_name DisplayServerVirtualKeyboardType, max_length i32, cursor_start i32, cursor_end i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("virtual_keyboard_show")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 860410478)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&existing_text)}
    args[1] = unsafe{voidptr(&position)}
    args[2] = unsafe{voidptr(&type_name)}
    args[3] = unsafe{voidptr(&max_length)}
    args[4] = unsafe{voidptr(&cursor_start)}
    args[5] = unsafe{voidptr(&cursor_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) virtual_keyboard_hide() {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("virtual_keyboard_hide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &DisplayServer) virtual_keyboard_get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("virtual_keyboard_get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) cursor_set_shape(shape DisplayServerCursorShape) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("cursor_set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2026291549)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) cursor_get_shape() DisplayServerCursorShape {
    mut object_out := DisplayServerCursorShape.cursor_arrow
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("cursor_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1087724927)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) cursor_set_custom_image(cursor Resource, shape DisplayServerCursorShape, hotspot Vector2) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("cursor_set_custom_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1358907026)
    mut args := unsafe { [3]voidptr{} }
    args[0] = cursor.ptr
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&hotspot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) get_swap_cancel_ok() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_swap_cancel_ok")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) enable_for_stealing_focus(process_id i64) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("enable_for_stealing_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&process_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) dialog_show(title String, description String, buttons PackedStringArray, callback Callable) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("dialog_show")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4115553226)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    args[1] = unsafe{voidptr(&description)}
    args[2] = unsafe{voidptr(&buttons)}
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) dialog_input_text(title String, description String, existing_text String, callback Callable) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("dialog_input_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3088703427)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    args[1] = unsafe{voidptr(&description)}
    args[2] = unsafe{voidptr(&existing_text)}
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) keyboard_get_layout_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("keyboard_get_layout_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) keyboard_get_current_layout() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("keyboard_get_current_layout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) keyboard_set_current_layout(index i32) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("keyboard_set_current_layout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) keyboard_get_layout_language(index i32) String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("keyboard_get_layout_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) keyboard_get_layout_name(index i32) String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("keyboard_get_layout_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) keyboard_get_keycode_from_physical(keycode Key) Key {
    mut object_out := Key.key_none
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("keyboard_get_keycode_from_physical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447613187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) process_events() {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("process_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r DisplayServer) force_process_and_drop_events() {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("force_process_and_drop_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r DisplayServer) set_native_icon(filename String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_native_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filename)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r DisplayServer) set_icon(image Image) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DisplayServer) tablet_get_driver_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tablet_get_driver_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) tablet_get_driver_name(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tablet_get_driver_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DisplayServer) tablet_get_current_driver() String {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tablet_get_current_driver")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DisplayServer) tablet_set_current_driver(name String) {
    classname := StringName.new("DisplayServer")
    defer { classname.deinit() }
    fnname := StringName.new("tablet_set_current_driver")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

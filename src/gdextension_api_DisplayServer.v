module vgdextension

pub enum DisplayServerFeature as i64 {
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

pub enum DisplayServerMouseMode as i64 {
    mouse_mode_visible = 0
    mouse_mode_hidden = 1
    mouse_mode_captured = 2
    mouse_mode_confined = 3
    mouse_mode_confined_hidden = 4
}

pub enum DisplayServerScreenOrientation as i64 {
    screen_landscape = 0
    screen_portrait = 1
    screen_reverse_landscape = 2
    screen_reverse_portrait = 3
    screen_sensor_landscape = 4
    screen_sensor_portrait = 5
    screen_sensor = 6
}

pub enum DisplayServerVirtualKeyboardType as i64 {
    keyboard_type_default = 0
    keyboard_type_multiline = 1
    keyboard_type_number = 2
    keyboard_type_number_decimal = 3
    keyboard_type_phone = 4
    keyboard_type_email_address = 5
    keyboard_type_password = 6
    keyboard_type_url = 7
}

pub enum DisplayServerCursorShape as i64 {
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

pub enum DisplayServerFileDialogMode as i64 {
    file_dialog_mode_open_file = 0
    file_dialog_mode_open_files = 1
    file_dialog_mode_open_dir = 2
    file_dialog_mode_open_any = 3
    file_dialog_mode_save_file = 4
}

pub enum DisplayServerWindowMode as i64 {
    window_mode_windowed = 0
    window_mode_minimized = 1
    window_mode_maximized = 2
    window_mode_fullscreen = 3
    window_mode_exclusive_fullscreen = 4
}

pub enum DisplayServerWindowFlags as i64 {
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

pub enum DisplayServerWindowEvent as i64 {
    window_event_mouse_enter = 0
    window_event_mouse_exit = 1
    window_event_focus_in = 2
    window_event_focus_out = 3
    window_event_close_request = 4
    window_event_go_back_request = 5
    window_event_dpi_change = 6
    window_event_titlebar_change = 7
}

pub enum DisplayServerVSyncMode as i64 {
    vsync_disabled = 0
    vsync_enabled = 1
    vsync_adaptive = 2
    vsync_mailbox = 3
}

pub enum DisplayServerHandleType as i64 {
    display_handle = 0
    window_handle = 1
    window_view = 2
    opengl_context = 3
}

pub enum DisplayServerTTSUtteranceEvent as i64 {
    tts_utterance_started = 0
    tts_utterance_ended = 1
    tts_utterance_canceled = 2
    tts_utterance_boundary = 3
}

@[noinit]
pub struct DisplayServer {
    Object
}

pub fn DisplayServer.get_singleton() DisplayServer {
    sn := StringName.new("DisplayServer")
    o := DisplayServer{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &DisplayServer) has_feature(feature DisplayServerFeature) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("has_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334065950)
    mut args := unsafe { [1]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_name() string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r DisplayServer) global_menu_set_popup_callbacks(menu_root string, open_callback Callable, close_callback Callable) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_popup_callbacks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3893727526)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&open_callback)}
    args[2] = unsafe{voidptr(&close_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_add_submenu_item(menu_root string, label string, submenu string, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_submenu_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2828985934)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(submenu)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_item(menu_root string, label string, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3401266716)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&callback)}
    args[3] = unsafe{voidptr(&key_callback)}
    args[4] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[5] = unsafe{voidptr(&i64_accelerator)}
    args[6] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_check_item(menu_root string, label string, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3401266716)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&callback)}
    args[3] = unsafe{voidptr(&key_callback)}
    args[4] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[5] = unsafe{voidptr(&i64_accelerator)}
    args[6] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_icon_item(menu_root string, icon Texture2D, label string, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_icon_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4245856523)
    mut args := unsafe { [8]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = icon.ptr
    arg_sn2 := String.new(label)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&callback)}
    args[4] = unsafe{voidptr(&key_callback)}
    args[5] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[6] = unsafe{voidptr(&i64_accelerator)}
    args[7] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_icon_check_item(menu_root string, icon Texture2D, label string, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_icon_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4245856523)
    mut args := unsafe { [8]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = icon.ptr
    arg_sn2 := String.new(label)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&callback)}
    args[4] = unsafe{voidptr(&key_callback)}
    args[5] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[6] = unsafe{voidptr(&i64_accelerator)}
    args[7] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_radio_check_item(menu_root string, label string, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_radio_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3401266716)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&callback)}
    args[3] = unsafe{voidptr(&key_callback)}
    args[4] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[5] = unsafe{voidptr(&i64_accelerator)}
    args[6] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_icon_radio_check_item(menu_root string, icon Texture2D, label string, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_icon_radio_check_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4245856523)
    mut args := unsafe { [8]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = icon.ptr
    arg_sn2 := String.new(label)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&callback)}
    args[4] = unsafe{voidptr(&key_callback)}
    args[5] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[6] = unsafe{voidptr(&i64_accelerator)}
    args[7] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_multistate_item(menu_root string, label string, max_states i32, default_state i32, callback Callable, key_callback Callable, tag Variant, accelerator Key, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_multistate_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3431222859)
    mut args := unsafe { [9]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&max_states)}
    args[3] = unsafe{voidptr(&default_state)}
    args[4] = unsafe{voidptr(&callback)}
    args[5] = unsafe{voidptr(&key_callback)}
    args[6] = unsafe{voidptr(&tag)}
    i64_accelerator := i64(accelerator)
    args[7] = unsafe{voidptr(&i64_accelerator)}
    args[8] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_add_separator(menu_root string, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_add_separator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214812433)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_index_from_text(menu_root string, text string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_index_from_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878152881)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_index_from_tag(menu_root string, tag Variant) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_index_from_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2941063483)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_checked(menu_root string, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_is_item_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_checkable(menu_root string, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_is_item_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_radio_checkable(menu_root string, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_is_item_radio_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_callback(menu_root string, idx i32) Callable {
    mut object_out := Callable{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 748666903)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_key_callback(menu_root string, idx i32) Callable {
    mut object_out := Callable{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_key_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 748666903)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_tag(menu_root string, idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 330672633)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_text(menu_root string, idx i32) string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) global_menu_get_item_submenu(menu_root string, idx i32) string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_submenu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) global_menu_get_item_accelerator(menu_root string, idx i32) Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_accelerator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 936065394)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (r &DisplayServer) global_menu_is_item_disabled(menu_root string, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_is_item_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_is_item_hidden(menu_root string, idx i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_is_item_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511468594)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_tooltip(menu_root string, idx i32) string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_tooltip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 591067909)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) global_menu_get_item_state(menu_root string, idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_max_states(menu_root string, idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_max_states")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_icon(menu_root string, idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3591713183)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) global_menu_get_item_indentation_level(menu_root string, idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_indentation_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422818498)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_set_item_checked(menu_root string, idx i32, checked bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&checked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_checkable(menu_root string, idx i32, checkable bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&checkable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_radio_checkable(menu_root string, idx i32, checkable bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_radio_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&checkable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_callback(menu_root string, idx i32, callback Callable) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_hover_callbacks(menu_root string, idx i32, callback Callable) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_hover_callbacks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_key_callback(menu_root string, idx i32, key_callback Callable) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_key_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3809915389)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&key_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_tag(menu_root string, idx i32, tag Variant) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 453659863)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&tag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_text(menu_root string, idx i32, text string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    arg_sn2 := String.new(text)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_submenu(menu_root string, idx i32, submenu string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_submenu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    arg_sn2 := String.new(submenu)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_accelerator(menu_root string, idx i32, keycode Key) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_accelerator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 566943293)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    i64_keycode := i64(keycode)
    args[2] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_disabled(menu_root string, idx i32, disabled bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_hidden(menu_root string, idx i32, hidden bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4108344793)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_tooltip(menu_root string, idx i32, tooltip string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_tooltip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965966136)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    arg_sn2 := String.new(tooltip)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_state(menu_root string, idx i32, state i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_max_states(menu_root string, idx i32, max_states i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_max_states")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&max_states)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_icon(menu_root string, idx i32, icon Texture2D) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3201338066)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = icon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_set_item_indentation_level(menu_root string, idx i32, level i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_set_item_indentation_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3474840532)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) global_menu_get_item_count(menu_root string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_get_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) global_menu_remove_item(menu_root string, idx i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_remove_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) global_menu_clear(menu_root string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("global_menu_clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(menu_root)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) tts_is_speaking() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_is_speaking")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) tts_is_paused() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_is_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) tts_get_voices() Array {
    mut object_out := Array{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_get_voices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) tts_get_voices_for_language(language string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_get_voices_for_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(language)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) tts_speak(text string, voice string, volume i32, pitch f64, rate f64, utterance_id i32, interrupt bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_speak")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 903992738)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(voice)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&volume)}
    args[3] = unsafe{voidptr(&pitch)}
    args[4] = unsafe{voidptr(&rate)}
    args[5] = unsafe{voidptr(&utterance_id)}
    args[6] = unsafe{voidptr(&interrupt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) tts_pause() {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_pause")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) tts_resume() {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_resume")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) tts_stop() {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) tts_set_utterance_callback(event DisplayServerTTSUtteranceEvent, callable Callable) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tts_set_utterance_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 109679083)
    mut args := unsafe { [2]voidptr{} }
    i64_event := i64(event)
    args[0] = unsafe{voidptr(&i64_event)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) is_dark_mode_supported() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("is_dark_mode_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) is_dark_mode() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("is_dark_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_accent_color() Color {
    mut object_out := Color{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_accent_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) mouse_set_mode(mouse_mode DisplayServerMouseMode) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("mouse_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 348288463)
    mut args := unsafe { [1]voidptr{} }
    i64_mouse_mode := i64(mouse_mode)
    args[0] = unsafe{voidptr(&i64_mouse_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) mouse_get_mode() DisplayServerMouseMode {
    mut object_out := i64(DisplayServerMouseMode.mouse_mode_visible)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("mouse_get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1353961651)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{DisplayServerMouseMode(object_out)}
}
pub fn (mut r DisplayServer) warp_mouse(position Vector2i) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("warp_mouse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) mouse_get_position() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("mouse_get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) mouse_get_button_state() MouseButtonMask {
    mut object_out := i64(MouseButtonMask.mouse_button_mask_left)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("mouse_get_button_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MouseButtonMask(object_out)}
}
pub fn (mut r DisplayServer) clipboard_set(clipboard string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(clipboard)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) clipboard_get() string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) clipboard_get_image() Image {
    mut object_out := Image{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_get_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) clipboard_has() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_has")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) clipboard_has_image() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_has_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) clipboard_set_primary(clipboard_primary string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_set_primary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(clipboard_primary)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) clipboard_get_primary() string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("clipboard_get_primary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) get_display_cutouts() Array {
    mut object_out := Array{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_display_cutouts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_display_safe_area() Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_display_safe_area")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_screen_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_screen_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_primary_screen() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_primary_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_keyboard_focus_screen() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_keyboard_focus_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_screen_from_rect(rect Rect2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_screen_from_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 741354659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_position(screen i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1725937825)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_size(screen i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1725937825)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_usable_rect(screen i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_usable_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2439012528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_dpi(screen i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_dpi")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 181039630)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_scale(screen i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 909105437)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) is_touchscreen_available() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("is_touchscreen_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3323674545)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_max_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_max_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_refresh_rate(screen i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_refresh_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 909105437)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_pixel(position Vector2i) Color {
    mut object_out := Color{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_pixel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1532707496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) screen_get_image(screen i32) Image {
    mut object_out := Image{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3813388802)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) screen_set_orientation(orientation DisplayServerScreenOrientation, screen i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_set_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2211511631)
    mut args := unsafe { [2]voidptr{} }
    i64_orientation := i64(orientation)
    args[0] = unsafe{voidptr(&i64_orientation)}
    args[1] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) screen_get_orientation(screen i32) DisplayServerScreenOrientation {
    mut object_out := i64(DisplayServerScreenOrientation.screen_landscape)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_get_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 133818562)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{DisplayServerScreenOrientation(object_out)}
}
pub fn (mut r DisplayServer) screen_set_keep_on(enable bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_set_keep_on")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) screen_is_kept_on() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("screen_is_kept_on")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_window_list() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_window_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) get_window_at_screen_position(position Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_window_at_screen_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_get_native_handle(handle_type DisplayServerHandleType, window_id i32) i64 {
    mut object_out := i64(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_native_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1096425680)
    mut args := unsafe { [2]voidptr{} }
    i64_handle_type := i64(handle_type)
    args[0] = unsafe{voidptr(&i64_handle_type)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_get_active_popup() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_active_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_popup_safe_rect(window i32, rect Rect2i) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_popup_safe_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317281434)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&window)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_popup_safe_rect(window i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_popup_safe_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2161169500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_title(title string, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 441246282)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_title_size(title string, window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_title_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2925301799)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_mouse_passthrough(region PackedVector2Array, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_mouse_passthrough")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1993637420)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_current_screen(window_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_current_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_current_screen(screen i32, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_current_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230941749)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&screen)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_position(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_get_position_with_decorations(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_position_with_decorations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_position(position Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_size(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_size(size Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_rect_changed_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_rect_changed_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_window_event_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_window_event_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_input_event_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_input_event_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_input_text_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_input_text_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_drop_files_callback(callback Callable, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_drop_files_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1091192925)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_attached_instance_id(window_id i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_attached_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1591665591)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_get_max_size(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_max_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_max_size(max_size Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_max_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_size)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_min_size(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_min_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_min_size(min_size Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_min_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&min_size)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_size_with_decorations(window_id i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_size_with_decorations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 763922886)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_get_mode(window_id i32) DisplayServerWindowMode {
    mut object_out := i64(DisplayServerWindowMode.window_mode_windowed)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2185728461)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{DisplayServerWindowMode(object_out)}
}
pub fn (mut r DisplayServer) window_set_mode(mode DisplayServerWindowMode, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1319965401)
    mut args := unsafe { [2]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_flag(flag DisplayServerWindowFlags, enabled bool, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 254894155)
    mut args := unsafe { [3]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&enabled)}
    args[2] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_flag(flag DisplayServerWindowFlags, window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_flag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 802816991)
    mut args := unsafe { [2]voidptr{} }
    i64_flag := i64(flag)
    args[0] = unsafe{voidptr(&i64_flag)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_window_buttons_offset(offset Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_window_buttons_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_safe_title_margins(window_id i32) Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_safe_title_margins")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2295066620)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_request_attention(window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_request_attention")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_move_to_foreground(window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_move_to_foreground")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_is_focused(window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_is_focused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_can_draw(window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_can_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) window_set_transient(window_id i32, parent_window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_transient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    args[1] = unsafe{voidptr(&parent_window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_exclusive(window_id i32, exclusive bool) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_exclusive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    args[1] = unsafe{voidptr(&exclusive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_ime_active(active bool, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_ime_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1661950165)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_ime_position(position Vector2i, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_ime_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2019273902)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) window_set_vsync_mode(vsync_mode DisplayServerVSyncMode, window_id i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_set_vsync_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2179333492)
    mut args := unsafe { [2]voidptr{} }
    i64_vsync_mode := i64(vsync_mode)
    args[0] = unsafe{voidptr(&i64_vsync_mode)}
    args[1] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) window_get_vsync_mode(window_id i32) DisplayServerVSyncMode {
    mut object_out := i64(DisplayServerVSyncMode.vsync_disabled)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_get_vsync_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 578873795)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{DisplayServerVSyncMode(object_out)}
}
pub fn (r &DisplayServer) window_is_maximize_allowed(window_id i32) bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_is_maximize_allowed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1051549951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&window_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_maximize_on_title_dbl_click() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_maximize_on_title_dbl_click")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) window_minimize_on_title_dbl_click() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("window_minimize_on_title_dbl_click")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) ime_get_selection() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("ime_get_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) ime_get_text() string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("ime_get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r DisplayServer) virtual_keyboard_show(existing_text string, position Rect2, type_name DisplayServerVirtualKeyboardType, max_length i32, cursor_start i32, cursor_end i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("virtual_keyboard_show")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3042891259)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := String.new(existing_text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&position)}
    i64_type_name := i64(type_name)
    args[2] = unsafe{voidptr(&i64_type_name)}
    args[3] = unsafe{voidptr(&max_length)}
    args[4] = unsafe{voidptr(&cursor_start)}
    args[5] = unsafe{voidptr(&cursor_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) virtual_keyboard_hide() {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("virtual_keyboard_hide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) virtual_keyboard_get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("virtual_keyboard_get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) cursor_set_shape(shape DisplayServerCursorShape) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("cursor_set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2026291549)
    mut args := unsafe { [1]voidptr{} }
    i64_shape := i64(shape)
    args[0] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) cursor_get_shape() DisplayServerCursorShape {
    mut object_out := i64(DisplayServerCursorShape.cursor_arrow)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("cursor_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1087724927)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{DisplayServerCursorShape(object_out)}
}
pub fn (mut r DisplayServer) cursor_set_custom_image(cursor Resource, shape DisplayServerCursorShape, hotspot Vector2) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("cursor_set_custom_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1816663697)
    mut args := unsafe { [3]voidptr{} }
    args[0] = cursor.ptr
    i64_shape := i64(shape)
    args[1] = unsafe{voidptr(&i64_shape)}
    args[2] = unsafe{voidptr(&hotspot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) get_swap_cancel_ok() bool {
    mut object_out := false
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("get_swap_cancel_ok")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) enable_for_stealing_focus(process_id i64) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("enable_for_stealing_focus")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&process_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) dialog_show(title string, description string, buttons PackedStringArray, callback Callable) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("dialog_show")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4115553226)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(description)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&buttons)}
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DisplayServer) dialog_input_text(title string, description string, existing_text string, callback Callable) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("dialog_input_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3088703427)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(description)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(existing_text)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DisplayServer) file_dialog_show(title string, current_directory string, filename string, show_hidden bool, mode DisplayServerFileDialogMode, filters PackedStringArray, callback Callable) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("file_dialog_show")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1531299078)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(current_directory)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(filename)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&show_hidden)}
    i64_mode := i64(mode)
    args[4] = unsafe{voidptr(&i64_mode)}
    args[5] = unsafe{voidptr(&filters)}
    args[6] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &DisplayServer) keyboard_get_layout_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_get_layout_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) keyboard_get_current_layout() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_get_current_layout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DisplayServer) keyboard_set_current_layout(index i32) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_set_current_layout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) keyboard_get_layout_language(index i32) string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_get_layout_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) keyboard_get_layout_name(index i32) string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_get_layout_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) keyboard_get_keycode_from_physical(keycode Key) Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_get_keycode_from_physical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447613187)
    mut args := unsafe { [1]voidptr{} }
    i64_keycode := i64(keycode)
    args[0] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (r &DisplayServer) keyboard_get_label_from_physical(keycode Key) Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("keyboard_get_label_from_physical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3447613187)
    mut args := unsafe { [1]voidptr{} }
    i64_keycode := i64(keycode)
    args[0] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (mut r DisplayServer) process_events() {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("process_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) force_process_and_drop_events() {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("force_process_and_drop_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) set_native_icon(filename string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("set_native_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(filename)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DisplayServer) set_icon(image Image) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("set_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DisplayServer) tablet_get_driver_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tablet_get_driver_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DisplayServer) tablet_get_driver_name(idx i32) string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tablet_get_driver_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DisplayServer) tablet_get_current_driver() string {
    mut object_out := String{}
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tablet_get_current_driver")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r DisplayServer) tablet_set_current_driver(name string) {
    classname := StringName.new("DisplayServer")
    fnname := StringName.new("tablet_set_current_driver")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}

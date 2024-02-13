module vgdextension

pub enum InputMouseMode {
    mouse_mode_visible = 0
    mouse_mode_hidden = 1
    mouse_mode_captured = 2
    mouse_mode_confined = 3
    mouse_mode_confined_hidden = 4
}

pub enum InputCursorShape {
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
}

@[noinit]
pub struct Input {
    Object
}

pub fn Input.get_singleton() Input {
    sn := StringName.new("Input")
    defer {sn.deinit()}
    o := Input{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (r &Input) is_anything_pressed() bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_anything_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_key_pressed(keycode Key) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_key_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_physical_key_pressed(keycode Key) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_physical_key_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_key_label_pressed(keycode Key) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_key_label_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_mouse_button_pressed(button MouseButton) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_mouse_button_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1821097125)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&button)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_joy_button_pressed(device i32, button JoyButton) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_joy_button_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 787208542)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    args[1] = unsafe{voidptr(&button)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_action_pressed(action StringName, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_action_just_pressed(action StringName, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_just_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) is_action_just_released(action StringName, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_just_released")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_action_strength(action StringName, exact_match bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_action_raw_strength(action StringName, exact_match bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_raw_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_axis(negative_action StringName, positive_action StringName) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958752504)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&negative_action)}
    args[1] = unsafe{voidptr(&positive_action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_vector(negative_x StringName, positive_x StringName, negative_y StringName, positive_y StringName, deadzone f64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_vector")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1517139831)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&negative_x)}
    args[1] = unsafe{voidptr(&positive_x)}
    args[2] = unsafe{voidptr(&negative_y)}
    args[3] = unsafe{voidptr(&positive_y)}
    args[4] = unsafe{voidptr(&deadzone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) add_joy_mapping(mapping String, update_existing bool) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("add_joy_mapping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168363258)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mapping)}
    args[1] = unsafe{voidptr(&update_existing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) remove_joy_mapping(guid String) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("remove_joy_mapping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&guid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) is_joy_known(device i32) bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_joy_known")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_joy_axis(device i32, axis JoyAxis) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_joy_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4063175957)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    args[1] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) get_joy_name(device i32) String {
    mut object_out := String{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_joy_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_joy_guid(device i32) String {
    mut object_out := String{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_joy_guid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) get_connected_joypads() Array {
    mut object_out := Array{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_connected_joypads")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) get_joy_vibration_strength(device i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_joy_vibration_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) get_joy_vibration_duration(device i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_joy_vibration_duration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) start_joy_vibration(device i32, weak_magnitude f64, strong_magnitude f64, duration f64) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("start_joy_vibration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1890603622)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    args[1] = unsafe{voidptr(&weak_magnitude)}
    args[2] = unsafe{voidptr(&strong_magnitude)}
    args[3] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) stop_joy_vibration(device i32) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("stop_joy_vibration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) vibrate_handheld(duration_ms i32) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("vibrate_handheld")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 955504365)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&duration_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Input) get_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_accelerometer() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_accelerometer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_magnetometer() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_magnetometer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_gyroscope() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_gyroscope")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) set_gravity(value Vector3) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) set_accelerometer(value Vector3) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_accelerometer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) set_magnetometer(value Vector3) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_magnetometer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) set_gyroscope(value Vector3) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_gyroscope")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) get_last_mouse_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_last_mouse_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Input) get_mouse_button_mask() MouseButtonMask {
    mut object_out := MouseButtonMask.mouse_button_mask_left
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_mouse_button_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) set_mouse_mode(mode InputMouseMode) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_mouse_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2228490894)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Input) get_mouse_mode() InputMouseMode {
    mut object_out := InputMouseMode.mouse_mode_visible
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_mouse_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965286182)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) warp_mouse(position Vector2) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("warp_mouse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) action_press(action StringName, strength f64) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("action_press")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 573731101)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) action_release(action StringName) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("action_release")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) set_default_cursor_shape(shape InputCursorShape) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_cursor_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124816902)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Input) get_current_cursor_shape() InputCursorShape {
    mut object_out := InputCursorShape.cursor_arrow
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_cursor_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3455658929)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) set_custom_mouse_cursor(image Resource, shape InputCursorShape, hotspot Vector2) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_mouse_cursor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3489634142)
    mut args := unsafe { [3]voidptr{} }
    args[0] = image.ptr
    args[1] = unsafe{voidptr(&shape)}
    args[2] = unsafe{voidptr(&hotspot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) parse_input_event(event InputEvent) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("parse_input_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) set_use_accumulated_input(enable bool) {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_accumulated_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Input) is_using_accumulated_input() bool {
    mut object_out := false
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_accumulated_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Input) flush_buffered_events() {
    classname := StringName.new("Input")
    defer { classname.deinit() }
    fnname := StringName.new("flush_buffered_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

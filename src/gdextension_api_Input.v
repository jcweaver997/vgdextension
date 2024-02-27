module vgdextension

pub enum InputMouseMode as i64 {
    mouse_mode_visible = 0
    mouse_mode_hidden = 1
    mouse_mode_captured = 2
    mouse_mode_confined = 3
    mouse_mode_confined_hidden = 4
}

pub enum InputCursorShape as i64 {
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
    o := Input{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &Input) is_anything_pressed() bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_anything_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_key_pressed(keycode Key) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_key_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
    mut args := unsafe { [1]voidptr{} }
    i64_keycode := i64(keycode)
    args[0] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_physical_key_pressed(keycode Key) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_physical_key_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
    mut args := unsafe { [1]voidptr{} }
    i64_keycode := i64(keycode)
    args[0] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_key_label_pressed(keycode Key) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_key_label_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938909964)
    mut args := unsafe { [1]voidptr{} }
    i64_keycode := i64(keycode)
    args[0] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_mouse_button_pressed(button MouseButton) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_mouse_button_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1821097125)
    mut args := unsafe { [1]voidptr{} }
    i64_button := i64(button)
    args[0] = unsafe{voidptr(&i64_button)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_joy_button_pressed(device i32, button JoyButton) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_joy_button_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 787208542)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    i64_button := i64(button)
    args[1] = unsafe{voidptr(&i64_button)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_action_pressed(action string, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_action_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_action_just_pressed(action string, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_action_just_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) is_action_just_released(action string, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_action_just_released")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_action_strength(action string, exact_match bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    fnname := StringName.new("get_action_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_action_raw_strength(action string, exact_match bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    fnname := StringName.new("get_action_raw_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_axis(negative_action string, positive_action string) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    fnname := StringName.new("get_axis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958752504)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(negative_action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(positive_action)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_vector(negative_x string, positive_x string, negative_y string, positive_y string, deadzone f64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_vector")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2479607902)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := StringName.new(negative_x)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(positive_x)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(negative_y)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := StringName.new(positive_y)
    args[3] = unsafe{voidptr(&arg_sn3)}
    args[4] = unsafe{voidptr(&deadzone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) add_joy_mapping(mapping string, update_existing bool) {
    classname := StringName.new("Input")
    fnname := StringName.new("add_joy_mapping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168363258)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(mapping)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&update_existing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) remove_joy_mapping(guid string) {
    classname := StringName.new("Input")
    fnname := StringName.new("remove_joy_mapping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(guid)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) is_joy_known(device i32) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_joy_known")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_joy_axis(device i32, axis JoyAxis) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    fnname := StringName.new("get_joy_axis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4063175957)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    i64_axis := i64(axis)
    args[1] = unsafe{voidptr(&i64_axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) get_joy_name(device i32) string {
    mut object_out := String{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_joy_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Input) get_joy_guid(device i32) string {
    mut object_out := String{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_joy_guid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Input) get_joy_info(device i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_joy_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) should_ignore_device(vendor_id i32, product_id i32) bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("should_ignore_device")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vendor_id)}
    args[1] = unsafe{voidptr(&product_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) get_connected_joypads() Array {
    mut object_out := Array{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_connected_joypads")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) get_joy_vibration_strength(device i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_joy_vibration_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) get_joy_vibration_duration(device i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Input")
    fnname := StringName.new("get_joy_vibration_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) start_joy_vibration(device i32, weak_magnitude f64, strong_magnitude f64, duration f64) {
    classname := StringName.new("Input")
    fnname := StringName.new("start_joy_vibration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2576575033)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    args[1] = unsafe{voidptr(&weak_magnitude)}
    args[2] = unsafe{voidptr(&strong_magnitude)}
    args[3] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) stop_joy_vibration(device i32) {
    classname := StringName.new("Input")
    fnname := StringName.new("stop_joy_vibration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) vibrate_handheld(duration_ms i32) {
    classname := StringName.new("Input")
    fnname := StringName.new("vibrate_handheld")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 955504365)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&duration_ms)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Input) get_gravity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_accelerometer() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_accelerometer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_magnetometer() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_magnetometer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_gyroscope() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_gyroscope")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) set_gravity(value Vector3) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_gravity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) set_accelerometer(value Vector3) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_accelerometer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) set_magnetometer(value Vector3) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_magnetometer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) set_gyroscope(value Vector3) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_gyroscope")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) get_last_mouse_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Input")
    fnname := StringName.new("get_last_mouse_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Input) get_mouse_button_mask() MouseButtonMask {
    mut object_out := i64(MouseButtonMask.mouse_button_mask_left)
    classname := StringName.new("Input")
    fnname := StringName.new("get_mouse_button_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MouseButtonMask(object_out)}
}
pub fn (mut r Input) set_mouse_mode(mode InputMouseMode) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_mouse_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2228490894)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Input) get_mouse_mode() InputMouseMode {
    mut object_out := i64(InputMouseMode.mouse_mode_visible)
    classname := StringName.new("Input")
    fnname := StringName.new("get_mouse_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965286182)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{InputMouseMode(object_out)}
}
pub fn (mut r Input) warp_mouse(position Vector2) {
    classname := StringName.new("Input")
    fnname := StringName.new("warp_mouse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) action_press(action string, strength f64) {
    classname := StringName.new("Input")
    fnname := StringName.new("action_press")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1713091165)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) action_release(action string) {
    classname := StringName.new("Input")
    fnname := StringName.new("action_release")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) set_default_cursor_shape(shape InputCursorShape) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_default_cursor_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2124816902)
    mut args := unsafe { [1]voidptr{} }
    i64_shape := i64(shape)
    args[0] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Input) get_current_cursor_shape() InputCursorShape {
    mut object_out := i64(InputCursorShape.cursor_arrow)
    classname := StringName.new("Input")
    fnname := StringName.new("get_current_cursor_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3455658929)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{InputCursorShape(object_out)}
}
pub fn (mut r Input) set_custom_mouse_cursor(image Resource, shape InputCursorShape, hotspot Vector2) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_custom_mouse_cursor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 703945977)
    mut args := unsafe { [3]voidptr{} }
    args[0] = image.ptr
    i64_shape := i64(shape)
    args[1] = unsafe{voidptr(&i64_shape)}
    args[2] = unsafe{voidptr(&hotspot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) parse_input_event(event InputEvent) {
    classname := StringName.new("Input")
    fnname := StringName.new("parse_input_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754044979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) set_use_accumulated_input(enable bool) {
    classname := StringName.new("Input")
    fnname := StringName.new("set_use_accumulated_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Input) is_using_accumulated_input() bool {
    mut object_out := false
    classname := StringName.new("Input")
    fnname := StringName.new("is_using_accumulated_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Input) flush_buffered_events() {
    classname := StringName.new("Input")
    fnname := StringName.new("flush_buffered_events")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

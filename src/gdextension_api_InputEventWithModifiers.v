module vgdextension

pub struct InputEventWithModifiers {
    InputEventFromWindow
}

pub fn (mut r InputEventWithModifiers) set_command_or_control_autoremap(enable bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_command_or_control_autoremap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_command_or_control_autoremap() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_command_or_control_autoremap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventWithModifiers) is_command_or_control_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_command_or_control_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_alt_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_alt_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_alt_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_alt_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_shift_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_shift_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_shift_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_shift_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_ctrl_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_ctrl_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_ctrl_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_ctrl_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_meta_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_meta_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_meta_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_meta_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventWithModifiers) get_modifiers_mask() KeyModifierMask {
    mut object_out := KeyModifierMask.key_code_mask
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("get_modifiers_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1258259499)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

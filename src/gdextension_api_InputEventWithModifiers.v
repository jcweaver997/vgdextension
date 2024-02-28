module vgdextension

@[noinit]
pub struct InputEventWithModifiers {
    InputEventFromWindow
}

pub fn (r &InputEventWithModifiers) set_command_or_control_autoremap(enable bool) {
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("set_command_or_control_autoremap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventWithModifiers) is_command_or_control_autoremap() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("is_command_or_control_autoremap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventWithModifiers) is_command_or_control_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("is_command_or_control_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventWithModifiers) set_alt_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("set_alt_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventWithModifiers) is_alt_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("is_alt_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventWithModifiers) set_shift_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("set_shift_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventWithModifiers) is_shift_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("is_shift_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventWithModifiers) set_ctrl_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("set_ctrl_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventWithModifiers) is_ctrl_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("is_ctrl_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventWithModifiers) set_meta_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("set_meta_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventWithModifiers) is_meta_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("is_meta_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventWithModifiers) get_modifiers_mask() KeyModifierMask {
    mut object_out := i64(KeyModifierMask.key_code_mask)
    classname := StringName.new("InputEventWithModifiers")
    fnname := StringName.new("get_modifiers_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1258259499)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{KeyModifierMask(object_out)}
}

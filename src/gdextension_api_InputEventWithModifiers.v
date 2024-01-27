pub type InputEventWithModifiers = voidptr

pub fn (mut r InputEventWithModifiers) set_command_or_control_autoremap(enable bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_command_or_control_autoremap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_command_or_control_autoremap() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_command_or_control_autoremap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventWithModifiers) is_command_or_control_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_command_or_control_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_alt_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_alt_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_alt_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_alt_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_shift_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_shift_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_shift_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_shift_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_ctrl_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_ctrl_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_ctrl_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_ctrl_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventWithModifiers) set_meta_pressed(pressed bool) {
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("set_meta_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventWithModifiers) is_meta_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("is_meta_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventWithModifiers) get_modifiers_mask() KeyModifierMask {
    mut object_out := KeyModifierMask(unsafe{nil})
    classname := StringName.new("InputEventWithModifiers")
    defer { classname.deinit() }
    fnname := StringName.new("get_modifiers_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1258259499)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

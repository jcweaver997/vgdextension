module vgdextension

pub struct ColorPickerButton {
    Button
}

pub fn (mut r ColorPickerButton) set_pick_color(color Color) {
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pick_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ColorPickerButton) get_pick_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_pick_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ColorPickerButton) get_picker() ColorPicker {
    mut object_out := ColorPicker{}
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_picker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 331835996)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ColorPickerButton) get_popup() PopupPanel {
    mut object_out := PopupPanel{}
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1322440207)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ColorPickerButton) set_edit_alpha(show bool) {
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_edit_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&show)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ColorPickerButton) is_editing_alpha() bool {
    mut object_out := false
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_editing_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

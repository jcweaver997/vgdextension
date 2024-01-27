pub type ColorPickerButton = voidptr

pub fn (mut r ColorPickerButton) set_pick_color(color Color) {
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pick_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ColorPickerButton) get_pick_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_pick_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ColorPickerButton) get_picker() ColorPicker {
    mut object_out := ColorPicker(unsafe{nil})
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_picker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 331835996)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ColorPickerButton) get_popup() PopupPanel {
    mut object_out := PopupPanel(unsafe{nil})
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_popup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1322440207)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ColorPickerButton) set_edit_alpha(show bool) {
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_edit_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ColorPickerButton) is_editing_alpha() bool {
    mut object_out := false
    classname := StringName.new("ColorPickerButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_editing_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

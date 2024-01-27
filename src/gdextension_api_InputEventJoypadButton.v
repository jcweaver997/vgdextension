module vgdextension

pub type InputEventJoypadButton = voidptr

pub fn (mut r InputEventJoypadButton) set_button_index(button_index JoyButton) {
    classname := StringName.new("InputEventJoypadButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466368136)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventJoypadButton) get_button_index() JoyButton {
    mut object_out := JoyButton.joy_button_invalid
    classname := StringName.new("InputEventJoypadButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 595588182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventJoypadButton) set_pressure(pressure f32) {
    classname := StringName.new("InputEventJoypadButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventJoypadButton) get_pressure() f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputEventJoypadButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_pressure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventJoypadButton) set_pressed(pressed bool) {
    classname := StringName.new("InputEventJoypadButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

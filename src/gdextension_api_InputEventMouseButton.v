pub type InputEventMouseButton = voidptr

pub fn (mut r InputEventMouseButton) set_factor(factor f32) {
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMouseButton) get_factor() f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMouseButton) set_button_index(button_index MouseButton) {
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3624991109)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMouseButton) get_button_index() MouseButton {
    mut object_out := MouseButton.mouse_button_none
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1132662608)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMouseButton) set_pressed(pressed bool) {
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputEventMouseButton) set_canceled(canceled bool) {
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_canceled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r InputEventMouseButton) set_double_click(double_click bool) {
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_double_click")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMouseButton) is_double_click() bool {
    mut object_out := false
    classname := StringName.new("InputEventMouseButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_double_click")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

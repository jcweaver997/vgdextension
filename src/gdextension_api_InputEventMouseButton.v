module vgdextension

@[noinit]
pub struct InputEventMouseButton {
    InputEventMouse
}

pub fn (r &InputEventMouseButton) set_factor(factor f64) {
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("set_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseButton) get_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("get_factor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventMouseButton) set_button_index(button_index MouseButton) {
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("set_button_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3624991109)
    mut args := unsafe { [1]voidptr{} }
    i64_button_index := i64(button_index)
    args[0] = unsafe{voidptr(&i64_button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseButton) get_button_index() MouseButton {
    mut object_out := i64(MouseButton.mouse_button_none)
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("get_button_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1132662608)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MouseButton(object_out)}
}
pub fn (r &InputEventMouseButton) set_pressed(pressed bool) {
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("set_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseButton) set_canceled(canceled bool) {
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("set_canceled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&canceled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseButton) set_double_click(double_click bool) {
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("set_double_click")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&double_click)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseButton) is_double_click() bool {
    mut object_out := false
    classname := StringName.new("InputEventMouseButton")
    fnname := StringName.new("is_double_click")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

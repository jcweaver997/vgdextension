module vgdextension

@[noinit]
pub struct InputEventJoypadMotion {
    InputEvent
}

pub fn (mut r InputEventJoypadMotion) set_axis(axis JoyAxis) {
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332685170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventJoypadMotion) get_axis() JoyAxis {
    mut object_out := JoyAxis.joy_axis_invalid
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("get_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4019121683)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventJoypadMotion) set_axis_value(axis_value f64) {
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventJoypadMotion) get_axis_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("get_axis_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

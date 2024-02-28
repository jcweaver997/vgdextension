module vgdextension

@[noinit]
pub struct InputEventJoypadMotion {
    InputEvent
}

pub fn (r &InputEventJoypadMotion) set_axis(axis JoyAxis) {
    classname := StringName.new("InputEventJoypadMotion")
    fnname := StringName.new("set_axis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332685170)
    mut args := unsafe { [1]voidptr{} }
    i64_axis := i64(axis)
    args[0] = unsafe{voidptr(&i64_axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventJoypadMotion) get_axis() JoyAxis {
    mut object_out := i64(JoyAxis.joy_axis_invalid)
    classname := StringName.new("InputEventJoypadMotion")
    fnname := StringName.new("get_axis")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4019121683)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{JoyAxis(object_out)}
}
pub fn (r &InputEventJoypadMotion) set_axis_value(axis_value f64) {
    classname := StringName.new("InputEventJoypadMotion")
    fnname := StringName.new("set_axis_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&axis_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventJoypadMotion) get_axis_value() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventJoypadMotion")
    fnname := StringName.new("get_axis_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

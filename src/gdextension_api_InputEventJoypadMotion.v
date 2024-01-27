module vgdextension

pub type InputEventJoypadMotion = voidptr

pub fn (mut r InputEventJoypadMotion) set_axis(axis JoyAxis) {
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1332685170)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventJoypadMotion) get_axis() JoyAxis {
    mut object_out := JoyAxis.joy_axis_invalid
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("get_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4019121683)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventJoypadMotion) set_axis_value(axis_value f32) {
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("set_axis_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventJoypadMotion) get_axis_value() f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputEventJoypadMotion")
    defer { classname.deinit() }
    fnname := StringName.new("get_axis_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct InputEventScreenTouch {
    InputEventFromWindow
}

pub fn (mut r InputEventScreenTouch) set_index(index i32) {
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("set_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventScreenTouch) get_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("get_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenTouch) set_position(position Vector2) {
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventScreenTouch) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenTouch) set_pressed(pressed bool) {
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r InputEventScreenTouch) set_canceled(canceled bool) {
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("set_canceled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&canceled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r InputEventScreenTouch) set_double_tap(double_tap bool) {
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("set_double_tap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&double_tap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventScreenTouch) is_double_tap() bool {
    mut object_out := false
    classname := StringName.new("InputEventScreenTouch")
    defer { classname.deinit() }
    fnname := StringName.new("is_double_tap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

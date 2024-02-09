module vgdextension

pub struct InputEventFromWindow {
    InputEvent
}

pub fn (mut r InputEventFromWindow) set_window_id(id i64) {
    classname := StringName.new("InputEventFromWindow")
    defer { classname.deinit() }
    fnname := StringName.new("set_window_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventFromWindow) get_window_id() i64 {
    mut object_out := i64(0)
    classname := StringName.new("InputEventFromWindow")
    defer { classname.deinit() }
    fnname := StringName.new("get_window_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

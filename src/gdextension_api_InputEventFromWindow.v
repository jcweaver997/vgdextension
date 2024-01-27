pub type InputEventFromWindow = voidptr

pub fn (mut r InputEventFromWindow) set_window_id(id i32) {
    classname := StringName.new("InputEventFromWindow")
    defer { classname.deinit() }
    fnname := StringName.new("set_window_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventFromWindow) get_window_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventFromWindow")
    defer { classname.deinit() }
    fnname := StringName.new("get_window_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

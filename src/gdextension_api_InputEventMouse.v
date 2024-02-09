module vgdextension

pub struct InputEventMouse {
    InputEventWithModifiers
}

pub fn (mut r InputEventMouse) set_button_mask(button_mask MouseButtonMask) {
    classname := StringName.new("InputEventMouse")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950145251)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&button_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventMouse) get_button_mask() MouseButtonMask {
    mut object_out := MouseButtonMask.mouse_button_mask_left
    classname := StringName.new("InputEventMouse")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMouse) set_position(position Vector2) {
    classname := StringName.new("InputEventMouse")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventMouse) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouse")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMouse) set_global_position(global_position Vector2) {
    classname := StringName.new("InputEventMouse")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&global_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventMouse) get_global_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouse")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct InputEventMouse {
    InputEventWithModifiers
}

pub fn (r &InputEventMouse) set_button_mask(button_mask MouseButtonMask) {
    classname := StringName.new("InputEventMouse")
    fnname := StringName.new("set_button_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3950145251)
    mut args := unsafe { [1]voidptr{} }
    i64_button_mask := i64(button_mask)
    args[0] = unsafe{voidptr(&i64_button_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouse) get_button_mask() MouseButtonMask {
    mut object_out := i64(MouseButtonMask.mouse_button_mask_left)
    classname := StringName.new("InputEventMouse")
    fnname := StringName.new("get_button_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2512161324)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MouseButtonMask(object_out)}
}
pub fn (r &InputEventMouse) set_position(position Vector2) {
    classname := StringName.new("InputEventMouse")
    fnname := StringName.new("set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouse) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouse")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventMouse) set_global_position(global_position Vector2) {
    classname := StringName.new("InputEventMouse")
    fnname := StringName.new("set_global_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&global_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouse) get_global_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouse")
    fnname := StringName.new("get_global_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

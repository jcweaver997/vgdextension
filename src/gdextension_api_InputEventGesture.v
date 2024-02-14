module vgdextension

@[noinit]
pub struct InputEventGesture {
    InputEventWithModifiers
}

pub fn (mut r InputEventGesture) set_position(position Vector2) {
    classname := StringName.new("InputEventGesture")
    fnname := StringName.new("set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventGesture) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventGesture")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

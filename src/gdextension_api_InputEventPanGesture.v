module vgdextension

pub type InputEventPanGesture = voidptr

pub fn (mut r InputEventPanGesture) set_delta(delta Vector2) {
    classname := StringName.new("InputEventPanGesture")
    defer { classname.deinit() }
    fnname := StringName.new("set_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventPanGesture) get_delta() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventPanGesture")
    defer { classname.deinit() }
    fnname := StringName.new("get_delta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

pub type InputEventMagnifyGesture = voidptr

pub fn (mut r InputEventMagnifyGesture) set_factor(factor f32) {
    classname := StringName.new("InputEventMagnifyGesture")
    defer { classname.deinit() }
    fnname := StringName.new("set_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMagnifyGesture) get_factor() f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputEventMagnifyGesture")
    defer { classname.deinit() }
    fnname := StringName.new("get_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

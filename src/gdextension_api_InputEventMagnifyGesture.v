module vgdextension

@[noinit]
pub struct InputEventMagnifyGesture {
    InputEventGesture
}

pub fn (mut r InputEventMagnifyGesture) set_factor(factor f64) {
    classname := StringName.new("InputEventMagnifyGesture")
    defer { classname.deinit() }
    fnname := StringName.new("set_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&factor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventMagnifyGesture) get_factor() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventMagnifyGesture")
    defer { classname.deinit() }
    fnname := StringName.new("get_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

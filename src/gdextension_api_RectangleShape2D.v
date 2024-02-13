module vgdextension

@[noinit]
pub struct RectangleShape2D {
    Shape2D
}

pub fn (mut r RectangleShape2D) set_size(size Vector2) {
    classname := StringName.new("RectangleShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RectangleShape2D) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("RectangleShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

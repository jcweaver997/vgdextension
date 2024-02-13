module vgdextension

@[noinit]
pub struct SegmentShape2D {
    Shape2D
}

pub fn (mut r SegmentShape2D) set_a(a Vector2) {
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&a)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SegmentShape2D) get_a() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SegmentShape2D) set_b(b Vector2) {
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SegmentShape2D) get_b() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

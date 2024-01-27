module vgdextension

pub type SegmentShape2D = voidptr

pub fn (mut r SegmentShape2D) set_a(a Vector2) {
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SegmentShape2D) get_a() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SegmentShape2D) set_b(b Vector2) {
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SegmentShape2D) get_b() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SegmentShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

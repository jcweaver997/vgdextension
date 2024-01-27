pub type ConcavePolygonShape2D = voidptr

pub fn (mut r ConcavePolygonShape2D) set_segments(segments PackedVector2Array) {
    classname := StringName.new("ConcavePolygonShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ConcavePolygonShape2D) get_segments() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("ConcavePolygonShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

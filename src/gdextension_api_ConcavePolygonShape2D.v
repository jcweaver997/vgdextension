module vgdextension

@[noinit]
pub struct ConcavePolygonShape2D {
    Shape2D
}

pub fn (mut r ConcavePolygonShape2D) set_segments(segments PackedVector2Array) {
    classname := StringName.new("ConcavePolygonShape2D")
    fnname := StringName.new("set_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConcavePolygonShape2D) get_segments() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("ConcavePolygonShape2D")
    fnname := StringName.new("get_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

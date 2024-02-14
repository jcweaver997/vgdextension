module vgdextension

@[noinit]
pub struct PolygonOccluder3D {
    Occluder3D
}

pub fn (mut r PolygonOccluder3D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("PolygonOccluder3D")
    fnname := StringName.new("set_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PolygonOccluder3D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("PolygonOccluder3D")
    fnname := StringName.new("get_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

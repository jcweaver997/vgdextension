module vgdextension

pub enum OccluderPolygon2DCullMode {
    cull_disabled = 0
    cull_clockwise = 1
    cull_counter_clockwise = 2
}

@[noinit]
pub struct OccluderPolygon2D {
    Resource
}

pub fn (mut r OccluderPolygon2D) set_closed(closed bool) {
    classname := StringName.new("OccluderPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_closed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&closed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OccluderPolygon2D) is_closed() bool {
    mut object_out := false
    classname := StringName.new("OccluderPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_closed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderPolygon2D) set_cull_mode(cull_mode OccluderPolygon2DCullMode) {
    classname := StringName.new("OccluderPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3500863002)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cull_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OccluderPolygon2D) get_cull_mode() OccluderPolygon2DCullMode {
    mut object_out := OccluderPolygon2DCullMode.cull_disabled
    classname := StringName.new("OccluderPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 33931036)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderPolygon2D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("OccluderPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OccluderPolygon2D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("OccluderPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}

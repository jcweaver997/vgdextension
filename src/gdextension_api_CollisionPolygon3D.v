module vgdextension

@[noinit]
pub struct CollisionPolygon3D {
    Node3D
}

pub fn (mut r CollisionPolygon3D) set_depth(depth f64) {
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("set_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon3D) get_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("get_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionPolygon3D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("set_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon3D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("get_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionPolygon3D) set_disabled(disabled bool) {
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("set_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon3D) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("is_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionPolygon3D) set_margin(margin f64) {
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon3D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionPolygon3D")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

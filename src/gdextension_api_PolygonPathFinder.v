module vgdextension

@[noinit]
pub struct PolygonPathFinder {
    Resource
}

pub fn (r &PolygonPathFinder) setup(points PackedVector2Array, connections PackedInt32Array) {
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("setup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3251786936)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&connections)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PolygonPathFinder) find_path(from Vector2, to Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("find_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1562168077)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PolygonPathFinder) get_intersections(from Vector2, to Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("get_intersections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3932192302)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PolygonPathFinder) get_closest_point(point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("get_closest_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PolygonPathFinder) is_point_inside(point Vector2) bool {
    mut object_out := false
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("is_point_inside")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 556197845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PolygonPathFinder) set_point_penalty(idx i32, penalty f64) {
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("set_point_penalty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&penalty)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PolygonPathFinder) get_point_penalty(idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("get_point_penalty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PolygonPathFinder) get_bounds() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("PolygonPathFinder")
    fnname := StringName.new("get_bounds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

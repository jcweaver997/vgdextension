pub type PolygonPathFinder = voidptr

pub fn (mut r PolygonPathFinder) setup(points PackedVector2Array, connections PackedInt32Array) {
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("setup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3251786936)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PolygonPathFinder) find_path(from Vector2, to Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("find_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1562168077)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PolygonPathFinder) get_intersections(from Vector2, to Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("get_intersections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3932192302)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PolygonPathFinder) get_closest_point(point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PolygonPathFinder) is_point_inside(point Vector2) bool {
    mut object_out := false
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_inside")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 556197845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PolygonPathFinder) set_point_penalty(idx i32, penalty f32) {
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_penalty")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PolygonPathFinder) get_point_penalty(idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_penalty")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PolygonPathFinder) get_bounds() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("PolygonPathFinder")
    defer { classname.deinit() }
    fnname := StringName.new("get_bounds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

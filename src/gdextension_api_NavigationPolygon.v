pub type NavigationPolygon = voidptr

pub fn (mut r NavigationPolygon) set_vertices(vertices PackedVector2Array) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPolygon) get_vertices() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPolygon) add_polygon(polygon PackedInt32Array) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("add_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPolygon) get_polygon_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPolygon) get_polygon(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3668444399)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPolygon) clear_polygons() {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("clear_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationPolygon) get_navigation_mesh() NavigationMesh {
    mut object_out := NavigationMesh(unsafe{nil})
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 330232164)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPolygon) add_outline(outline PackedVector2Array) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("add_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationPolygon) add_outline_at_index(outline PackedVector2Array, index i32) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("add_outline_at_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1569738947)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPolygon) get_outline_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPolygon) set_outline(idx i32, outline PackedVector2Array) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("set_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1201971903)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPolygon) get_outline(idx i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3946907486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPolygon) remove_outline(idx i32) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("remove_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationPolygon) clear_outlines() {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("clear_outlines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationPolygon) make_polygons_from_outlines() {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("make_polygons_from_outlines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r NavigationPolygon) set_cell_size(cell_size f32) {
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPolygon) get_cell_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("NavigationPolygon")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

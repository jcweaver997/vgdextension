module vgdextension

@[noinit]
pub struct NavigationMeshSourceGeometryData2D {
    Resource
}

pub fn (mut r NavigationMeshSourceGeometryData2D) clear() {
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NavigationMeshSourceGeometryData2D) has_data() bool {
    mut object_out := false
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("has_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData2D) set_traversable_outlines(traversable_outlines Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("set_traversable_outlines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&traversable_outlines)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshSourceGeometryData2D) get_traversable_outlines() Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("get_traversable_outlines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData2D) set_obstruction_outlines(obstruction_outlines Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("set_obstruction_outlines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&obstruction_outlines)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationMeshSourceGeometryData2D) get_obstruction_outlines() Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("get_obstruction_outlines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r NavigationMeshSourceGeometryData2D) add_traversable_outline(shape_outline PackedVector2Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("add_traversable_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_outline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r NavigationMeshSourceGeometryData2D) add_obstruction_outline(shape_outline PackedVector2Array) {
    classname := StringName.new("NavigationMeshSourceGeometryData2D")
    fnname := StringName.new("add_obstruction_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_outline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

module vgdextension

pub type ImmediateMesh = voidptr

pub fn (mut r ImmediateMesh) surface_begin(primitive MeshPrimitiveType, material Material) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3716480242)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_color(color Color) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_normal(normal Vector3) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_tangent(tangent Plane) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_uv(uv Vector2) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_uv2(uv2 Vector2) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_uv2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_add_vertex(vertex Vector3) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_add_vertex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_add_vertex_2d(vertex Vector2) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_add_vertex_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_end() {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) clear_surfaces() {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("clear_surfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

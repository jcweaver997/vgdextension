module vgdextension

@[noinit]
pub struct ImmediateMesh {
    Mesh
}

pub fn (mut r ImmediateMesh) surface_begin(primitive MeshPrimitiveType, material Material) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3716480242)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&primitive)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_color(color Color) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_normal(normal Vector3) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_tangent(tangent Plane) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_uv(uv Vector2) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_set_uv2(uv2 Vector2) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_uv2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_add_vertex(vertex Vector3) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_add_vertex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_add_vertex_2d(vertex Vector2) {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_add_vertex_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImmediateMesh) surface_end() {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImmediateMesh) clear_surfaces() {
    classname := StringName.new("ImmediateMesh")
    defer { classname.deinit() }
    fnname := StringName.new("clear_surfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}

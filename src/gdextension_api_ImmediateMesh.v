module vgdextension

@[noinit]
pub struct ImmediateMesh {
    Mesh
}

pub fn (mut r ImmediateMesh) surface_begin(primitive MeshPrimitiveType, material Material) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2794442543)
    mut args := unsafe { [2]voidptr{} }
    i64_primitive := i64(primitive)
    args[0] = unsafe{voidptr(&i64_primitive)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_set_color(color Color) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_set_normal(normal Vector3) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_set_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_set_tangent(tangent Plane) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_set_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_set_uv(uv Vector2) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_set_uv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_set_uv2(uv2 Vector2) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_set_uv2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_add_vertex(vertex Vector3) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_add_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_add_vertex_2d(vertex Vector2) {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_add_vertex_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) surface_end() {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("surface_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImmediateMesh) clear_surfaces() {
    classname := StringName.new("ImmediateMesh")
    fnname := StringName.new("clear_surfaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

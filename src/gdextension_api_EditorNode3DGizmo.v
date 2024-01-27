module vgdextension

pub type EditorNode3DGizmo = voidptr

pub fn (mut r EditorNode3DGizmo) uredraw() {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_redraw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmo) uget_handle_name(id i32, secondary bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_get_handle_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmo) uis_handle_highlighted(id i32, secondary bool) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_is_handle_highlighted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmo) uget_handle_value(id i32, secondary bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_get_handle_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmo) uset_handle(id i32, secondary bool, camera Camera3D, point Vector2) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_set_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) ucommit_handle(id i32, secondary bool, restore Variant, cancel bool) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_commit_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmo) usubgizmos_intersect_ray(camera Camera3D, point Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_subgizmos_intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmo) usubgizmos_intersect_frustum(camera Camera3D, frustum Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_subgizmos_intersect_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    args[1] = unsafe{voidptr(&frustum)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmo) uset_subgizmo_transform(id i32, transform Transform3D) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_set_subgizmo_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmo) uget_subgizmo_transform(id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_get_subgizmo_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmo) ucommit_subgizmos(ids PackedInt32Array, restores Array, cancel bool) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("_commit_subgizmos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) add_lines(lines PackedVector3Array, material Material, billboard bool, modulate Color) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("add_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 302451090)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) add_mesh(mesh Mesh, material Material, transform Transform3D, skeleton SkinReference) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("add_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868867708)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) add_collision_segments(segments PackedVector3Array) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("add_collision_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) add_collision_triangles(triangles TriangleMesh) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("add_collision_triangles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 54901064)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) add_unscaled_billboard(material Material, default_scale f32, modulate Color) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("add_unscaled_billboard")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3719733075)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) add_handles(handles PackedVector3Array, material Material, ids PackedInt32Array, billboard bool, secondary bool) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("add_handles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2254560097)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) set_node_3d(node Node) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmo) get_node_3d() Node3D {
    mut object_out := Node3D(unsafe{nil})
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmo) get_plugin() EditorNode3DGizmoPlugin {
    mut object_out := EditorNode3DGizmoPlugin(unsafe{nil})
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("get_plugin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4250544552)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmo) clear() {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmo) set_hidden(hidden bool) {
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("set_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmo) is_subgizmo_selected(id i32) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("is_subgizmo_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmo) get_subgizmo_selection() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("EditorNode3DGizmo")
    defer { classname.deinit() }
    fnname := StringName.new("get_subgizmo_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

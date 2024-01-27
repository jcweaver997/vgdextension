module vgdextension

pub type EditorNode3DGizmoPlugin = voidptr

pub fn (r &EditorNode3DGizmoPlugin) uhas_gizmo(for_node_3d Node3D) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_has_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&for_node_3d)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) ucreate_gizmo(for_node_3d Node3D) EditorNode3DGizmo {
    mut object_out := EditorNode3DGizmo(unsafe{nil})
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_create_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&for_node_3d)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) uget_gizmo_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_gizmo_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) uget_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) ucan_be_hidden() bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_can_be_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) uis_selectable_when_hidden() bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_is_selectable_when_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmoPlugin) uredraw(gizmo EditorNode3DGizmo) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_redraw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmoPlugin) uget_handle_name(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_handle_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gizmo)}
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) uis_handle_highlighted(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_is_handle_highlighted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gizmo)}
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) uget_handle_value(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_handle_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gizmo)}
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmoPlugin) uset_handle(gizmo EditorNode3DGizmo, handle_id i32, secondary bool, camera Camera3D, screen_pos Vector2) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_set_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) ucommit_handle(gizmo EditorNode3DGizmo, handle_id i32, secondary bool, restore Variant, cancel bool) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_commit_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorNode3DGizmoPlugin) usubgizmos_intersect_ray(gizmo EditorNode3DGizmo, camera Camera3D, screen_pos Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_subgizmos_intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gizmo)}
    args[1] = unsafe{voidptr(&camera)}
    args[2] = unsafe{voidptr(&screen_pos)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) usubgizmos_intersect_frustum(gizmo EditorNode3DGizmo, camera Camera3D, frustum_planes Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_subgizmos_intersect_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&gizmo)}
    args[1] = unsafe{voidptr(&camera)}
    args[2] = unsafe{voidptr(&frustum_planes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorNode3DGizmoPlugin) uget_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_subgizmo_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gizmo)}
    args[1] = unsafe{voidptr(&subgizmo_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorNode3DGizmoPlugin) uset_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i32, transform Transform3D) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_set_subgizmo_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) ucommit_subgizmos(gizmo EditorNode3DGizmo, ids PackedInt32Array, restores Array, cancel bool) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_commit_subgizmos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) create_material(name String, color Color, billboard bool, on_top bool, use_vertex_color bool) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("create_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3486012546)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) create_icon_material(name String, texture Texture2D, on_top bool, color Color) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("create_icon_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2976007329)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) create_handle_material(name String, billboard bool, texture Texture2D) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("create_handle_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2486475223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) add_material(name String, material StandardMaterial3D) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1374068695)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) get_material(name String, gizmo EditorNode3DGizmo) StandardMaterial3D {
    mut object_out := StandardMaterial3D(unsafe{nil})
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3501703615)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&gizmo)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

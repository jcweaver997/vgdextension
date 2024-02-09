module vgdextension

pub struct EditorNode3DGizmoPlugin {
    Resource
}

pub interface IEditorNode3DGizmoPluginHasGizmo {
    mut:
    virt_has_gizmo(for_node_3d Node3D) bool
}

pub fn (r &EditorNode3DGizmoPlugin) uhas_gizmo(for_node_3d Node3D) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_has_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = for_node_3d.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginCreateGizmo {
    mut:
    virt_create_gizmo(for_node_3d Node3D) EditorNode3DGizmo
}

pub fn (r &EditorNode3DGizmoPlugin) ucreate_gizmo(for_node_3d Node3D) EditorNode3DGizmo {
    mut object_out := EditorNode3DGizmo{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_create_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = for_node_3d.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginGetGizmoName {
    mut:
    virt_get_gizmo_name() String
}

pub fn (r &EditorNode3DGizmoPlugin) uget_gizmo_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_gizmo_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginGetPriority {
    mut:
    virt_get_priority() i32
}

pub fn (r &EditorNode3DGizmoPlugin) uget_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginCanBeHidden {
    mut:
    virt_can_be_hidden() bool
}

pub fn (r &EditorNode3DGizmoPlugin) ucan_be_hidden() bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_can_be_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginIsSelectableWhenHidden {
    mut:
    virt_is_selectable_when_hidden() bool
}

pub fn (r &EditorNode3DGizmoPlugin) uis_selectable_when_hidden() bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_is_selectable_when_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginRedraw {
    mut:
    virt_redraw(gizmo EditorNode3DGizmo)
}

pub fn (mut r EditorNode3DGizmoPlugin) uredraw(gizmo EditorNode3DGizmo) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_redraw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gizmo.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorNode3DGizmoPluginGetHandleName {
    mut:
    virt_get_handle_name(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) String
}

pub fn (r &EditorNode3DGizmoPlugin) uget_handle_name(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_handle_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginIsHandleHighlighted {
    mut:
    virt_is_handle_highlighted(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) bool
}

pub fn (r &EditorNode3DGizmoPlugin) uis_handle_highlighted(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_is_handle_highlighted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginGetHandleValue {
    mut:
    virt_get_handle_value(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) Variant
}

pub fn (r &EditorNode3DGizmoPlugin) uget_handle_value(gizmo EditorNode3DGizmo, handle_id i32, secondary bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_handle_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginSetHandle {
    mut:
    virt_set_handle(gizmo EditorNode3DGizmo, handle_id i32, secondary bool, camera Camera3D, screen_pos Vector2)
}

pub fn (mut r EditorNode3DGizmoPlugin) uset_handle(gizmo EditorNode3DGizmo, handle_id i32, secondary bool, camera Camera3D, screen_pos Vector2) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_set_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    args[3] = camera.ptr
    args[4] = unsafe{voidptr(&screen_pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorNode3DGizmoPluginCommitHandle {
    mut:
    virt_commit_handle(gizmo EditorNode3DGizmo, handle_id i32, secondary bool, restore Variant, cancel bool)
}

pub fn (mut r EditorNode3DGizmoPlugin) ucommit_handle(gizmo EditorNode3DGizmo, handle_id i32, secondary bool, restore Variant, cancel bool) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_commit_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&handle_id)}
    args[2] = unsafe{voidptr(&secondary)}
    args[3] = unsafe{voidptr(&restore)}
    args[4] = unsafe{voidptr(&cancel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorNode3DGizmoPluginSubgizmosIntersectRay {
    mut:
    virt_subgizmos_intersect_ray(gizmo EditorNode3DGizmo, camera Camera3D, screen_pos Vector2) i32
}

pub fn (r &EditorNode3DGizmoPlugin) usubgizmos_intersect_ray(gizmo EditorNode3DGizmo, camera Camera3D, screen_pos Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_subgizmos_intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = camera.ptr
    args[2] = unsafe{voidptr(&screen_pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginSubgizmosIntersectFrustum {
    mut:
    virt_subgizmos_intersect_frustum(gizmo EditorNode3DGizmo, camera Camera3D, frustum_planes Array) PackedInt32Array
}

pub fn (r &EditorNode3DGizmoPlugin) usubgizmos_intersect_frustum(gizmo EditorNode3DGizmo, camera Camera3D, frustum_planes Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_subgizmos_intersect_frustum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = camera.ptr
    args[2] = unsafe{voidptr(&frustum_planes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginGetSubgizmoTransform {
    mut:
    virt_get_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i32) Transform3D
}

pub fn (r &EditorNode3DGizmoPlugin) uget_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_subgizmo_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&subgizmo_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorNode3DGizmoPluginSetSubgizmoTransform {
    mut:
    virt_set_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i32, transform Transform3D)
}

pub fn (mut r EditorNode3DGizmoPlugin) uset_subgizmo_transform(gizmo EditorNode3DGizmo, subgizmo_id i32, transform Transform3D) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_set_subgizmo_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&subgizmo_id)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorNode3DGizmoPluginCommitSubgizmos {
    mut:
    virt_commit_subgizmos(gizmo EditorNode3DGizmo, ids PackedInt32Array, restores Array, cancel bool)
}

pub fn (mut r EditorNode3DGizmoPlugin) ucommit_subgizmos(gizmo EditorNode3DGizmo, ids PackedInt32Array, restores Array, cancel bool) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_commit_subgizmos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&ids)}
    args[2] = unsafe{voidptr(&restores)}
    args[3] = unsafe{voidptr(&cancel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) create_material(name String, color Color, billboard bool, on_top bool, use_vertex_color bool) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("create_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3486012546)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&billboard)}
    args[3] = unsafe{voidptr(&on_top)}
    args[4] = unsafe{voidptr(&use_vertex_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) create_icon_material(name String, texture Texture2D, on_top bool, color Color) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("create_icon_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2976007329)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = texture.ptr
    args[2] = unsafe{voidptr(&on_top)}
    args[3] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) create_handle_material(name String, billboard bool, texture Texture2D) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("create_handle_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2486475223)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&billboard)}
    args[2] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) add_material(name String, material StandardMaterial3D) {
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1374068695)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorNode3DGizmoPlugin) get_material(name String, gizmo EditorNode3DGizmo) StandardMaterial3D {
    mut object_out := StandardMaterial3D{}
    classname := StringName.new("EditorNode3DGizmoPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3501703615)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = gizmo.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

module vgdextension

@[noinit]
pub struct EditorNode3DGizmo {
    Node3DGizmo
}

pub interface IEditorNode3DGizmoRedraw {
    mut:
    virt_redraw()
}

pub fn (mut r EditorNode3DGizmo) uredraw() {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_redraw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorNode3DGizmoGetHandleName {
    mut:
    virt_get_handle_name(id i32, secondary bool) String
}

pub fn (r &EditorNode3DGizmo) uget_handle_name(id i32, secondary bool) String {
    mut object_out := String{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_get_handle_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorNode3DGizmoIsHandleHighlighted {
    mut:
    virt_is_handle_highlighted(id i32, secondary bool) bool
}

pub fn (r &EditorNode3DGizmo) uis_handle_highlighted(id i32, secondary bool) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_is_handle_highlighted")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorNode3DGizmoGetHandleValue {
    mut:
    virt_get_handle_value(id i32, secondary bool) Variant
}

pub fn (r &EditorNode3DGizmo) uget_handle_value(id i32, secondary bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_get_handle_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorNode3DGizmoSetHandle {
    mut:
    virt_set_handle(id i32, secondary bool, camera Camera3D, point Vector2)
}

pub fn (mut r EditorNode3DGizmo) uset_handle(id i32, secondary bool, camera Camera3D, point Vector2) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_set_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    args[2] = camera.ptr
    args[3] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorNode3DGizmoCommitHandle {
    mut:
    virt_commit_handle(id i32, secondary bool, restore Variant, cancel bool)
}

pub fn (mut r EditorNode3DGizmo) ucommit_handle(id i32, secondary bool, restore Variant, cancel bool) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_commit_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&secondary)}
    args[2] = unsafe{voidptr(&restore)}
    args[3] = unsafe{voidptr(&cancel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorNode3DGizmoSubgizmosIntersectRay {
    mut:
    virt_subgizmos_intersect_ray(camera Camera3D, point Vector2) i32
}

pub fn (r &EditorNode3DGizmo) usubgizmos_intersect_ray(camera Camera3D, point Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_subgizmos_intersect_ray")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = camera.ptr
    args[1] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorNode3DGizmoSubgizmosIntersectFrustum {
    mut:
    virt_subgizmos_intersect_frustum(camera Camera3D, frustum Array) PackedInt32Array
}

pub fn (r &EditorNode3DGizmo) usubgizmos_intersect_frustum(camera Camera3D, frustum Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_subgizmos_intersect_frustum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = camera.ptr
    args[1] = unsafe{voidptr(&frustum)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorNode3DGizmoSetSubgizmoTransform {
    mut:
    virt_set_subgizmo_transform(id i32, transform Transform3D)
}

pub fn (mut r EditorNode3DGizmo) uset_subgizmo_transform(id i32, transform Transform3D) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_set_subgizmo_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorNode3DGizmoGetSubgizmoTransform {
    mut:
    virt_get_subgizmo_transform(id i32) Transform3D
}

pub fn (r &EditorNode3DGizmo) uget_subgizmo_transform(id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_get_subgizmo_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorNode3DGizmoCommitSubgizmos {
    mut:
    virt_commit_subgizmos(ids PackedInt32Array, restores Array, cancel bool)
}

pub fn (mut r EditorNode3DGizmo) ucommit_subgizmos(ids PackedInt32Array, restores Array, cancel bool) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("_commit_subgizmos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&ids)}
    args[1] = unsafe{voidptr(&restores)}
    args[2] = unsafe{voidptr(&cancel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) add_lines(lines PackedVector3Array, material Material, billboard bool, modulate Color) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("add_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2910971437)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&lines)}
    args[1] = material.ptr
    args[2] = unsafe{voidptr(&billboard)}
    args[3] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) add_mesh(mesh Mesh, material Material, transform Transform3D, skeleton SkinReference) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("add_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1579955111)
    mut args := unsafe { [4]voidptr{} }
    args[0] = mesh.ptr
    args[1] = material.ptr
    args[2] = unsafe{voidptr(&transform)}
    args[3] = skeleton.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) add_collision_segments(segments PackedVector3Array) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("add_collision_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) add_collision_triangles(triangles TriangleMesh) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("add_collision_triangles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 54901064)
    mut args := unsafe { [1]voidptr{} }
    args[0] = triangles.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) add_unscaled_billboard(material Material, default_scale f64, modulate Color) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("add_unscaled_billboard")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 520007164)
    mut args := unsafe { [3]voidptr{} }
    args[0] = material.ptr
    args[1] = unsafe{voidptr(&default_scale)}
    args[2] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) add_handles(handles PackedVector3Array, material Material, ids PackedInt32Array, billboard bool, secondary bool) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("add_handles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2254560097)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&handles)}
    args[1] = material.ptr
    args[2] = unsafe{voidptr(&ids)}
    args[3] = unsafe{voidptr(&billboard)}
    args[4] = unsafe{voidptr(&secondary)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) set_node_3d(node Node) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("set_node_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorNode3DGizmo) get_node_3d() Node3D {
    mut object_out := Node3D{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("get_node_3d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorNode3DGizmo) get_plugin() EditorNode3DGizmoPlugin {
    mut object_out := EditorNode3DGizmoPlugin{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("get_plugin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4250544552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorNode3DGizmo) clear() {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorNode3DGizmo) set_hidden(hidden bool) {
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("set_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorNode3DGizmo) is_subgizmo_selected(id i32) bool {
    mut object_out := false
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("is_subgizmo_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorNode3DGizmo) get_subgizmo_selection() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("EditorNode3DGizmo")
    fnname := StringName.new("get_subgizmo_selection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

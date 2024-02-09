module vgdextension

pub enum Node3DRotationEditMode {
    rotation_edit_mode_euler = 0
    rotation_edit_mode_quaternion = 1
    rotation_edit_mode_basis = 2
}

pub struct Node3D {
    Node
}

pub fn (mut r Node3D) set_transform(local Transform3D) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_position(position Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_rotation(euler_radians Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&euler_radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_rotation() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_rotation_degrees(euler_degrees Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&euler_degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_rotation_degrees() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_rotation_order(order EulerOrder) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1820889989)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_rotation_order() EulerOrder {
    mut object_out := EulerOrder.euler_order_xyz
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 916939469)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_rotation_edit_mode(edit_mode Node3DRotationEditMode) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_edit_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 141483330)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&edit_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_rotation_edit_mode() Node3DRotationEditMode {
    mut object_out := Node3DRotationEditMode.rotation_edit_mode_euler
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_edit_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572188370)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_scale(scale Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_quaternion(quaternion Quaternion) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_quaternion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quaternion)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_quaternion() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_quaternion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_basis(basis Basis) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_basis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1055510324)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&basis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_basis() Basis {
    mut object_out := Basis{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_basis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_global_transform(global Transform3D) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&global)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_global_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_global_position(position Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_global_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_global_rotation(euler_radians Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&euler_radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_global_rotation() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_global_rotation_degrees(euler_degrees Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&euler_degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_global_rotation_degrees() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node3D) get_parent_node_3d() Node3D {
    mut object_out := Node3D{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent_node_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_ignore_transform_notification(enabled bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ignore_transform_notification")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) set_as_top_level(enable bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_top_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) is_set_as_top_level() bool {
    mut object_out := false
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_set_as_top_level")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_disable_scale(disable bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) is_scale_disabled() bool {
    mut object_out := false
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_scale_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node3D) get_world_3d() World3D {
    mut object_out := World3D{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_world_3d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 317588385)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) force_update_transform() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("force_update_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) set_visibility_parent(path NodePath) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_visibility_parent() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) update_gizmos() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("update_gizmos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) add_gizmo(gizmo Node3DGizmo) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_gizmo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1544533845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gizmo.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) get_gizmos() Array {
    mut object_out := Array{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gizmos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) clear_gizmos() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_gizmos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) set_subgizmo_selection(gizmo Node3DGizmo, id i32, transform Transform3D) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_subgizmo_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317607635)
    mut args := unsafe { [3]voidptr{} }
    args[0] = gizmo.ptr
    args[1] = unsafe{voidptr(&id)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) clear_subgizmo_selection() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_subgizmo_selection")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) set_visible(visible bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) is_visible() bool {
    mut object_out := false
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node3D) is_visible_in_tree() bool {
    mut object_out := false
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_visible_in_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) show() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("show")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) hide() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("hide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) set_notify_local_transform(enable bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_notify_local_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) is_local_transform_notification_enabled() bool {
    mut object_out := false
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_local_transform_notification_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) set_notify_transform(enable bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_notify_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) is_transform_notification_enabled() bool {
    mut object_out := false
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_transform_notification_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node3D) rotate(axis Vector3, angle f64) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("rotate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3436291937)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    args[1] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) global_rotate(axis Vector3, angle f64) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("global_rotate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3436291937)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    args[1] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) global_scale(scale Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("global_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) global_translate(offset Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("global_translate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) rotate_object_local(axis Vector3, angle f64) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("rotate_object_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3436291937)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&axis)}
    args[1] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) scale_object_local(scale Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("scale_object_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) translate_object_local(offset Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("translate_object_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) rotate_x(angle f64) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("rotate_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) rotate_y(angle f64) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("rotate_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) rotate_z(angle f64) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("rotate_z")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) translate(offset Vector3) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("translate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) orthonormalize() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("orthonormalize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) set_identity() {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_identity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node3D) look_at(target Vector3, up Vector3, use_model_front bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("look_at")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3123400617)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&target)}
    args[1] = unsafe{voidptr(&up)}
    args[2] = unsafe{voidptr(&use_model_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Node3D) look_at_from_position(position Vector3, target Vector3, up Vector3, use_model_front bool) {
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("look_at_from_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4067663783)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&target)}
    args[2] = unsafe{voidptr(&up)}
    args[3] = unsafe{voidptr(&use_model_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Node3D) to_local(global_point Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("to_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&global_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node3D) to_global(local_point Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Node3D")
    defer { classname.deinit() }
    fnname := StringName.new("to_global")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

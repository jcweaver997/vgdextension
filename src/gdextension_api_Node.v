module vgdextension

pub enum NodeProcessMode {
    process_mode_inherit = 0
    process_mode_pausable = 1
    process_mode_when_paused = 2
    process_mode_always = 3
    process_mode_disabled = 4
}

pub enum NodeProcessThreadGroup {
    process_thread_group_inherit = 0
    process_thread_group_main_thread = 1
    process_thread_group_sub_thread = 2
}

pub enum NodeProcessThreadMessages {
    flag_process_thread_messages = 1
    flag_process_thread_messages_physics = 2
    flag_process_thread_messages_all = 3
}

pub enum NodeDuplicateFlags {
    duplicate_signals = 1
    duplicate_groups = 2
    duplicate_scripts = 4
    duplicate_use_instantiation = 8
}

pub enum NodeInternalMode {
    internal_mode_disabled = 0
    internal_mode_front = 1
    internal_mode_back = 2
}

pub type Node = voidptr

pub fn (mut r Node) uprocess(delta f32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) uphysics_process(delta f32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_physics_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) uenter_tree() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_enter_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) uexit_tree() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_exit_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) uready() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_ready")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) uget_configuration_warnings() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_get_configuration_warnings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) uinput(event InputEvent) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) ushortcut_input(event InputEvent) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_shortcut_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) uunhandled_input(event InputEvent) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_unhandled_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) uunhandled_key_input(event InputEvent) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("_unhandled_key_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn Node.print_orphan_nodes() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("print_orphan_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) add_sibling(sibling Node, force_readable_name bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("add_sibling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_name(name String) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) add_child(node Node, force_readable_name bool, internal NodeInternalMode) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("add_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3070154285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) remove_child(node Node) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("remove_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) reparent(new_parent Node, keep_global_transform bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("reparent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_child_count(include_internal bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_child_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_children(include_internal bool) Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_children")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 873284517)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_child(idx i32, include_internal bool) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 541253412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) has_node(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("has_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_node(path NodePath) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2734337346)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_node_or_null(path NodePath) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_or_null")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2734337346)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_parent() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) find_child(pattern String, recursive bool, owned bool) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("find_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4253159453)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&pattern)}
    args[1] = unsafe{voidptr(&recursive)}
    args[2] = unsafe{voidptr(&owned)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) find_children(pattern String, type_name String, recursive bool, owned bool) Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("find_children")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585018254)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&pattern)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&recursive)}
    args[3] = unsafe{voidptr(&owned)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) find_parent(pattern String) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("find_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1140089439)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pattern)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) has_node_and_resource(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("has_node_and_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) get_node_and_resource(path NodePath) Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_and_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 502563882)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) is_inside_tree() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_inside_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) is_ancestor_of(node Node) bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_ancestor_of")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) is_greater_than(node Node) bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_greater_than")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_path_to(node Node, use_unique_path bool) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 498846349)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    args[1] = unsafe{voidptr(&use_unique_path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) add_to_group(group StringName, persistent bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("add_to_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683006648)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) remove_from_group(group StringName) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("remove_from_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_in_group(group StringName) bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) move_child(child_node Node, to_index i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("move_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3315886247)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_groups() Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_groups")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_owner(owner Node) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_owner() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_index(include_internal bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) print_tree() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("print_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) print_tree_pretty() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("print_tree_pretty")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_scene_file_path(scene_file_path String) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_scene_file_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_scene_file_path() String {
    mut object_out := String{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_scene_file_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) propagate_notification(what i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("propagate_notification")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) propagate_call(method StringName, gdargs Array, parent_first bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("propagate_call")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1667910434)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_physics_process(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_physics_process_delta_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_process_delta_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) is_physics_processing() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_physics_processing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_process_delta_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_delta_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_process_priority(priority i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_process_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_physics_process_priority(priority i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_process_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_physics_process_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_process_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) is_processing() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_processing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_input(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_processing_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_processing_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_shortcut_input(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_shortcut_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_processing_shortcut_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_processing_shortcut_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_unhandled_input(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_unhandled_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_processing_unhandled_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_processing_unhandled_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_unhandled_key_input(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_unhandled_key_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_processing_unhandled_key_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_processing_unhandled_key_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_mode(mode NodeProcessMode) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1841290486)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_process_mode() NodeProcessMode {
    mut object_out := NodeProcessMode.process_mode_inherit
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 739966102)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) can_process() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("can_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_thread_group(mode NodeProcessThreadGroup) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_thread_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275442745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_process_thread_group() NodeProcessThreadGroup {
    mut object_out := NodeProcessThreadGroup.process_thread_group_inherit
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_thread_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1866404740)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_thread_messages(flags NodeProcessThreadMessages) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_thread_messages")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1357280998)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_process_thread_messages() NodeProcessThreadMessages {
    mut object_out := NodeProcessThreadMessages(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_thread_messages")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4228993612)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_thread_group_order(order i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_thread_group_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_process_thread_group_order() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_thread_group_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_display_folded(fold bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_folded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_displayed_folded() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_displayed_folded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_process_internal(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_internal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_processing_internal() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_processing_internal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_physics_process_internal(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_process_internal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_physics_processing_internal() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_physics_processing_internal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_window() Window {
    mut object_out := Window(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_window")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_last_exclusive_window() Window {
    mut object_out := Window(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_last_exclusive_window")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_tree() SceneTree {
    mut object_out := SceneTree(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2958820483)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) create_tween() Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("create_tween")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) duplicate(flags i32) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511555459)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) replace_by(node Node, keep_groups bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("replace_by")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_scene_instance_load_placeholder(load_placeholder bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_scene_instance_load_placeholder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_scene_instance_load_placeholder() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_scene_instance_load_placeholder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_editable_instance(node Node, is_editable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_editable_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2731852923)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_editable_instance(node Node) bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_editable_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_viewport() Viewport {
    mut object_out := Viewport(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3596683776)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) queue_free() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("queue_free")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) request_ready() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("request_ready")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_node_ready() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_node_ready")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_multiplayer_authority(id i32, recursive bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_multiplayer_authority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_multiplayer_authority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_multiplayer_authority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) is_multiplayer_authority() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_multiplayer_authority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node) get_multiplayer() MultiplayerAPI {
    mut object_out := MultiplayerAPI(unsafe{nil})
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_multiplayer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 406750475)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) rpc_config(method StringName, config Variant) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("rpc_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_editor_description(editor_description String) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_editor_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) get_editor_description() String {
    mut object_out := String{}
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) set_unique_name_in_owner(enable bool) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_unique_name_in_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node) is_unique_name_in_owner() bool {
    mut object_out := false
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("is_unique_name_in_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node) update_configuration_warnings() {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("update_configuration_warnings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_deferred_thread_group(property StringName, value Variant) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_deferred_thread_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) notify_deferred_thread_group(what i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("notify_deferred_thread_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) set_thread_safe(property StringName, value Variant) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("set_thread_safe")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node) notify_thread_safe(what i32) {
    classname := StringName.new("Node")
    defer { classname.deinit() }
    fnname := StringName.new("notify_thread_safe")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

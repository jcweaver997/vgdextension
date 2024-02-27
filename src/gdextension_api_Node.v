module vgdextension

pub enum NodeProcessMode as i64 {
    process_mode_inherit = 0
    process_mode_pausable = 1
    process_mode_when_paused = 2
    process_mode_always = 3
    process_mode_disabled = 4
}

pub enum NodeProcessThreadGroup as i64 {
    process_thread_group_inherit = 0
    process_thread_group_main_thread = 1
    process_thread_group_sub_thread = 2
}

pub enum NodeProcessThreadMessages as i64 {
    flag_process_thread_messages = 1
    flag_process_thread_messages_physics = 2
    flag_process_thread_messages_all = 3
}

pub enum NodeDuplicateFlags as i64 {
    duplicate_signals = 1
    duplicate_groups = 2
    duplicate_scripts = 4
    duplicate_use_instantiation = 8
}

pub enum NodeInternalMode as i64 {
    internal_mode_disabled = 0
    internal_mode_front = 1
    internal_mode_back = 2
}

@[noinit]
pub struct Node {
    Object
}

pub interface INodeProcess {
    mut:
    virt_process(delta f64)
}

pub fn (mut r Node) uprocess(delta f64) {
    classname := StringName.new("Node")
    fnname := StringName.new("_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodePhysicsProcess {
    mut:
    virt_physics_process(delta f64)
}

pub fn (mut r Node) uphysics_process(delta f64) {
    classname := StringName.new("Node")
    fnname := StringName.new("_physics_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeEnterTree {
    mut:
    virt_enter_tree()
}

pub fn (mut r Node) uenter_tree() {
    classname := StringName.new("Node")
    fnname := StringName.new("_enter_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeExitTree {
    mut:
    virt_exit_tree()
}

pub fn (mut r Node) uexit_tree() {
    classname := StringName.new("Node")
    fnname := StringName.new("_exit_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeReady {
    mut:
    virt_ready()
}

pub fn (mut r Node) uready() {
    classname := StringName.new("Node")
    fnname := StringName.new("_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeGetConfigurationWarnings {
    mut:
    virt_get_configuration_warnings() PackedStringArray
}

pub fn (r &Node) uget_configuration_warnings() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Node")
    fnname := StringName.new("_get_configuration_warnings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface INodeInput {
    mut:
    virt_input(event InputEvent)
}

pub fn (mut r Node) uinput(event InputEvent) {
    classname := StringName.new("Node")
    fnname := StringName.new("_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeShortcutInput {
    mut:
    virt_shortcut_input(event InputEvent)
}

pub fn (mut r Node) ushortcut_input(event InputEvent) {
    classname := StringName.new("Node")
    fnname := StringName.new("_shortcut_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeUnhandledInput {
    mut:
    virt_unhandled_input(event InputEvent)
}

pub fn (mut r Node) uunhandled_input(event InputEvent) {
    classname := StringName.new("Node")
    fnname := StringName.new("_unhandled_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface INodeUnhandledKeyInput {
    mut:
    virt_unhandled_key_input(event InputEvent)
}

pub fn (mut r Node) uunhandled_key_input(event InputEvent) {
    classname := StringName.new("Node")
    fnname := StringName.new("_unhandled_key_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn Node.print_orphan_nodes() {
    classname := StringName.new("Node")
    fnname := StringName.new("print_orphan_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) add_sibling(sibling Node, force_readable_name bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("add_sibling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
    mut args := unsafe { [2]voidptr{} }
    args[0] = sibling.ptr
    args[1] = unsafe{voidptr(&force_readable_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_name(name string) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_name() string {
    mut object_out := StringName{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Node) add_child(node Node, force_readable_name bool, internal NodeInternalMode) {
    classname := StringName.new("Node")
    fnname := StringName.new("add_child")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3863233950)
    mut args := unsafe { [3]voidptr{} }
    args[0] = node.ptr
    args[1] = unsafe{voidptr(&force_readable_name)}
    i64_internal := i64(internal)
    args[2] = unsafe{voidptr(&i64_internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) remove_child(node Node) {
    classname := StringName.new("Node")
    fnname := StringName.new("remove_child")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) reparent(new_parent Node, keep_global_transform bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("reparent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3685795103)
    mut args := unsafe { [2]voidptr{} }
    args[0] = new_parent.ptr
    args[1] = unsafe{voidptr(&keep_global_transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_child_count(include_internal bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_child_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_children(include_internal bool) Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_children")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 873284517)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_child(idx i32, include_internal bool) Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_child")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 541253412)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) has_node(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("has_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_node(path NodePath) Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2734337346)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_node_or_null(path NodePath) Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_node_or_null")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2734337346)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_parent() Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) find_child(pattern string, recursive bool, owned bool) Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("find_child")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2008217037)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(pattern)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&recursive)}
    args[2] = unsafe{voidptr(&owned)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) find_children(pattern string, type_name string, recursive bool, owned bool) Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    fnname := StringName.new("find_children")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2560337219)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(pattern)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(type_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&recursive)}
    args[3] = unsafe{voidptr(&owned)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) find_parent(pattern string) Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("find_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1140089439)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(pattern)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) has_node_and_resource(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("has_node_and_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) get_node_and_resource(path NodePath) Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_node_and_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 502563882)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) is_inside_tree() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_inside_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) is_ancestor_of(node Node) bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_ancestor_of")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) is_greater_than(node Node) bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_greater_than")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_path_to(node Node, use_unique_path bool) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_path_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 498846349)
    mut args := unsafe { [2]voidptr{} }
    args[0] = node.ptr
    args[1] = unsafe{voidptr(&use_unique_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) add_to_group(group string, persistent bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("add_to_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3683006648)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&persistent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) remove_from_group(group string) {
    classname := StringName.new("Node")
    fnname := StringName.new("remove_from_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_in_group(group string) bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_in_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(group)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) move_child(child_node Node, to_index i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("move_child")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3315886247)
    mut args := unsafe { [2]voidptr{} }
    args[0] = child_node.ptr
    args[1] = unsafe{voidptr(&to_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_groups() Array {
    mut object_out := Array{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_groups")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_owner(owner Node) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = owner.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_owner() Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_index(include_internal bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) print_tree() {
    classname := StringName.new("Node")
    fnname := StringName.new("print_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) print_tree_pretty() {
    classname := StringName.new("Node")
    fnname := StringName.new("print_tree_pretty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) get_tree_string() string {
    mut object_out := String{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_tree_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Node) get_tree_string_pretty() string {
    mut object_out := String{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_tree_string_pretty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Node) set_scene_file_path(scene_file_path string) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_scene_file_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(scene_file_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_scene_file_path() string {
    mut object_out := String{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_scene_file_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Node) propagate_notification(what i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("propagate_notification")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&what)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) propagate_call(method string, gdargs Array, parent_first bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("propagate_call")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1871007965)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(method)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&gdargs)}
    args[2] = unsafe{voidptr(&parent_first)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_physics_process(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_physics_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_physics_process_delta_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_physics_process_delta_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) is_physics_processing() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_physics_processing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_process_delta_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_process_delta_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_process_priority(priority i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_process_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_process_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_physics_process_priority(priority i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_physics_process_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_physics_process_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_physics_process_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) is_processing() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_processing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_input(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_processing_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_processing_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_shortcut_input(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_shortcut_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_processing_shortcut_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_processing_shortcut_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_unhandled_input(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_unhandled_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_processing_unhandled_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_processing_unhandled_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_unhandled_key_input(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_unhandled_key_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_processing_unhandled_key_input() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_processing_unhandled_key_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_mode(mode NodeProcessMode) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1841290486)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_process_mode() NodeProcessMode {
    mut object_out := i64(NodeProcessMode.process_mode_inherit)
    classname := StringName.new("Node")
    fnname := StringName.new("get_process_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 739966102)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NodeProcessMode(object_out)}
}
pub fn (r &Node) can_process() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("can_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_thread_group(mode NodeProcessThreadGroup) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_thread_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275442745)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_process_thread_group() NodeProcessThreadGroup {
    mut object_out := i64(NodeProcessThreadGroup.process_thread_group_inherit)
    classname := StringName.new("Node")
    fnname := StringName.new("get_process_thread_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1866404740)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NodeProcessThreadGroup(object_out)}
}
pub fn (mut r Node) set_process_thread_messages(flags NodeProcessThreadMessages) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_thread_messages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1357280998)
    mut args := unsafe { [1]voidptr{} }
    i64_flags := i64(flags)
    args[0] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_process_thread_messages() NodeProcessThreadMessages {
    mut object_out := i64(NodeProcessThreadMessages.flag_process_thread_messages)
    classname := StringName.new("Node")
    fnname := StringName.new("get_process_thread_messages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4228993612)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NodeProcessThreadMessages(object_out)}
}
pub fn (mut r Node) set_process_thread_group_order(order i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_thread_group_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_process_thread_group_order() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_process_thread_group_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_display_folded(fold bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_display_folded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_displayed_folded() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_displayed_folded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_process_internal(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_process_internal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_processing_internal() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_processing_internal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_physics_process_internal(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_physics_process_internal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_physics_processing_internal() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_physics_processing_internal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_window() Window {
    mut object_out := Window{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_window")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_last_exclusive_window() Window {
    mut object_out := Window{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_last_exclusive_window")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1757182445)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_tree() SceneTree {
    mut object_out := SceneTree{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2958820483)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) create_tween() Tween {
    mut object_out := Tween{}
    classname := StringName.new("Node")
    fnname := StringName.new("create_tween")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) duplicate(flags i32) Node {
    mut object_out := Node{}
    classname := StringName.new("Node")
    fnname := StringName.new("duplicate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3511555459)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) replace_by(node Node, keep_groups bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("replace_by")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2570952461)
    mut args := unsafe { [2]voidptr{} }
    args[0] = node.ptr
    args[1] = unsafe{voidptr(&keep_groups)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_scene_instance_load_placeholder(load_placeholder bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_scene_instance_load_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&load_placeholder)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_scene_instance_load_placeholder() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("get_scene_instance_load_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_editable_instance(node Node, is_editable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_editable_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2731852923)
    mut args := unsafe { [2]voidptr{} }
    args[0] = node.ptr
    args[1] = unsafe{voidptr(&is_editable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_editable_instance(node Node) bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_editable_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_viewport() Viewport {
    mut object_out := Viewport{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3596683776)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) queue_free() {
    classname := StringName.new("Node")
    fnname := StringName.new("queue_free")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) request_ready() {
    classname := StringName.new("Node")
    fnname := StringName.new("request_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_node_ready() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_node_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) set_multiplayer_authority(id i32, recursive bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_multiplayer_authority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&recursive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_multiplayer_authority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Node")
    fnname := StringName.new("get_multiplayer_authority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) is_multiplayer_authority() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_multiplayer_authority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node) get_multiplayer() MultiplayerAPI {
    mut object_out := MultiplayerAPI{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_multiplayer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 406750475)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) rpc_config(method string, config Variant) {
    classname := StringName.new("Node")
    fnname := StringName.new("rpc_config")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(method)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_editor_description(editor_description string) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_editor_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(editor_description)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) get_editor_description() string {
    mut object_out := String{}
    classname := StringName.new("Node")
    fnname := StringName.new("get_editor_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Node) set_unique_name_in_owner(enable bool) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_unique_name_in_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node) is_unique_name_in_owner() bool {
    mut object_out := false
    classname := StringName.new("Node")
    fnname := StringName.new("is_unique_name_in_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node) update_configuration_warnings() {
    classname := StringName.new("Node")
    fnname := StringName.new("update_configuration_warnings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_deferred_thread_group(property string, value Variant) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_deferred_thread_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) notify_deferred_thread_group(what i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("notify_deferred_thread_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&what)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) set_thread_safe(property string, value Variant) {
    classname := StringName.new("Node")
    fnname := StringName.new("set_thread_safe")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node) notify_thread_safe(what i32) {
    classname := StringName.new("Node")
    fnname := StringName.new("notify_thread_safe")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&what)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

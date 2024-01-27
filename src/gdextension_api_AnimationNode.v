module vgdextension

pub enum AnimationNodeFilterAction {
    filter_ignore = 0
    filter_pass = 1
    filter_stop = 2
    filter_blend = 3
}

pub type AnimationNode = voidptr

pub fn (r &AnimationNode) uget_child_nodes() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_get_child_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uget_parameter_list() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_get_parameter_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uget_child_by_name(name StringName) AnimationNode {
    mut object_out := AnimationNode(unsafe{nil})
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_get_child_by_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uget_parameter_default_value(parameter StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_get_parameter_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uis_parameter_read_only(parameter StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_is_parameter_read_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameter)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uprocess(time f32, seek bool, is_external_seeking bool, test_only bool) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    args[1] = unsafe{voidptr(&seek)}
    args[2] = unsafe{voidptr(&is_external_seeking)}
    args[3] = unsafe{voidptr(&test_only)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uget_caption() String {
    mut object_out := String{}
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_get_caption")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) uhas_filter() bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("_has_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) add_input(name String) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("add_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) remove_input(index i32) {
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("remove_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNode) set_input_name(input i32, name String) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 215573526)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) get_input_name(input i32) String {
    mut object_out := String{}
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) get_input_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationNode) find_input(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("find_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) set_filter_path(path NodePath, enable bool) {
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNode) is_path_filtered(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_path_filtered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) set_filter_enabled(enable bool) {
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNode) is_filter_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_filter_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) blend_animation(animation StringName, time f32, delta f32, seeked bool, is_external_seeking bool, blend f32, looped_flag AnimationLoopedFlag) {
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("blend_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 11797022)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNode) blend_node(name StringName, node AnimationNode, time f32, seek bool, is_external_seeking bool, blend f32, filter AnimationNodeFilterAction, sync bool, test_only bool) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("blend_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 263389446)
    mut args := unsafe { [9]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&node)}
    args[2] = unsafe{voidptr(&time)}
    args[3] = unsafe{voidptr(&seek)}
    args[4] = unsafe{voidptr(&is_external_seeking)}
    args[5] = unsafe{voidptr(&blend)}
    args[6] = unsafe{voidptr(&filter)}
    args[7] = unsafe{voidptr(&sync)}
    args[8] = unsafe{voidptr(&test_only)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) blend_input(input_index i32, time f32, seek bool, is_external_seeking bool, blend f32, filter AnimationNodeFilterAction, sync bool, test_only bool) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("blend_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2709059328)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&input_index)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&seek)}
    args[3] = unsafe{voidptr(&is_external_seeking)}
    args[4] = unsafe{voidptr(&blend)}
    args[5] = unsafe{voidptr(&filter)}
    args[6] = unsafe{voidptr(&sync)}
    args[7] = unsafe{voidptr(&test_only)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNode) set_parameter(name StringName, value Variant) {
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNode) get_parameter(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_parameter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

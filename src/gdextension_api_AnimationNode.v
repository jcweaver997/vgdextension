module vgdextension

pub enum AnimationNodeFilterAction as i64 {
    filter_ignore = 0
    filter_pass = 1
    filter_stop = 2
    filter_blend = 3
}

@[noinit]
pub struct AnimationNode {
    Resource
}

pub interface IAnimationNodeGetChildNodes {
    mut:
    virt_get_child_nodes() Dictionary
}

pub fn (r &AnimationNode) uget_child_nodes() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_get_child_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAnimationNodeGetParameterList {
    mut:
    virt_get_parameter_list() Array
}

pub fn (r &AnimationNode) uget_parameter_list() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_get_parameter_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAnimationNodeGetChildByName {
    mut:
    virt_get_child_by_name(name StringName) AnimationNode
}

pub fn (r &AnimationNode) uget_child_by_name(name string) AnimationNode {
    mut object_out := AnimationNode{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_get_child_by_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAnimationNodeGetParameterDefaultValue {
    mut:
    virt_get_parameter_default_value(parameter StringName) Variant
}

pub fn (r &AnimationNode) uget_parameter_default_value(parameter string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_get_parameter_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(parameter)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAnimationNodeIsParameterReadOnly {
    mut:
    virt_is_parameter_read_only(parameter StringName) bool
}

pub fn (r &AnimationNode) uis_parameter_read_only(parameter string) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_is_parameter_read_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(parameter)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAnimationNodeProcess {
    mut:
    virt_process(time f64, seek bool, is_external_seeking bool, test_only bool) f64
}

pub fn (r &AnimationNode) uprocess(time f64, seek bool, is_external_seeking bool, test_only bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    args[1] = unsafe{voidptr(&seek)}
    args[2] = unsafe{voidptr(&is_external_seeking)}
    args[3] = unsafe{voidptr(&test_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAnimationNodeGetCaption {
    mut:
    virt_get_caption() String
}

pub fn (r &AnimationNode) uget_caption() string {
    mut object_out := String{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_get_caption")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IAnimationNodeHasFilter {
    mut:
    virt_has_filter() bool
}

pub fn (r &AnimationNode) uhas_filter() bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("_has_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) add_input(name string) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("add_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) remove_input(index i32) {
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("remove_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNode) set_input_name(input i32, name string) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("set_input_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 215573526)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) get_input_name(input i32) string {
    mut object_out := String{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("get_input_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&input)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNode) get_input_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("get_input_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) find_input(name string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("find_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) set_filter_path(path NodePath, enable bool) {
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("set_filter_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNode) is_path_filtered(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("is_path_filtered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) set_filter_enabled(enable bool) {
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("set_filter_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNode) is_filter_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("is_filter_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) blend_animation(animation string, time f64, delta f64, seeked bool, is_external_seeking bool, blend f64, looped_flag AnimationLoopedFlag) {
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("blend_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1630801826)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := StringName.new(animation)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&delta)}
    args[3] = unsafe{voidptr(&seeked)}
    args[4] = unsafe{voidptr(&is_external_seeking)}
    args[5] = unsafe{voidptr(&blend)}
    i64_looped_flag := i64(looped_flag)
    args[6] = unsafe{voidptr(&i64_looped_flag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNode) blend_node(name string, node AnimationNode, time f64, seek bool, is_external_seeking bool, blend f64, filter AnimationNodeFilterAction, sync bool, test_only bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("blend_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1746075988)
    mut args := unsafe { [9]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = node.ptr
    args[2] = unsafe{voidptr(&time)}
    args[3] = unsafe{voidptr(&seek)}
    args[4] = unsafe{voidptr(&is_external_seeking)}
    args[5] = unsafe{voidptr(&blend)}
    i64_filter := i64(filter)
    args[6] = unsafe{voidptr(&i64_filter)}
    args[7] = unsafe{voidptr(&sync)}
    args[8] = unsafe{voidptr(&test_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) blend_input(input_index i32, time f64, seek bool, is_external_seeking bool, blend f64, filter AnimationNodeFilterAction, sync bool, test_only bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("blend_input")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1361527350)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&input_index)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&seek)}
    args[3] = unsafe{voidptr(&is_external_seeking)}
    args[4] = unsafe{voidptr(&blend)}
    i64_filter := i64(filter)
    args[5] = unsafe{voidptr(&i64_filter)}
    args[6] = unsafe{voidptr(&sync)}
    args[7] = unsafe{voidptr(&test_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNode) set_parameter(name string, value Variant) {
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("set_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNode) get_parameter(name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationNode")
    fnname := StringName.new("get_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}

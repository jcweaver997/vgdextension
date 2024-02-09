module vgdextension

pub enum AnimationTreeAnimationProcessCallback {
    animation_process_physics = 0
    animation_process_idle = 1
    animation_process_manual = 2
}

pub struct AnimationTree {
    Node
}

pub interface IAnimationTreePostProcessKeyValue {
    mut:
    virt_post_process_key_value(animation Animation, track i32, value Variant, object Object, object_idx i32) Variant
}

pub fn (r &AnimationTree) upost_process_key_value(animation Animation, track i32, value Variant, object Object, object_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("_post_process_key_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = animation.ptr
    args[1] = unsafe{voidptr(&track)}
    args[2] = unsafe{voidptr(&value)}
    args[3] = object.ptr
    args[4] = unsafe{voidptr(&object_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_active(active bool) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) is_active() bool {
    mut object_out := false
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_tree_root(root AnimationNode) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_tree_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 712869711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = root.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) get_tree_root() AnimationNode {
    mut object_out := AnimationNode{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_tree_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1462070895)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_process_callback(mode AnimationTreeAnimationProcessCallback) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1723352826)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) get_process_callback() AnimationTreeAnimationProcessCallback {
    mut object_out := AnimationTreeAnimationProcessCallback.animation_process_physics
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 891317132)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_animation_player(root NodePath) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_animation_player")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&root)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) get_animation_player() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_player")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_advance_expression_base_node(node NodePath) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_advance_expression_base_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) get_advance_expression_base_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_advance_expression_base_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_root_motion_track(path NodePath) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_motion_track")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) get_root_motion_track() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_track")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) set_audio_max_polyphony(max_polyphony i32) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_audio_max_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_polyphony)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationTree) get_audio_max_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_audio_max_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationTree) get_root_motion_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationTree) get_root_motion_rotation() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationTree) get_root_motion_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationTree) get_root_motion_position_accumulator() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_position_accumulator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationTree) get_root_motion_rotation_accumulator() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_rotation_accumulator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationTree) get_root_motion_scale_accumulator() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_motion_scale_accumulator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationTree) advance(delta f64) {
    classname := StringName.new("AnimationTree")
    defer { classname.deinit() }
    fnname := StringName.new("advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}

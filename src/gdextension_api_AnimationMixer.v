module vgdextension

pub enum AnimationMixerAnimationCallbackModeProcess as i64 {
    animation_callback_mode_process_physics = 0
    animation_callback_mode_process_idle = 1
    animation_callback_mode_process_manual = 2
}

pub enum AnimationMixerAnimationCallbackModeMethod as i64 {
    animation_callback_mode_method_deferred = 0
    animation_callback_mode_method_immediate = 1
}

@[noinit]
pub struct AnimationMixer {
    Node
}

pub interface IAnimationMixerPostProcessKeyValue {
    mut:
    virt_post_process_key_value(animation Animation, track i32, value Variant, object Object, object_idx i32) Variant
}

pub fn (r &AnimationMixer) upost_process_key_value(animation Animation, track i32, value Variant, object Object, object_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("_post_process_key_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = voidptr(&animation.ptr)
    args[1] = unsafe{voidptr(&track)}
    args[2] = unsafe{voidptr(&value)}
    args[3] = voidptr(&object.ptr)
    args[4] = unsafe{voidptr(&object_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) add_animation_library(name string, library AnimationLibrary) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("add_animation_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 618909818)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&library.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &AnimationMixer) remove_animation_library(name string) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("remove_animation_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) rename_animation_library(name string, newname string) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("rename_animation_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(newname)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) has_animation_library(name string) bool {
    mut object_out := false
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("has_animation_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_animation_library(name string) AnimationLibrary {
    mut object_out := AnimationLibrary{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_animation_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 147342321)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_animation_library_list() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_animation_library_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) has_animation(name string) bool {
    mut object_out := false
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("has_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_animation(name string) Animation {
    mut object_out := Animation{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2933122410)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_animation_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_animation_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) set_active(active bool) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) is_active() bool {
    mut object_out := false
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) set_deterministic(deterministic bool) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_deterministic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&deterministic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) is_deterministic() bool {
    mut object_out := false
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("is_deterministic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) set_root_node(path NodePath) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_root_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) get_root_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) set_callback_mode_process(mode AnimationMixerAnimationCallbackModeProcess) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_callback_mode_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2153733086)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) get_callback_mode_process() AnimationMixerAnimationCallbackModeProcess {
    mut object_out := i64(AnimationMixerAnimationCallbackModeProcess.animation_callback_mode_process_physics)
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_callback_mode_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1394468472)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationMixerAnimationCallbackModeProcess(object_out)}
}
pub fn (r &AnimationMixer) set_callback_mode_method(mode AnimationMixerAnimationCallbackModeMethod) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_callback_mode_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 742218271)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) get_callback_mode_method() AnimationMixerAnimationCallbackModeMethod {
    mut object_out := i64(AnimationMixerAnimationCallbackModeMethod.animation_callback_mode_method_deferred)
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_callback_mode_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 489449656)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationMixerAnimationCallbackModeMethod(object_out)}
}
pub fn (r &AnimationMixer) set_audio_max_polyphony(max_polyphony i32) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_audio_max_polyphony")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_polyphony)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) get_audio_max_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_audio_max_polyphony")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) set_root_motion_track(path NodePath) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_root_motion_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) get_root_motion_track() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_root_motion_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_root_motion_rotation() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_root_motion_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_root_motion_position_accumulator() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_position_accumulator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_root_motion_rotation_accumulator() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_rotation_accumulator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) get_root_motion_scale_accumulator() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("get_root_motion_scale_accumulator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) clear_caches() {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("clear_caches")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) advance(delta f64) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("advance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) set_reset_on_save_enabled(enabled bool) {
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("set_reset_on_save_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationMixer) is_reset_on_save_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("is_reset_on_save_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationMixer) find_animation(animation Animation) string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("find_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559484580)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&animation.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationMixer) find_animation_library(animation Animation) string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationMixer")
    fnname := StringName.new("find_animation_library")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559484580)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&animation.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}

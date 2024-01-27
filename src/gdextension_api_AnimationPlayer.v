module vgdextension

pub enum AnimationPlayerAnimationProcessCallback {
    animation_process_physics = 0
    animation_process_idle = 1
    animation_process_manual = 2
}

pub enum AnimationPlayerAnimationMethodCallMode {
    animation_method_call_deferred = 0
    animation_method_call_immediate = 1
}

pub type AnimationPlayer = voidptr

pub fn (r &AnimationPlayer) upost_process_key_value(animation Animation, track i32, value Variant, object Object, object_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("_post_process_key_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&animation)}
    args[1] = unsafe{voidptr(&track)}
    args[2] = unsafe{voidptr(&value)}
    args[3] = unsafe{voidptr(&object)}
    args[4] = unsafe{voidptr(&object_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) add_animation_library(name StringName, library AnimationLibrary) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("add_animation_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 618909818)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&library)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) remove_animation_library(name StringName) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_animation_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) rename_animation_library(name StringName, newname StringName) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("rename_animation_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) has_animation_library(name StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("has_animation_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_animation_library(name StringName) AnimationLibrary {
    mut object_out := AnimationLibrary(unsafe{nil})
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 147342321)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_animation_library_list() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_library_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) has_animation(name StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("has_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_animation(name StringName) Animation {
    mut object_out := Animation(unsafe{nil})
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2933122410)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_animation_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) animation_set_next(anim_from StringName, anim_to StringName) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("animation_set_next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) animation_get_next(anim_from StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("animation_get_next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anim_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_blend_time(anim_from StringName, anim_to StringName, sec f32) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3231131886)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_blend_time(anim_from StringName, anim_to StringName) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958752504)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&anim_from)}
    args[1] = unsafe{voidptr(&anim_to)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_default_blend_time(sec f32) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_blend_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_default_blend_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_blend_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) play(name StringName, custom_blend f32, custom_speed f32, from_end bool) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("play")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3118260607)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) play_backwards(name StringName, custom_blend f32) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("play_backwards")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787282401)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) pause() {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) stop(keep_state bool) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_current_animation(anim String) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_current_animation() String {
    mut object_out := String{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_assigned_animation(anim String) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_assigned_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_assigned_animation() String {
    mut object_out := String{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_assigned_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) queue(name StringName) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("queue")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) get_queue() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_queue")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) clear_queue() {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("clear_queue")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) set_active(active bool) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) is_active() bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_speed_scale(speed f32) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_speed_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_playing_speed() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_playing_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_autoplay(name String) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_autoplay() String {
    mut object_out := String{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_reset_on_save_enabled(enabled bool) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_reset_on_save_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) is_reset_on_save_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_reset_on_save_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_root(path NodePath) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_root() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_root")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) find_animation(animation Animation) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("find_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559484580)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&animation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) find_animation_library(animation Animation) StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("find_animation_library")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1559484580)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&animation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) clear_caches() {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("clear_caches")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) set_process_callback(mode AnimationPlayerAnimationProcessCallback) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1663839457)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_process_callback() AnimationPlayerAnimationProcessCallback {
    mut object_out := AnimationPlayerAnimationProcessCallback.animation_process_physics
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4207496604)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_method_call_mode(mode AnimationPlayerAnimationMethodCallMode) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_method_call_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3413514846)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_method_call_mode() AnimationPlayerAnimationMethodCallMode {
    mut object_out := AnimationPlayerAnimationMethodCallMode.animation_method_call_deferred
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_method_call_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3583380054)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_audio_max_polyphony(max_polyphony i32) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_audio_max_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) get_audio_max_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_audio_max_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) set_movie_quit_on_finish_enabled(enabled bool) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_movie_quit_on_finish_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationPlayer) is_movie_quit_on_finish_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_movie_quit_on_finish_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_current_animation_position() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_animation_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationPlayer) get_current_animation_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_animation_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationPlayer) seek(seconds f32, update bool) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2087892650)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationPlayer) advance(delta f32) {
    classname := StringName.new("AnimationPlayer")
    defer { classname.deinit() }
    fnname := StringName.new("advance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

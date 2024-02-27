module vgdextension

pub enum AnimationPlayerAnimationProcessCallback as i64 {
    animation_process_physics = 0
    animation_process_idle = 1
    animation_process_manual = 2
}

pub enum AnimationPlayerAnimationMethodCallMode as i64 {
    animation_method_call_deferred = 0
    animation_method_call_immediate = 1
}

@[noinit]
pub struct AnimationPlayer {
    AnimationMixer
}

pub fn (mut r AnimationPlayer) animation_set_next(animation_from string, animation_to string) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("animation_set_next")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(animation_from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(animation_to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) animation_get_next(animation_from string) string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("animation_get_next")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(animation_from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r AnimationPlayer) set_blend_time(animation_from string, animation_to string, sec f64) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_blend_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3231131886)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(animation_from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(animation_to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_blend_time(animation_from string, animation_to string) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_blend_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1958752504)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(animation_from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(animation_to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationPlayer) set_default_blend_time(sec f64) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_default_blend_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_default_blend_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_default_blend_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationPlayer) play(name string, custom_blend f64, custom_speed f64, from_end bool) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("play")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3118260607)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&custom_blend)}
    args[2] = unsafe{voidptr(&custom_speed)}
    args[3] = unsafe{voidptr(&from_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationPlayer) play_backwards(name string, custom_blend f64) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("play_backwards")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787282401)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&custom_blend)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationPlayer) pause() {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("pause")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationPlayer) stop(keep_state bool) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationPlayer) set_current_animation(animation string) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_current_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(animation)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_current_animation() string {
    mut object_out := String{}
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_current_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r AnimationPlayer) set_assigned_animation(animation string) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_assigned_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(animation)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_assigned_animation() string {
    mut object_out := String{}
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_assigned_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r AnimationPlayer) queue(name string) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("queue")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationPlayer) get_queue() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_queue")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationPlayer) clear_queue() {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("clear_queue")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationPlayer) set_speed_scale(speed f64) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_speed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationPlayer) get_playing_speed() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_playing_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationPlayer) set_autoplay(name string) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_autoplay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_autoplay() string {
    mut object_out := String{}
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_autoplay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r AnimationPlayer) set_movie_quit_on_finish_enabled(enabled bool) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_movie_quit_on_finish_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) is_movie_quit_on_finish_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("is_movie_quit_on_finish_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationPlayer) get_current_animation_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_current_animation_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationPlayer) get_current_animation_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_current_animation_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationPlayer) seek(seconds f64, update bool, update_only bool) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1807872683)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    args[1] = unsafe{voidptr(&update)}
    args[2] = unsafe{voidptr(&update_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationPlayer) set_process_callback(mode AnimationPlayerAnimationProcessCallback) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_process_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1663839457)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_process_callback() AnimationPlayerAnimationProcessCallback {
    mut object_out := i64(AnimationPlayerAnimationProcessCallback.animation_process_physics)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_process_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4207496604)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationPlayerAnimationProcessCallback(object_out)}
}
pub fn (mut r AnimationPlayer) set_method_call_mode(mode AnimationPlayerAnimationMethodCallMode) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_method_call_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3413514846)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_method_call_mode() AnimationPlayerAnimationMethodCallMode {
    mut object_out := i64(AnimationPlayerAnimationMethodCallMode.animation_method_call_deferred)
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_method_call_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3583380054)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationPlayerAnimationMethodCallMode(object_out)}
}
pub fn (mut r AnimationPlayer) set_root(path NodePath) {
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("set_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationPlayer) get_root() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationPlayer")
    fnname := StringName.new("get_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

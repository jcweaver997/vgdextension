module vgdextension

@[noinit]
pub struct AnimatedSprite2D {
    Node2D
}

pub fn (r &AnimatedSprite2D) set_sprite_frames(sprite_frames SpriteFrames) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_sprite_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 905781144)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&sprite_frames.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) get_sprite_frames() SpriteFrames {
    mut object_out := SpriteFrames{}
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_sprite_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3804851214)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_animation(name string) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) get_animation() string {
    mut object_out := StringName{}
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimatedSprite2D) set_autoplay(name string) {
    classname := StringName.new("AnimatedSprite2D")
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
pub fn (r &AnimatedSprite2D) get_autoplay() string {
    mut object_out := String{}
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_autoplay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimatedSprite2D) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("is_playing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) play(name string, custom_speed f64, from_end bool) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("play")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2372066587)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&custom_speed)}
    args[2] = unsafe{voidptr(&from_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) play_backwards(name string) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("play_backwards")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1421762485)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) pause() {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("pause")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) stop() {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) set_centered(centered bool) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_centered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&centered)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) is_centered() bool {
    mut object_out := false
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("is_centered")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_offset(offset Vector2) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_flip_h(flip_h bool) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_flip_h")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_h)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) is_flipped_h() bool {
    mut object_out := false
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("is_flipped_h")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_flip_v(flip_v bool) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_flip_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_v)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) is_flipped_v() bool {
    mut object_out := false
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("is_flipped_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_frame(frame i32) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) get_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_frame_progress(progress f64) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_frame_progress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&progress)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) get_frame_progress() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_frame_progress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) set_frame_and_progress(frame i32, progress f64) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_frame_and_progress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    args[1] = unsafe{voidptr(&progress)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) set_speed_scale(speed_scale f64) {
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("set_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&speed_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedSprite2D) get_speed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedSprite2D) get_playing_speed() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimatedSprite2D")
    fnname := StringName.new("get_playing_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

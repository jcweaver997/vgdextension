pub type AnimatedSprite3D = voidptr

pub fn (mut r AnimatedSprite3D) set_sprite_frames(sprite_frames SpriteFrames) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sprite_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 905781144)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedSprite3D) get_sprite_frames() SpriteFrames {
    mut object_out := SpriteFrames(unsafe{nil})
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sprite_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3804851214)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedSprite3D) set_animation(name StringName) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedSprite3D) get_animation() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedSprite3D) set_autoplay(name String) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedSprite3D) get_autoplay() String {
    mut object_out := String{}
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_autoplay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimatedSprite3D) is_playing() bool {
    mut object_out := false
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_playing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedSprite3D) play(name StringName, custom_speed f32, from_end bool) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("play")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2372066587)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimatedSprite3D) play_backwards(name StringName) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("play_backwards")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1421762485)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimatedSprite3D) pause() {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimatedSprite3D) stop() {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimatedSprite3D) set_frame(frame i32) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedSprite3D) get_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedSprite3D) set_frame_progress(progress f32) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedSprite3D) get_frame_progress() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedSprite3D) set_frame_and_progress(frame i32, progress f32) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame_and_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimatedSprite3D) set_speed_scale(speed_scale f32) {
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedSprite3D) get_speed_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AnimatedSprite3D) get_playing_speed() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimatedSprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_playing_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}

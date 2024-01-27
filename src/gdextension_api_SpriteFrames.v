module vgdextension

pub type SpriteFrames = voidptr

pub fn (mut r SpriteFrames) add_animation(anim StringName) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("add_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpriteFrames) has_animation(anim StringName) bool {
    mut object_out := false
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("has_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anim)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SpriteFrames) remove_animation(anim StringName) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("remove_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SpriteFrames) rename_animation(anim StringName, newname StringName) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("rename_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpriteFrames) get_animation_names() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpriteFrames) set_animation_speed(anim StringName, fps f32) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("set_animation_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135858297)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpriteFrames) get_animation_speed(anim StringName) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2349060816)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anim)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SpriteFrames) set_animation_loop(anim StringName, loop bool) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("set_animation_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2524380260)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpriteFrames) get_animation_loop(anim StringName) bool {
    mut object_out := false
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anim)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SpriteFrames) add_frame(anim StringName, texture Texture2D, duration f32, at_position i32) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("add_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 407562921)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SpriteFrames) set_frame(anim StringName, idx i32, texture Texture2D, duration f32) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3155743884)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SpriteFrames) remove_frame(anim StringName, idx i32) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("remove_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpriteFrames) get_frame_count(anim StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anim)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &SpriteFrames) get_frame_texture(anim StringName, idx i32) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900517879)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&anim)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &SpriteFrames) get_frame_duration(anim StringName, idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_duration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1129309260)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&anim)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SpriteFrames) clear(anim StringName) {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SpriteFrames) clear_all() {
    classname := StringName.new("SpriteFrames")
    defer { classname.deinit() }
    fnname := StringName.new("clear_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

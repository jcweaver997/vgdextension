module vgdextension

@[noinit]
pub struct SpriteFrames {
    Resource
}

pub fn (mut r SpriteFrames) add_animation(anim string) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("add_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpriteFrames) has_animation(anim string) bool {
    mut object_out := false
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("has_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SpriteFrames) remove_animation(anim string) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("remove_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SpriteFrames) rename_animation(anim string, newname string) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("rename_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(newname)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpriteFrames) get_animation_names() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("get_animation_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SpriteFrames) set_animation_speed(anim string, fps f64) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("set_animation_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135858297)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpriteFrames) get_animation_speed(anim string) f64 {
    mut object_out := f64(0)
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("get_animation_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2349060816)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SpriteFrames) set_animation_loop(anim string, loop bool) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("set_animation_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2524380260)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&loop)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpriteFrames) get_animation_loop(anim string) bool {
    mut object_out := false
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("get_animation_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SpriteFrames) add_frame(anim string, texture Texture2D, duration f64, at_position i32) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("add_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1351332740)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = texture.ptr
    args[2] = unsafe{voidptr(&duration)}
    args[3] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SpriteFrames) set_frame(anim string, idx i32, texture Texture2D, duration f64) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("set_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 56804795)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    args[2] = texture.ptr
    args[3] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SpriteFrames) remove_frame(anim string, idx i32) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("remove_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpriteFrames) get_frame_count(anim string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("get_frame_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpriteFrames) get_frame_texture(anim string, idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("get_frame_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2900517879)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpriteFrames) get_frame_duration(anim string, idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("get_frame_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1129309260)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SpriteFrames) clear(anim string) {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(anim)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SpriteFrames) clear_all() {
    classname := StringName.new("SpriteFrames")
    fnname := StringName.new("clear_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}

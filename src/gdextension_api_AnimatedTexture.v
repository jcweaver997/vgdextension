module vgdextension

@[noinit]
pub struct AnimatedTexture {
    Texture2D
}

pub fn (r &AnimatedTexture) set_frames(frames i32) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedTexture) set_current_frame(frame i32) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_current_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_current_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_current_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedTexture) set_pause(pause bool) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_pause")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pause)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_pause() bool {
    mut object_out := false
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_pause")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedTexture) set_one_shot(one_shot bool) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&one_shot)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_one_shot() bool {
    mut object_out := false
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedTexture) set_speed_scale(scale f64) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_speed_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_speed_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedTexture) set_frame_texture(frame i32, texture Texture2D) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_frame_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_frame_texture(frame i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_frame_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimatedTexture) set_frame_duration(frame i32, duration f64) {
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("set_frame_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    args[1] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatedTexture) get_frame_duration(frame i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimatedTexture")
    fnname := StringName.new("get_frame_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

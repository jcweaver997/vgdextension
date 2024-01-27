pub type AnimatedTexture = voidptr

pub fn (mut r AnimatedTexture) set_frames(frames i32) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedTexture) set_current_frame(frame i32) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_current_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedTexture) set_pause(pause bool) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_pause() bool {
    mut object_out := false
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedTexture) set_one_shot(one_shot bool) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_one_shot() bool {
    mut object_out := false
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedTexture) set_speed_scale(scale f32) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_speed_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedTexture) set_frame_texture(frame i32, texture Texture2D) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_frame_texture(frame i32) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimatedTexture) set_frame_duration(frame i32, duration f32) {
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame_duration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatedTexture) get_frame_duration(frame i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AnimatedTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_duration")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}

pub type AudioStreamGeneratorPlayback = voidptr

pub fn (mut r AudioStreamGeneratorPlayback) push_frame(frame Vector2) bool {
    mut object_out := false
    classname := StringName.new("AudioStreamGeneratorPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("push_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975407249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStreamGeneratorPlayback) can_push_buffer(amount i32) bool {
    mut object_out := false
    classname := StringName.new("AudioStreamGeneratorPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("can_push_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamGeneratorPlayback) push_buffer(frames PackedVector2Array) bool {
    mut object_out := false
    classname := StringName.new("AudioStreamGeneratorPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("push_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1361156557)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStreamGeneratorPlayback) get_frames_available() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamGeneratorPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_frames_available")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStreamGeneratorPlayback) get_skips() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamGeneratorPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("get_skips")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamGeneratorPlayback) clear_buffer() {
    classname := StringName.new("AudioStreamGeneratorPlayback")
    defer { classname.deinit() }
    fnname := StringName.new("clear_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}

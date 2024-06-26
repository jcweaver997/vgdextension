module vgdextension

@[noinit]
pub struct AudioEffectCapture {
    AudioEffect
}

pub fn (r &AudioEffectCapture) can_get_buffer(frames i32) bool {
    mut object_out := false
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("can_get_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectCapture) get_buffer(frames i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("get_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2649534757)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectCapture) clear_buffer() {
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("clear_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCapture) set_buffer_length(buffer_length_seconds f64) {
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("set_buffer_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_length_seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectCapture) get_buffer_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("get_buffer_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectCapture) get_frames_available() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("get_frames_available")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectCapture) get_discarded_frames() i64 {
    mut object_out := i64(0)
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("get_discarded_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectCapture) get_buffer_length_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("get_buffer_length_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioEffectCapture) get_pushed_frames() i64 {
    mut object_out := i64(0)
    classname := StringName.new("AudioEffectCapture")
    fnname := StringName.new("get_pushed_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}

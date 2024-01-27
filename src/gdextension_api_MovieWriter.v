module vgdextension

pub type MovieWriter = voidptr

pub fn (r &MovieWriter) uget_audio_mix_rate() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_audio_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MovieWriter) uget_audio_speaker_mode() AudioServerSpeakerMode {
    mut object_out := AudioServerSpeakerMode.speaker_mode_stereo
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_audio_speaker_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MovieWriter) uhandles_file(path String) bool {
    mut object_out := false
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_handles_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MovieWriter) uwrite_begin(movie_size Vector2i, fps i32, base_path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_write_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&movie_size)}
    args[1] = unsafe{voidptr(&fps)}
    args[2] = unsafe{voidptr(&base_path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MovieWriter) uwrite_frame(frame_image Image, audio_frame_block voidptr) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_write_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&frame_image)}
    args[1] = unsafe{voidptr(&audio_frame_block)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MovieWriter) uwrite_end() {
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_write_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn MovieWriter.add_writer(writer MovieWriter) {
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("add_writer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023702871)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, unsafe{nil})
}

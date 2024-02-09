module vgdextension

pub struct MovieWriter {
    Object
}

pub interface IMovieWriterGetAudioMixRate {
    mut:
    virt_get_audio_mix_rate() u32
}

pub fn (r &MovieWriter) uget_audio_mix_rate() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_audio_mix_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IMovieWriterGetAudioSpeakerMode {
    mut:
    virt_get_audio_speaker_mode() AudioServerSpeakerMode
}

pub fn (r &MovieWriter) uget_audio_speaker_mode() AudioServerSpeakerMode {
    mut object_out := AudioServerSpeakerMode.speaker_mode_stereo
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_audio_speaker_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IMovieWriterHandlesFile {
    mut:
    virt_handles_file(path String) bool
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMovieWriterWriteBegin {
    mut:
    virt_write_begin(movie_size Vector2i, fps u32, base_path String) GDError
}

pub fn (mut r MovieWriter) uwrite_begin(movie_size Vector2i, fps u32, base_path String) GDError {
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMovieWriterWriteFrame {
    mut:
    virt_write_frame(frame_image Image, audio_frame_block voidptr) GDError
}

pub fn (mut r MovieWriter) uwrite_frame(frame_image Image, audio_frame_block voidptr) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_write_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = frame_image.ptr
    args[1] = unsafe{voidptr(&audio_frame_block)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMovieWriterWriteEnd {
    mut:
    virt_write_end()
}

pub fn (mut r MovieWriter) uwrite_end() {
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("_write_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn MovieWriter.add_writer(writer MovieWriter) {
    classname := StringName.new("MovieWriter")
    defer { classname.deinit() }
    fnname := StringName.new("add_writer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023702871)
    mut args := unsafe { [1]voidptr{} }
    args[0] = writer.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
}

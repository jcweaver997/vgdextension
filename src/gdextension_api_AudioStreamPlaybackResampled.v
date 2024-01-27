pub type AudioStreamPlaybackResampled = voidptr

pub fn (mut r AudioStreamPlaybackResampled) umix_resampled(dst_buffer &AudioFrame, frame_count i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlaybackResampled")
    defer { classname.deinit() }
    fnname := StringName.new("_mix_resampled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&dst_buffer)}
    args[1] = unsafe{voidptr(&frame_count)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStreamPlaybackResampled) uget_stream_sampling_rate() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioStreamPlaybackResampled")
    defer { classname.deinit() }
    fnname := StringName.new("_get_stream_sampling_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlaybackResampled) begin_resample() {
    classname := StringName.new("AudioStreamPlaybackResampled")
    defer { classname.deinit() }
    fnname := StringName.new("begin_resample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
